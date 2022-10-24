class BoxSound {

  //int amount = 10;
  float wave;
  float [] v = {1, 2, 3, 4, 5};
  int index=0;
  float x, y, z;

  BoxSound(int i) {
    x = i*10;
    y = 0;
    z = -250;
  }


  void draw() {
    //translate(width/2, height/2);
    wave= sin(radians(frameCount*s2.getPower()/2))*10;
    fill(255);
    //box(200);
    
    //x = frameCount*wave/v[index];
    y = wave;
    z =- 250;
    noFill();
    stroke(s2.getChannel(32)*16);
    strokeWeight(1);
    fill(s2.getChannel(4)*4);
    rectMode(CENTER);

    push();
    translate(x, height/2, z);
    box(10+x*s2.getPower()/8, y, z);
    pop();
  }

  void changeVitess() {
    index=int(random(v.length));
  }
}
