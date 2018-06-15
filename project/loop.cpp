/** @file loop.cpp
    @brief main file
*/

#include "define.h"
#include "tools.h"
#include "signal.h"

void setup() {
  Serial.begin(SERIAL_BR);
  pinMode(DETECT_APIN, INPUT);
  lcd.begin(16, 2);
  dbg("setup done");
  lcd.clear();
  lcd.print("setup done");
}

void loop() {
  if(sp.corrupted) {
    sp.state = S_STOP;
    dbg("corrupted");
  }
  if (micros()-sp.last_start>TIMEOUT) {
    sp.state = S_STOP;
    dbg("timeout");
  }
  switch(sp.state) {
    case S_STOP:
      //delaymicroseconds doesnt work because expect uint
      delay(PERIOD/1000);//otherwise it starts detecting the end of the previous message
      sp = SignalProcessing();
      sp.last_start = micros();
      sp.state = S_DETECT_PHASE;
      break;
    case S_DETECT_PHASE:
      detect_phase();
      break;
    case S_DETECT_SOF:
      detect_sof();
      break;
    case S_RECEIVE_MSG:
      receive_msg();
      //message received successfully
      if(sp.state==S_STOP) {
        dbg(sp.data);
        lcd.clear();
        lcd.print(sp.data);
      }
      break;
  }
}

