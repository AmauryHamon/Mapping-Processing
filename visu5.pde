void visu5() {
  background(s2.getChannel(4)/4, 255);
  fill(255);
  stroke(255, s2.getChannel(4)/2);

  float amount=10;
  float w= width/amount;
  for (int i=1; i<amount; i++) {
    float wave=tan(radians(frameCount/i))*height/4;
    push();
    translate(i*w-wave, height/2);
    rect(width/2, 0,s2.getChannel(15), height);
    pop();
  }
}
