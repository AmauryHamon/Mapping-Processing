void visu03(float bg) {
  background(bg);
  fill(255);
  stroke(255);

  float w= width/amount;
  float wave=tan(radians(frameCount))*10;
  float wave2=sin(radians(frameCount))*800;

  for (int i=1; i<amount; i++) {
    push();
    translate(width/2, height/2);
    rectMode(CENTER);
    rect(wave2-wave, 0, s2.getPower(), height);
    rect(wave2+wave*i*1.15, 0, i*wave2/1000, height);
    rect(-wave2-wave*-i*1.25, 0, i*wave2/1000, height);

    pop();
  }
}
