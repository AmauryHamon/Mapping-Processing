Analysor s1;
Analysor s2;
float rectangle = 15;
float vit = 8;

int mode =1;

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


  //pushMatrix();

  if (mode==1) {
    visu1();
  }else if(mode==2){
    visu2();
  }else if(mode==3){
    visu3();
  }else if (mode==4){
    visu4();
  }else if (mode==5){
    visu5();
  }else if (mode==6){
    visu6();
  }else if(mode==7){
    visu7();
  }else if(mode==8){
    visu8();
  }else if(mode==9){
    visu9();
  }else if(mode==10){
    visu10();
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
  }
   
   


}
