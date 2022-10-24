
void setup11(){
  for(int i=0;i<100;i++){
      boxes.add(
        new BoxSound(i)
      );
  }
}


void visu11() {
  
    for(int i=0;i<boxes.size();i++){
      boxes.get(i).draw();
    }
   
    
}
