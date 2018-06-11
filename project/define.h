/** @file define.h
    @brief Tous les define.
*/

#ifndef DEFINE_H
#define DEFINE_H

/*******
*SERIAL*
*******/
#define SERIAL_BR 9600
#define dbg(x) Serial.println(x)

/**********
*DETECTION*
**********/
#define DETECT_APIN A0

// 10 sec (too much)
#define TIMEOUT 10000000

// in us // 10Hz
#define PERIOD 100000

//Symbols and thresholds
#define S0 0
#define TH1 256
#define S1 1
#define TH2 512
#define S2 2
#define TH3 768
#define S3 3

#define MAX_DATA_SIZE 32// bytes
#define LINE_LENGTH 5//symbols

/****
*LCD*
****/

#endif

