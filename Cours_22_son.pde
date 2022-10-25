
Analysor s1;
Analysor s2;
float rectangle = 15;
float vit = 8;

int mode = 1;
ArrayList<Rectangle> rectangles = new ArrayList<Rectangle>();
ArrayList<BoxSound> boxes = new ArrayList<BoxSound>();

void setup() {
  fullScreen(P3D,2);
  //size(1500, 360, P3D);
  //s2 = new Analysor(this,"01 On Repeat.mp3",60);
  //s2 = new Analysor(this, "Bjarki_-_I_Wanna_Go_Bang_TRIP003.mp3", 60);
  //s2 = new Analysor(this, "Blue Suede.mp3", 60);
  //s2 = new Analysor(this, "Dj Deep - Stressed.mp3", 60);
  //s2 = new Analysor(this, "04 Hey Nafsu.mp3", 60);
  s2 = new Analysor(this, "09 Dosa Besar.mp3", 60);
  setup11();
  setupmidi();
 
}

void draw() {
  background(0);
  s2.runAnalyse();
  
  switch(mode){
    //default:             // Default executes if the case names
    //  visu08();
    //  println("Default");   // don't match the switch parameter
    //break;
    case 1:
      visu01();
      break;
    case 2:
      visu02();
      break;
    case 3:
      visu03();
      break;
    case 4:
      visu04();
      break;
    case 5:
      visu05();
      break;
    case 6:
      visu06();
      break;
    case 7:
      visu07();
      break;
    case 8:
      visu08();
      break;
    case 9:
      visu09();
      break;
    case 10:
      visu10();
      break;
    case 11:
      visu11();
      break;
    case 12:
      visu12();
      break;
    case 13:
      visu13();
      break;
    case 14:
      visu14();
      break;
    case 15:
      visu15();
      break;
    case 16:
      visu16();
      break;
    case 17:
      visu17();
      break;
    //case 18:
    //  visu18();
    //  //println("Nine");
    //  break;
    //case 19:
    //  visu19();
    //  //println("Nine");
    //  break;

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
   
   

//s2.drawPreAnalyse(0, 0, width, 300);
}
