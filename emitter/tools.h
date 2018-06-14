/** @file tools.h
    @brief Fonctions utiles, enum, struct.
*/

#ifndef TOOLS_H
#define TOOLS_H

#include <Arduino.h>
#include <Keypad.h>

#define ROWS 4
#define COLS 4

extern char keys[ROWS][COLS];
extern byte rowPins[ROWS];
extern byte colPins[COLS];
extern Keypad keypad;

#endif

