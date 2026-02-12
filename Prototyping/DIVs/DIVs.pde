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
  background = new parentRect();
  musicplayer = new MusicPlayer();
  musicplayer.divsArray();
  
}

void draw() {
  musicplayer.draw();
}

void keyPressed() {}

void mousePressed() {}

//End Driver
