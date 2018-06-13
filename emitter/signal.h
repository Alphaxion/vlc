/** @file signal.h
*/

#ifndef SIGNAL_H
#define SIGNAL_H

#include <Arduino.h>

/// write frame (list of symbols) containing msg
void write_frame(int* frame, char* msg);

/// send frame containing message through SEND_PIN
void send_message(char* msg);

/// send symbol through SEND_PIN
void send_symbol(int symbol);

/// turns byte into symbols list
void byte_to_syms(int* syms, char b);
/// returns 0 if even number of 1
int byte_parity(char b);

#endif

