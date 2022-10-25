import themidibus.*; //Import the library
MidiBus myBus; // The MidiBus 
 

void setupmidi(){
  myBus = new MidiBus(this, 1, 0);
  MidiBus.list(); // List all devices
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  
  if(number==58 && value==127)mode--;
  if(number==59 && value==127)mode++;
  
  
  if(number==64)mode=1;
  
  if(number==16){
    backMode1=map(value,0,128,0,255);
  }
}
