/** @file loop.cpp
    @brief main file
*/

#include "define.h"
#include "tools.h"
#include "signal.h"

void setup() {
  Serial.begin(SERIAL_BR);
  pinMode(SEND_PIN, OUTPUT);
  //pwm speed ~30kHz
  byte mode = 0b001;
  TCCR1B = TCCR1B & 0b11111000 | mode;
  dbg("setup done");
}

void loop() {
  char msg[MAX_DATA_SIZE];
  int i = 0;
  dbg("waiting for message");
//  while(1) {
//    while(Serial.available()==0);
//    char key = Serial.read();//keypad.waitForKey();
//    if(key=='#' || i==MAX_DATA_SIZE) {
//      break;
//    }
//    msg[i] = key;
//    dbg(key);
//    i++;
//  }
  while(1) {
    send_message("Hello");
    //delay(10*PERIOD/1000);
  }
}

