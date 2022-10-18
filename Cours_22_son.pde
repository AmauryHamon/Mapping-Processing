Analysor s1;
Analysor s2;
float rectangle = 15;
float vit = 8;

int mode = 1;

void setup() {
  fullScreen(P3D);
  //size(1500, 360, P3D);
  s2 = new Analysor(this,"01 On Repeat.mp3",60);
  //s2 = new Analysor(this, "Bjarki_-_I_Wanna_Go_Bang_TRIP003.mp3", 60);
  //s2 = new Analysor(this, "Blue Suede.mp3", 60);
  //s2 = new Analysor(this, "Dj Deep - Stressed.mp3", 60);
  //s2 = new Analysor(this, "04 Hey Nafsu.mp3", 60);
}

void draw() {
  background(0);
  s2.runAnalyse();
  s2.drawPreAnalyse(0, 0, width, 300);
  switch(mode){
    //default:             // Default executes if the case names
    //  visu08();
    //  println("Default");   // don't match the switch parameter
    //break;
    case 1:
      visu01();
      println("One");
      break;
    case 2:
      visu02();
      println("Two");
      break;
    case 3:
      visu03();
      println("Three");
      break;
    case 4:
      visu04();
      println("Four");
      break;
    case 5:
      visu05();
      println("Five");
      break;
    case 6:
      visu06();
      println("Six");
      break;
    case 7:
      visu07();
      println("Seven");
      break;
    case 8:
      visu08();
      println("Eight");
      break;
    case 9:
      visu09();
      println("Nine");
      break;
  }

  //pushMatrix();
  
  //if (mode==1) {
  //  visu01();
  //}else if(mode==2){
  //  visu02();
  //}else if(mode==3){
  //  visu03();
  //}else if (mode==4){
  //  visu04();
  //}else if (mode==5){
  //  visu05();
  //}else if (mode==6){
  //  visu06();
  //}else if(mode==7){
  //  visu07();
  //}else if(mode==8){
  //  visu08();
  //}else if(mode==9){
  //  visu09();
  //}else if(mode==10){
  //  visu10();
  //}else if(mode==11){
  //  visu11();
  //}else if(mode==12){
  //  visu12();
  //}else if(mode==13){
  //  visu13();
  //}else if(mode==14){
  //  visu14();
  //}else if(mode==15){
  //  visu15();
  //}else if(mode==16){
  //  visu16();
  //}else if(mode==17){
  //  visu17();
  //}else if(mode==18){
  //  visu18();
  //}else if(mode==19){
  //  visu19();
  //}
   
   


}
