void visu09(float bg) {
  //float rectangle = 15;
  float x = width;
  float y = height;
  //float vit = 15;
  background(bg);
  //background(s2.getChannel(4));
  stroke(255);

  if (frameCount%40==0) {
    rectangles.add(new Rectangle());
  }

  for (int i=0; i<rectangles.size(); i++) {
    rectangles.get(i).draw();
  }


}
