void visu10() {
  fill(255);
  stroke(255, s2.getChannel(4)/2);

  float amount=10;
  float w= height/amount;
  background(s2.getChannel(4)/4, 255);
  for (int i=1; i<amount; i++) {
    float wave=tan(radians(frameCount*i))*width;
    push();
    translate(i*w-wave*0.05,height/4 );
    rect(i, 0,s2.getChannel(15),height/2 );
    pop();
    
    push();
    translate(i*8*(w-wave/10), height/2);
    rect(i, height/2,s2.getChannel(25)*2,height );
    pop();
  }
}
