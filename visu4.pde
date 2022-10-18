void visu4(){
   background(s2.getChannel(4)/4, 255);

  
  for(int i=width/2;i>0;i-=50){  
    for(int j=0;j<height;j++){
      
      //float w= (width*4); 
      float wave=sin(radians(frameCount*height)/20);
      noFill();
      stroke(255);
      strokeWeight(s2.getChannel(15)/5);
      
      push();
      translate(width/2, 0);
      line(i*s2.getChannel(15)/5,0,i*s2.getChannel(15)/5,height);
      line(-i*s2.getChannel(15)/5,0,-i*s2.getChannel(15)/5,height);
      pop();
            
      push();
      translate(width/2, 0);
      line(-i*s2.getChannel(72),0,-i*s2.getChannel(72),height);
      pop();
      
      push();
      translate(width/2, 0);
      line(i*s2.getChannel(72),0,i*s2.getChannel(72),height);
      pop();
    }
  }

}
