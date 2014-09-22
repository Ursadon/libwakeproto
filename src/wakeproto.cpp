/*
 * Copyright (c) 2013, Nikolay Lomakin <lomakin90@yandex.ru>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

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
    rx_temp_packet = 0;
    num_of_bytes = 0;
    byte_stuffing = 0;
    qDebug() << "[libwakeproto][INFO]: Wakeproto module loaded" << endl;
}

Wakeproto::~Wakeproto()
{

}

/**
 * Just test.
 */
void Wakeproto::test() {
    qDebug() << "[libwakeproto][INFO]: Wakeproto test" << endl;
}

/**
 * Create packet, based on input data
 *
 * @param address Destanation device address
 * @param cmd Command number
 * @param data A QByteArray of data to send
 * @return QByteArray with data in wake packet
 */
QByteArray Wakeproto::createpacket(unsigned char address, unsigned char cmd, QByteArray data) {
    QByteArray packet;
    unsigned char tx_crc = 0xFF;
    tx_crc = crc8Table[tx_crc ^ FEND];
    tx_crc = crc8Table[tx_crc ^ address];
    tx_crc = crc8Table[tx_crc ^ cmd];;
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

/**
 * Parse input data into packet
 *
 * @param data QByteArray of data to parse
 * @return No return
 */
int Wakeproto::getpacket(QByteArray data) {
    unsigned char rx_crc_calculated = 0xFF;
    unsigned char rx_crc_actual = 0xFF;

    foreach (unsigned char rx_byte, data) {
        if (rx_byte == FEND && packet_started == 1) {
            qDebug() << "[libwakeproto][ERROR]: received FEND, but previous packet not ended! Clearing buffer.";
            dump_packet(rx_temp_packet);
            data_started = false;
            packet_started = 0;
            num_of_bytes = 0;
            byte_stuffing = 0;
            rx_temp_packet.clear();
            data.clear();
            return 2;
        } else if (packet_started) {
            // Bytes destuffing and accumulating
            if(rx_byte == FESC) {
                byte_stuffing = true;
            }
            if(rx_byte == TFEND && byte_stuffing == true){
                rx_temp_packet.chop(1);
                rx_temp_packet.append(FEND);
                byte_stuffing = false;
            } else if (rx_byte == TFESC && byte_stuffing == true) {
                rx_temp_packet.chop(1);
                rx_temp_packet.append(FESC);
                byte_stuffing = false;
            } else {
                rx_temp_packet.append(rx_byte);
            }

            // We received full header?
            if ((rx_temp_packet.size() == 4)) {
                // TODO: implement ADDR & CMD check
                num_of_bytes = rx_temp_packet.at(Wakeproto::numofbytes);
                data_started = true;
            }

            // Full packet received
            if(data_started && (rx_temp_packet.size() == 1 + 1 + 1 + 1 + num_of_bytes + 1 + byte_stuffing)) { // FEND + ADDR + CMD + N + DATA + CRC + if CRC is stuffed, then lenght incemented by 1
                // Check CRC
                foreach (unsigned char k, rx_temp_packet.left(rx_temp_packet.size()-1)) {
                    rx_crc_calculated = crc8Table[rx_crc_calculated ^ k];
                }
                rx_crc_actual = rx_temp_packet.right(1).at(0);

                if (rx_crc_actual != getcrc(rx_temp_packet.left(rx_temp_packet.size()-1))) {
                    qDebug() << "[libwakeproto][ERROR]: CRC error: " << rx_crc_actual << " must be " << rx_crc_calculated;
                    data_started = false;
                    packet_started = 0;
                    num_of_bytes = 0;
                    byte_stuffing = 0;
                    rx_temp_packet.clear();
                    data.clear();
                    return 1;
                } else {
                    // TODO: Handle received packet
                    //dump_packet(rx_temp_packet);
                    emit packetReceived(rx_temp_packet);
                    data_started = false;
                    packet_started = 0;
                    num_of_bytes = 0;
                    byte_stuffing = 0;
                    rx_temp_packet.clear();
                    data.clear();
                    //process_packet(bytes.at(cmd), rx_data);
                }
            }
        } else if (rx_byte == FEND) {
            //qDebug() << "[libwakeproto][INFO]: Received FEND";
            rx_temp_packet.append(rx_byte);
            packet_started = 1;
        }
    }
    return 0;
}

/**
 * Stuff bytes in packet
 *
 * @param data QByteArray wake packet
 * @return QByteArray wake packet (stuffed)
 */
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

/**
 * Calculate CRC8 checksum
 *
 * @param data A QByteArray data
 * @return CRC8 checksum
 */
unsigned int Wakeproto::getcrc(QByteArray data) {
    unsigned char tx_crc = 0xFF;
    foreach (unsigned char k, data) {
        tx_crc = crc8Table[tx_crc ^ k];
    }
    return tx_crc;
}

/**
 * Print packet
 *
 * @param packet QByteArray wake packet
 */
void Wakeproto::dump_packet(QByteArray packet) {
    QString hexdata;
    QByteArray data = packet.mid(Wakeproto::datastream,rx_temp_packet.size()-Wakeproto::crc);
    unsigned int i = 0;
    foreach(unsigned char c, data) {
        hexdata += "0x";
        hexdata += QString::number(c,16).toUpper();
        hexdata += " ";
        if (i == 7) {
            hexdata += "\n";
            i = 0;
        } else {
            i++;
        }
    }
    qDebug()
            << "---------------------------------------" << endl
            << "[libwakeproto][INFO]: Received packet" << endl
            << "ADDR:\t\t" << QString::number(static_cast<unsigned char>(packet.at(Wakeproto::address))) << endl
            << "CMD:\t\t" << QString::number(static_cast<unsigned char>(packet.at(Wakeproto::cmd))) << endl
            << "N:\t\t" << QString::number(static_cast<unsigned char>(packet.at(Wakeproto::numofbytes))) << endl
            << "CRC calculated:\t" << QString::number(static_cast<unsigned char>(packet.at(packet.size() - 1))) <<  endl
            << "DATA (raw):\t\t" << endl
            << qPrintable(QString(data)) << endl
            << "DATA (hex):\t\t" << endl
            << qPrintable(QString(hexdata)) << endl
            << "---------------------------------------" << endl;
}
