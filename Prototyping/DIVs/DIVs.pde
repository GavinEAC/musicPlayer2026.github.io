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
  fill(color(255,0,0));
  
  
}

void draw() {
  musicplayer.draw();
  fill(color(255,0,0));
  textSize(musicplayer.divs[3].rectHeight);
  text("NOW PLAYING", musicplayer.divs[3].rectX, musicplayer.divs[3].rectY + musicplayer.divs[3].rectHeight -2);
}

void keyPressed() {}

void mousePressed() {}

//End Driver
