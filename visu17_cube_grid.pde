void visu17(){
  background(s2.getChannel(4)/4, 255);
  noFill();
  stroke(s2.getChannel(42)*8);
  strokeWeight(1);
  fill(s2.getChannel(15)*4);
  rectMode(CENTER);

  //push(); 
  ////noStroke();
  //translate(width/2, height/2);

  //rotateX(radians(frameCount)/2);
  //rect(0, -height/2, s2.getChannel(15)*width/4, height/2);
  //rect(0, height/2, s2.getChannel(15)*width/4, -height/2);
  //box(2*s2.getChannel(15),500,500);

  //pop();
  
  float tilesX = 60;
  float tilesY = 60;

  float tileW = width / tilesX*10;
  float tileH = height / tilesY*10;

  translate(tileW / 2, tileH / 2);

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {
      
      float wave = sin(radians( frameCount + x * 10 + y * 10 )) * 300;
      
      pushMatrix();
      translate(tileW * x + wave, tileH * y);
      box(s2.getChannel(15)+x/100,tileH / 2,tileW);

      //ellipse(0,0,tileW / 2,tileH / 2);
      popMatrix();
    }
  }

  
  
  //push();
  //translate(width/4,height/2);
  //pop();
  
  //push();
  //translate(width/4*3,height/2);
  //box(s2.getChannel(15)+x/100,250,250);
  //pop();

}
