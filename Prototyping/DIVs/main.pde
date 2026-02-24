//DIVs for music interface

//Libararies

//Classes - Objects

//Global Variables
parentRect background;
Rect myRect;
MusicPlayer musicplayer;
boolean musicplayerActive = false;
Rect musicButton;


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
  musicButton = new Rect(background, "0", "0", "0", "%10", color(0,0,0));
  
  
}

void draw() {
  background(color(255,255,255)); 
  if (musicplayerActive == true) {
    musicplayer.draw();
  }
    musicButton.drawRect();
    
  fill(color(255,0,0));
  //textSize(musicplayer.divs[3].rectHeight);
  //text("NOW PLAYING", musicplayer.divs[3].rectX, musicplayer.divs[3].rectY + musicplayer.divs[3].rectHeight -2);
}

void keyPressed() {
  exit();
}

void mousePressed() {
  if(musicButton.isHovering()){
    if(musicplayerActive == false) {
      musicplayerActive = true;
    }
    else if(musicplayerActive == true) {
      musicplayerActive = false;
    }
  }
}

//End Driver
