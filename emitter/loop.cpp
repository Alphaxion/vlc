/** @file notino.cpp
    @brief remplace le .ino
*/

#include "define.h"
#include "tools.h"
#include "signal.h"

void setup() {
  Serial.begin(SERIAL_BR);
  pinMode(SEND_PIN, OUTPUT);
  dbg("setup done");
}

void loop() {
  char msg[MAX_DATA_SIZE];
  int i = 0;
  dbg("waiting for message");
  while(1) {
    //while(Serial.available()==0);
    char key = keypad.waitForKey();//Serial.read();//
    if(key=='#' || i==MAX_DATA_SIZE) {
      break;
    }
    msg[i] = key;
    dbg(key);
    i++;
  }
  send_message(msg);
  delay(10*PERIOD/1000);
}

