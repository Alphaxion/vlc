/** @file signal.cpp
*/

#include "define.h"
#include "signal.h"

void write_frame(int* frame, char* msg) {
  static const int header[] = {0, 1, 2, 3, 2, 3, 3, 3, 3, 3};
  static const int footer[] = {0, 0, 0, 0, 2};
  int i = 0;
  memcpy(frame, header, sizeof(int)*2*LINE_LENGTH);
  while(1) {
    if(msg[i]==0) {
      break;
    }
    int syms[LINE_LENGTH]; 
    byte_to_syms(syms, msg[i]);
    memcpy(frame+(2+i)*LINE_LENGTH, syms, sizeof(int)*LINE_LENGTH-1);
    frame[(2+i)*LINE_LENGTH+4] = byte_parity(msg[i]);
    i++;
  }
  memcpy(frame+(2+i)*LINE_LENGTH, footer, sizeof(int)*LINE_LENGTH);
  frame[(2+i+1)*LINE_LENGTH] = -1;
}

void send_message(char* msg) {
  static const int len = (MAX_DATA_SIZE+3)*LINE_LENGTH+1;
  int frame[len];
  memset(frame, 0, sizeof(int)*len);
  write_frame(frame, msg);
  int i = 0;
  long last_time = micros();
  while(1) {
    while(micros()-last_time<PERIOD);
    last_time += PERIOD;
    if(frame[i]==-1) {
      send_symbol(S0);
      break;
    }
    send_symbol(frame[i]);
    //dbg(frame[i]);
    i++;
  }
  //dbg("message sent");
}

void send_symbol(int symbol) {
  static const int t[] = {V0, V1, V2, V3};
  //dbg(t[symbol]);
  analogWrite(SEND_PIN, t[symbol]);
  //analogWrite(SEND_PIN, t[1]);
}

void byte_to_syms(int* syms, char b) {
  static const int len = LINE_LENGTH-1;
  for (int i = 0; i<len; i++) {
    int s = (b>>2*(3-i))&3;
    syms[i] = s;
  }
}

int byte_parity(char b) {
  int p;
  for (int i = 0; i<8; i++) {
    int bi = (b>>i)&1;
    p += bi;
  }
  return p%2;
}

