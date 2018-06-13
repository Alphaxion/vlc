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
  send_message("Hello");
  delay(10*PERIOD/1000);
}

