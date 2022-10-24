void visu06(){
   background(s2.getChannel(4)/8, 255);

  
  for(int i=width/2;i>0;i-=50){  
    for(int j=0;j<height;j++){
      
      //float w= (width*4); 
      float deg = radians(frameCount);
      float wave = sin(deg) * 800;
      float wave2 = tan(deg) * 800;
      stroke(255);
      strokeWeight(1);
      //strokeWeight(s2.getChannel(4)/16);
      float rot=1;
      push();
      translate(width/2, height/2);
      rotateX(radians(frameCount));

      line(i*4+wave,0,i*4+wave,height/4);
      line(-i*4,0,-i*4,height/4);

      
      line(i*8+wave*2,height/4,i*8+wave*2,height/2);
      line(-i*8+wave2,height/4,-i*8+wave2,height/2);
      
      line(i*16+wave/8,height/2,i*16+wave/8,height);
      line(-i*16+wave/8,height/2,-i*16+wave/8,height);
      
      
      //line(-i*wave2/1000+s2.getChannel(60),0,-i*wave2/1000+s2.getChannel(60),-height);
      
      pop();
      push();
        translate(width/2,height/2);
        rotateX(radians(frameCount));
        line(i*wave2/1000+s2.getChannel(60),0,i*wave2/1000+s2.getChannel(60),-height);
        line(-i*wave2/1000+s2.getChannel(60),0,-i*wave2/1000+s2.getChannel(60),-height);

      pop();
      //push();
      //translate(width/2, 0);
      //line(-i*s2.getChannel(72),0,-i*s2.getChannel(72),height);
      //pop();
      
      //push();
      //translate(width/2, 0);
      //line(i*s2.getChannel(72),0,i*s2.getChannel(72),height);
      //pop();
    }
  }

}
