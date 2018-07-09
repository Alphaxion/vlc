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

// in us
#define PERIOD 10000//100Hz

//Symbols and thresholds
#define S0 0
#define TH1 102//256
#define S1 1
#define TH2 307//512
#define S2 2
#define TH3 467//768
#define S3 3

#define MAX_DATA_SIZE 32// bytes
#define LINE_LENGTH 5//symbols

/****
*LCD*
****/

#endif

