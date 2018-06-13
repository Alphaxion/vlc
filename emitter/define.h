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

/********
*EMITTER*
********/
#define SEND_PIN 3

// in us
#define PERIOD 1000

//Symbols and corresponding values
#define S0 0
#define V0 0
#define S1 1
#define V1 85
#define S2 2
#define V2 255
#define S3 3
#define V3 170

#define MAX_DATA_SIZE 32// bytes
#define LINE_LENGTH 5//symbols

/****
*LCD*
****/

#endif

