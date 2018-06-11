/** @file signal.cpp
*/

#include "define.h"
#include "signal.h"

SignalProcessing::SignalProcessing() {
  for(int i=0; i<MAX_DATA_SIZE; i++) data[i] = 0;
  for(int i=0; i<LINE_LENGTH; i++) symbols[i] = 0;
  last_time = 0;
  last_symbol = -1;
  last_start = 0;
  byte_pos = 0;
  sym_pos = 0;
  corrupted = 0;
  state = S_STOP;
}

SignalProcessing sp = SignalProcessing();
/*
int detect_symbol() {
  int val = analogRead(DETECT_APIN);
  int sym;
  if (val<TH1) {
    sym = S0;
  }
  else if(val<TH2) {
    sym = S1;
  }
  else if(val<TH3) {
    sym = S3;
  }
  else {
    sym = S2;
  }
  return sym;
}
*/
int detect_symbol() {
  static const int s[] = {
  0,0,0,0,0,
  0,1,2,3,2,//Preamble
  3,3,3,3,3,//SOF
  1,0,2,0,0,//H
  1,2,1,1,0,//e
  1,2,3,0,0,//l
  1,2,3,0,0,//l
  1,2,3,3,0,//o
  0,0,0,0,2,//EOF
  0,0,0,0,0
  };
  static const int len = sizeof(s)/sizeof(s[0]);
  int i = (micros()/PERIOD)%len;
  return s[i];
}

int detect_next_symbol() {
  while(micros()-sp.last_time<PERIOD);
  sp.last_time += PERIOD;
  int d = detect_symbol();
  //dbg("sr "+String(d));
  return d;
}

void detect_phase() {
  if (sp.last_symbol==-1) {
    sp.last_symbol = detect_symbol();
  }
  else if (sp.last_symbol!=detect_symbol()) {
    sp.last_time = micros()-PERIOD/2;
    sp.state = S_DETECT_SOF;
    dbg("phase detected");
  }
}

void detect_sof() {
  if(detect_next_symbol()==S3) {
    sp.sym_pos++;
  }
  else {
    sp.sym_pos = 0;
  }
  if (sp.sym_pos==5) {
    sp.sym_pos = 0;
    sp.state = S_RECEIVE_MSG;
    dbg("sof detected");
  }
}

void receive_msg() {
  sp.symbols[sp.sym_pos] = detect_next_symbol();
  sp.sym_pos++;
  // byte reception complete
  if (sp.sym_pos==LINE_LENGTH) {
    sp.sym_pos = 0;
    // message reception complete
    if (sp.symbols[LINE_LENGTH-1]==S2){
      dbg("end of message");
      sp.state = S_STOP;
    }
    else {
      char b = syms_to_byte(sp.symbols);
      dbg(b);
      if(byte_parity(b)!=sp.symbols[LINE_LENGTH-1]) {
        sp.corrupted = 1;
      }
      sp.data[sp.byte_pos] = b;
      sp.byte_pos++;
      if(sp.byte_pos>=MAX_DATA_SIZE) {
        sp.corrupted = 1;
      }
    }
  }
}

char syms_to_byte(int* sym) {
  static const int len = LINE_LENGTH-1;
  char b = 0;
  for (int i = 0; i<len; i++) {
    char s = sym[i]<<(2*(len-1-i));
    b += s;
  }
  return b;
}

int byte_parity(char b) {
  int p;
  for (int i = 0; i<8; i++) {
    int bi = (b>>i)&1;
    p += bi;
  }
  return p%2;
}

