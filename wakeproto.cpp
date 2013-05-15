#include <QCoreApplication>
#include <QDebug>
#include "wakeproto.h"

const unsigned char crc8Table[256] = {
	0x00, 0x31, 0x62, 0x53, 0xC4, 0xF5, 0xA6, 0x97,
	0xB9, 0x88, 0xDB, 0xEA, 0x7D, 0x4C, 0x1F, 0x2E,
	0x43, 0x72, 0x21, 0x10, 0x87, 0xB6, 0xE5, 0xD4,
	0xFA, 0xCB, 0x98, 0xA9, 0x3E, 0x0F, 0x5C, 0x6D,
	0x86, 0xB7, 0xE4, 0xD5, 0x42, 0x73, 0x20, 0x11,
	0x3F, 0x0E, 0x5D, 0x6C, 0xFB, 0xCA, 0x99, 0xA8,
	0xC5, 0xF4, 0xA7, 0x96, 0x01, 0x30, 0x63, 0x52,
	0x7C, 0x4D, 0x1E, 0x2F, 0xB8, 0x89, 0xDA, 0xEB,
	0x3D, 0x0C, 0x5F, 0x6E, 0xF9, 0xC8, 0x9B, 0xAA,
	0x84, 0xB5, 0xE6, 0xD7, 0x40, 0x71, 0x22, 0x13,
	0x7E, 0x4F, 0x1C, 0x2D, 0xBA, 0x8B, 0xD8, 0xE9,
	0xC7, 0xF6, 0xA5, 0x94, 0x03, 0x32, 0x61, 0x50,
	0xBB, 0x8A, 0xD9, 0xE8, 0x7F, 0x4E, 0x1D, 0x2C,
	0x02, 0x33, 0x60, 0x51, 0xC6, 0xF7, 0xA4, 0x95,
	0xF8, 0xC9, 0x9A, 0xAB, 0x3C, 0x0D, 0x5E, 0x6F,
	0x41, 0x70, 0x23, 0x12, 0x85, 0xB4, 0xE7, 0xD6,
	0x7A, 0x4B, 0x18, 0x29, 0xBE, 0x8F, 0xDC, 0xED,
	0xC3, 0xF2, 0xA1, 0x90, 0x07, 0x36, 0x65, 0x54,
	0x39, 0x08, 0x5B, 0x6A, 0xFD, 0xCC, 0x9F, 0xAE,
	0x80, 0xB1, 0xE2, 0xD3, 0x44, 0x75, 0x26, 0x17,
	0xFC, 0xCD, 0x9E, 0xAF, 0x38, 0x09, 0x5A, 0x6B,
	0x45, 0x74, 0x27, 0x16, 0x81, 0xB0, 0xE3, 0xD2,
	0xBF, 0x8E, 0xDD, 0xEC, 0x7B, 0x4A, 0x19, 0x28,
	0x06, 0x37, 0x64, 0x55, 0xC2, 0xF3, 0xA0, 0x91,
	0x47, 0x76, 0x25, 0x14, 0x83, 0xB2, 0xE1, 0xD0,
	0xFE, 0xCF, 0x9C, 0xAD, 0x3A, 0x0B, 0x58, 0x69,
	0x04, 0x35, 0x66, 0x57, 0xC0, 0xF1, 0xA2, 0x93,
	0xBD, 0x8C, 0xDF, 0xEE, 0x79, 0x48, 0x1B, 0x2A,
	0xC1, 0xF0, 0xA3, 0x92, 0x05, 0x34, 0x67, 0x56,
	0x78, 0x49, 0x1A, 0x2B, 0xBC, 0x8D, 0xDE, 0xEF,
	0x82, 0xB3, 0xE0, 0xD1, 0x46, 0x77, 0x24, 0x15,
	0x3B, 0x0A, 0x59, 0x68, 0xFF, 0xCE, 0x9D, 0xAC
};
 
Wakeproto::Wakeproto()
{
	packet_started = 0;
	data_started = 0;
	bytes = 0;
	num_of_bytes = 0;
	qDebug() << "Wakeproto module loaded" << endl;
}

Wakeproto::~Wakeproto()
{

}

void Wakeproto::test() {
	qDebug() << "Wakeproto init completed" << endl;
}

QByteArray Wakeproto::createpacket(unsigned char address, unsigned char cmd, QByteArray data) {
	QByteArray packet;
	unsigned char tx_crc = 0xFF;
	tx_crc = crc8Table[tx_crc ^ FEND];
	tx_crc = crc8Table[tx_crc ^ address];
	tx_crc = crc8Table[tx_crc ^ cmd];
	tx_crc = crc8Table[tx_crc ^ data.size()];
	foreach (unsigned char k, data) {
		tx_crc = crc8Table[tx_crc ^ k];
	}

	packet.append(address); // Addr
	packet.append(cmd); // CMD
	packet.append(data.size()); // N
	packet.append(data); // data
	packet.append(tx_crc); // CRC
	packet = stuffing(packet);
	packet.prepend(FEND); // FEND

	return packet;
}

int Wakeproto::getpacket(QByteArray data) {
	QByteArray rx_buffer = data;
	QByteArray rx_data;
	unsigned char rx_crc_calculated = 0xFF;
	unsigned char rx_crc_actual = 0xFF;

	foreach (unsigned char rx_byte, rx_buffer) {
		if (rx_byte == FEND && packet_started == 1) {
			// Получили FEND, но пакет ещё не окончен - сбрасываем данные
			qDebug() << "[Wakeproto][ERROR]: received FEND, but previous packet not ended! Clearing buffer.";
			bytes.clear();
			bytes.append(rx_byte);
			num_of_bytes = 0;
			rx_data.clear();
			rx_buffer.clear();
		} else if (packet_started) {
			// Bytes destuffing and accumulating
			if(rx_byte == TFEND && bytes.endsWith(FESC)){
				bytes.chop(1);
				bytes.append(FEND);
			} else if (rx_byte == TFESC && bytes.endsWith(FESC)) {
				bytes.chop(1);
				bytes.append(FESC);
			} else {
				bytes.append(rx_byte);
			}
			// We received full header?
			if (bytes.size() == 4) {
				// TODO: implement ADDR & CMD check
				num_of_bytes = bytes.at(n);
	                        qDebug() << "[Wakeproto][INFO] Received header:" << endl
					 << "[RX] FEND" << endl
                                         << "[RX] ADDR:\t" << QString::number(static_cast<unsigned char>(bytes.at(addr))) << endl
                                         << "[RX] CMD:\t" << QString::number(static_cast<unsigned char>(bytes.at(cmd))) << endl
                                         << "[RX] N:\t\t" << QString::number(static_cast<unsigned char>(bytes.at(n))) << endl
                                         << "----------------------------" << endl;
				data_started = 1;
			}
			if(data_started && bytes.size() == 1 + 1 + 1 + 1 + num_of_bytes + 1) { // FEND + ADDR + CMD + N + DATA + CRC
				qDebug() << "[Wakeproto][INFO]: Received header. Starting to recieve data - " << num_of_bytes << " bytes";
				rx_data = bytes.mid(datastream,bytes.size()-5);
				foreach (unsigned char k, rx_data) {
					rx_crc_calculated = crc8Table[rx_crc_calculated ^ k];
				}
				rx_crc_actual = bytes.right(1).at(0);
				if (rx_crc_actual != rx_crc_calculated) {
					qDebug() << "[Wakeproto][ERROR]: CRC error";
				} else {
					// TODO: Handle received packet
					                    qDebug() << "[RX] FEND" << endl
					                             << "[RX] ADDR: " << QString::number(static_cast<unsigned char>(bytes.at(addr))) << endl
					                             << "[RX] CMD: " << QString::number(static_cast<unsigned char>(bytes.at(cmd))) << endl
					                             << "[RX] N: " << QString::number(static_cast<unsigned char>(bytes.at(n))) << endl
					                             << "[RX] DATA: " << rx_data.toHex() << endl
					                             << "[RX] CRC: " << QString::number(rx_crc_actual) << " (" << QString::number(rx_crc_calculated) << ")" << endl
					                             << "----------------------------" << endl;
					//process_packet(bytes.at(cmd), rx_data);
				}
				data_started = 0;
				packet_started = 0;
				num_of_bytes = 0;
				bytes.clear();
				rx_data.clear();
				rx_buffer.clear();
			}
		} else if (rx_byte == FEND) {
			qDebug() << "[Wakeproto][INFO]: Received FEND";
			bytes.append(rx_byte);
			packet_started = 1;
		}
	}
	return 0;
}

QByteArray Wakeproto::stuffing(QByteArray packet) {
	QByteArray stuffed_packet;
	foreach (unsigned char byte, packet) {
		switch (byte) {
			case FEND:
				stuffed_packet.append(FESC);
				stuffed_packet.append(TFEND);
				break;
			case FESC:
				stuffed_packet.append(FESC);
				stuffed_packet.append(TFESC);
				break;
			default:
				stuffed_packet.append(byte);
				break;
		}
	}
	return stuffed_packet;
}

unsigned int getcrc(QByteArray data) {
        unsigned char tx_crc = 0xFF;
        foreach (unsigned char k, data) {
                tx_crc = crc8Table[tx_crc ^ k];
        }
	return tx_crc;
}
