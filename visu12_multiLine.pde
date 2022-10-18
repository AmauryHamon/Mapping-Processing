void visu12() {
   background(s2.getChannel(4)/4, 255);

  
  for(int i=width/2;i>0;i-=50){  
    for(int j=0;j<height;j++){
      
      //float w= (width*4); 
      float wave=sin(radians(frameCount*height)*20);
      noFill();
      stroke(255);
      strokeWeight(s2.getChannel(15)/3);
      
      push();
      translate(width/2, 0);
      line((i*wave*1.1)+frameCount,0,(i*wave*1.1)+frameCount,height);
      line((-i*wave*1.1)-frameCount,0,(-i*wave*1.1)-frameCount,height);
      
      //line(i*s2.getChannel(15)/8,0,i*s2.getChannel(15)/8,height);
      //line(-i*s2.getChannel(15)/8,0,-i*s2.getChannel(15)/8,height);
      pop();
            

      
    }
  }

}
