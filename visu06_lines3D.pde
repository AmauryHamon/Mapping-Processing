void visu6(){
   background(s2.getChannel(10)/2, 255);

  
  for(int i=width/2;i>0;i-=50){  
    for(int j=0;j<height;j++){
      
      //float w= (width*4); 
      float wave=radians(frameCount)*height/20;
      noFill();
      stroke(255);
      strokeWeight(1);
      float rot=1;
      push();
      translate(width/2, height/2);
      rotateX(radians(frameCount));
      line(i*2,0,i*2,height);
      line(-i*2,0,-i*2,height);
      
      line(i*s2.getChannel(60),0,i*s2.getChannel(60),-height);
      line(-i*s2.getChannel(60),0,-i*s2.getChannel(60),-height);
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
