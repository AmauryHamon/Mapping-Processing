void visu05(float bg) {
  //background(bg);

  float rectangle = 15;
  float vit = 15;
  

  noFill();
  stroke(random(255));
  fill(255, 14);
  stroke(255);
  float opacity=255;
  strokeWeight(1);
  rectMode(CENTER);

  if (rectangle<width) {
    rectangle +=vit+100;
    fill(s2.getPower()*8);

    rect(width/2+(s2.getChannel(35)*channelIntensity*25), height/2, rectangle, rectangle, vit);
    rect(width/2+(s2.getChannel(35)*channelIntensity*-20), height/2+s2.getChannel(15)*channelIntensity, rectangle, rectangle, vit);
    rect(width/2+(s2.getChannel(35)*channelIntensity*10), height/2-s2.getChannel(5)*channelIntensity, rectangle, rectangle, vit);
    rect(width/4+(s2.getChannel(45)*channelIntensity*5), height/4-s2.getChannel(25)*channelIntensity, rectangle, rectangle, vit);
    rect(width/4+(s2.getChannel(45)*channelIntensity*10), height/4-s2.getChannel(25)*channelIntensity, rectangle, rectangle, vit);
    rect(width/4*3+(s2.getChannel(55)*channelIntensity*10), height/4*3-s2.getChannel(25)*channelIntensity, rectangle, rectangle, vit);
    rect(width/4*3+(s2.getChannel(55)*channelIntensity*25), height/4*3-s2.getChannel(25)*channelIntensity*4, rectangle, rectangle, vit);

    scale(rectangle);
    opacity -=15;


    
  } else {
    rectangle -=15;
    rect(width/2, height/2, rectangle, rectangle, vit);

  }
}
//push();
//translate(width/2, 0);
//line(-i*s2.getChannel(72),0,-i*s2.getChannel(72),height);
//pop();

//push();
//translate(width/2, 0);
//line(i*s2.getChannel(72),0,i*s2.getChannel(72),height);
//pop();
