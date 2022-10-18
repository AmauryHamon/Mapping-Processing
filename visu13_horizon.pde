void visu13() {
  //float rectangle = 15;
  float x = width;
  float y = height;
  //float vit = 15;
  background(0);
  //background(s2.getChannel(4));
  stroke(255);



  //noFill();
  if (frameCount%40==0) {
    rectangles.add(new Rectangle());


    //println("yop");
  }

  for (int i=0; i<rectangles.size(); i++) {
    rectangles.get(i).draw();
  }

  //for (int i=0; i<rectangles.size(); i=i+1) {
  //  if (rectangles.get(i).vx>width) {
  //    rectangles.remove(i);
  //  }
  //}
  
  //strokeWeight(1);
  //fill(0);
  //rect(x/2,y/2,mouseX,mouseY);


  //if (x>0 && y>0) {
  //  x -= width*0.01*frameCount ;
  //  y -= height*0.01*frameCount ;
  //  rect(width/2, height/2, x, y);
  //} else if (x>width && y>height) {
  //  x -= width*0.01*frameCount ;
  //  y -= height*0.01*frameCount ;
  //  rect(width/2, height/2, x, y);
  //}
}
