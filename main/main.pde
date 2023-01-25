Analysor s2;
int mode = 1;

ArrayList<Rectangle> rectangles = new ArrayList<Rectangle>();
ArrayList<BoxSound> boxes = new ArrayList<BoxSound>();

float rectangle = 15;
float vit = 8;
float x, y, z;
float size=100;
float backgroundColor;
float channelIntensity;
float amount=1.1;
float bg;
float bgPower=0.1;
float deg;
float sinPower;
float tanPower;
float cosPower;
float speed;
float opacity;

void setup() {
  fullScreen(P3D, 2);
  //size(1500, 360, P3D);
  //Select Track here:
  //s2 = new Analysor(this,"01 On Repeat.mp3",60);
  //s2 = new Analysor(this, "Bjarki_-_I_Wanna_Go_Bang_TRIP003.mp3", 60);
  //s2 = new Analysor(this, "Blue Suede.mp3", 60);
  //s2 = new Analysor(this, "Dj Deep - Stressed.mp3", 60);
  //s2 = new Analysor(this, "04 Hey Nafsu.mp3", 60);
  s2 = new Analysor(this, "09 Dosa Besar.mp3", 60);
  
  setupmidi();
}

void draw() {
  float bg= s2.getPower()*bgPower;

  s2.runAnalyse();
  //float amount=10;


  rectMode(CENTER);

  switch(mode) {
  case 1:
    visu01(bg);
    break;
  case 2:
    visu02(bg);
    break;
  case 3:
    visu03(bg);
    break;
  case 4:
    visu04(bg);
    break;
  case 5:
    visu05(bg);
    break;
  case 6:
    visu06(bg);
    break;
  case 7:
    visu07(bg);
    break;
  case 8:
    visu08(bg);
    break;
  case 9:
    visu09(bg);
    break;
  case 10:
    visu10(bg);
    break;
  }
  camera();
  pushMatrix();
    hint(DISABLE_DEPTH_TEST);
    fill(255, 255, 0);
    text("mode : "+mode, 30, 30);
    text("POTARDS", 100, 30);
    text("1. amount : "+amount, 100, 45);
    text("2. channelIntensity :"+channelIntensity, 100, 60);
    text("3. size : "+size, 100, 75);
    text("4. sinPower : "+sinPower, 100, 90);
    text("5. tanPower : "+tanPower, 100, 105);
    text("SLIDERS", 300, 30);
    text("1. bgPower : "+bgPower, 300, 45);
    text("2. x : "+x, 300, 60);
    text("3. y : "+y, 300, 75);
    text("4. z : "+z, 300, 90);
    hint(ENABLE_DEPTH_TEST);
  popMatrix();
  s2.drawPreAnalyse(0, 0, width, 300);
}
