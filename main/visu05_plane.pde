
void visu05(float bg) {
  //background(bg);
  fill(bg, 25);
  noStroke();
  rectMode(CORNER);
  //rect(0, 0, width, height);
  float rectangle = 15;
  float vit = 15;
  float transparency = 10;

  noFill();
  stroke(255,transparency);
  fill(255, transparency);
  strokeWeight(1);
  rectMode(CENTER);
  fill(s2.getPower()*8, transparency);

  float tilesX = amount;
  float tilesY = amount;

  float tileW = width/tilesX;
  float tileH = height/tilesY;

  for(int x=0; x<tilesX; x++){
    for(int y=0; y<tilesY; y++){
      rect(x*tileW+(s2.getChannel(int(random(25,55)))*channelIntensity/random(5,25)), y*tileH+(s2.getChannel(int(random(25,55)))), tilesX+size, tilesY+size, vit);
    }
  }
      

  //if (rectangle<width) {
  //  rectangle +=vit+100;
  //  push();
  //  //translate(width/2,height/2);

  //  rect(x+(s2.getChannel(35)*channelIntensity*25), y, size+s2.getChannel(25), size, vit);
  //  rect(x+(s2.getChannel(35)*channelIntensity*-20), y+s2.getChannel(15)*channelIntensity, size, size, vit);
  //  rect(x+(s2.getChannel(35)*channelIntensity*10), y-s2.getChannel(5)*channelIntensity, size, size, vit);

  //  rect(x*0.5+(s2.getChannel(45)*channelIntensity*5), y*0.5-s2.getChannel(25)*channelIntensity, size, size, vit);
  //  rect(x*0.5+(s2.getChannel(45)*channelIntensity*10), y*0.5-s2.getChannel(25)*channelIntensity, size, size, vit);

  //  rect(x*0.5*3+(s2.getChannel(55)*channelIntensity*10), y*0.5-s2.getChannel(25)*channelIntensity, size, size, vit);
  //  rect(x*0.5*3+(s2.getChannel(55)*channelIntensity*25), y*0.5-s2.getChannel(25)*channelIntensity*4, size, size, vit);

  //  rect(x*0.5*3+(s2.getChannel(55)*channelIntensity*10), y*0.5*3-s2.getChannel(25)*channelIntensity, size, size, vit);
  //  rect(x*0.5*3+(s2.getChannel(55)*channelIntensity*25), y*0.5*3-s2.getChannel(25)*channelIntensity*4, size, size, vit);

  //  rect(x*0.5+(s2.getChannel(45)*channelIntensity*5), y*0.5*3-s2.getChannel(25)*channelIntensity, size, size, vit);
  //  rect(x*0.5+(s2.getChannel(45)*channelIntensity*10), y*0.5*3-s2.getChannel(25)*channelIntensity, size, size, vit);

  //  scale(rectangle*s2.getChannel(45));
  //  pop();
  //} else {
  //  rectangle -=15;

  //  rect(width/2, height/2, size, size, vit);
  //}
}
//push();
//translate(width/2, 0);
//line(-i*s2.getChannel(72),0,-i*s2.getChannel(72),height);
//pop();

//push();
//translate(width/2, 0);
//line(i*s2.getChannel(72),0,i*s2.getChannel(72),height);
//pop();
