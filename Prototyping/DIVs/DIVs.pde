//DIVs for music interface

//Libararies

//Classes - Objects

//Global Variables
parentRect background;
Rect myRect;
MusicPlayer musicplayer;


int appWidth;
int appHeight;

//void settings() {}

void setup() {
  appWidth = displayWidth;
  appHeight = displayHeight;
  fullScreen();
  //background = new parentRect();
  //myRect = new Rect(background, "%50", "%50", "100", "100");
  //myRect.drawRect();
  musicplayer = new MusicPlayer();
  musicplayer.draw();
  musicplayer.errorStatment("hello World");
  
}

void draw() {
}

void keyPressed() {}

void mousePressed() {}

//End Driver
