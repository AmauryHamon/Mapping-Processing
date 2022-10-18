void visu02() {
  fill(255);
  stroke(255, s2.getChannel(4));

  float amount=3;
  float w= width/amount;
  background(s2.getChannel(4)/4, 255);
  for (int i=1; i<amount; i++) {
//  float wave=tan(radians(frameCount*i))*height/20;
    float wave=tan(radians(frameCount*i))*height/10;

    push();
    translate(i-wave, height/2);
    rect(width/2, 0,s2.getChannel(15), height);
    pop();
  }
}
