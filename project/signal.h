/** @file signal.h
*/

#ifndef SIGNAL_H
#define SIGNAL_H

#include <Arduino.h>

/// Stage of signal reception
typedef enum State {
  S_STOP,
  S_DETECT_PHASE,
  S_DETECT_SOF,// start of frame
  S_RECEIVE_MSG
} State;

/// Contains all vars to be reset for new packet
typedef struct SignalProcessing {
  /// last time a symbol was received
  unsigned long last_time;
  /// last symbol received
  int last_symbol;
  /// last time we started looking for a frame
  unsigned long last_start;
  /// data received
  char data[MAX_DATA_SIZE];
  /// symbols in a message line
  int symbols[LINE_LENGTH];
  /// position in byte
  int sym_pos;
  /// position in message
  int byte_pos;
  /// 1 if corrupted
  int corrupted;
  /// stage of signal reception
  int state;
  /// initialization
  SignalProcessing();
} SignalProcessing;

extern SignalProcessing sp;

/// detect value and translate it into a symbol
int detect_symbol();
/// wait for next symbol time then detect it
int detect_next_symbol();
/// detect time of value change + period/2
void detect_phase();
/// detect start of frame
void detect_sof();
/// receive message
void receive_msg();

/// turns symbols list into byte
char syms_to_byte(int* sym);
/// returns 0 if even number of 1
int byte_parity(char b);
#endif

