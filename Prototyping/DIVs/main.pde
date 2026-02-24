//DIVs for music interface

//Libararies

//Classes - Objects

//Global Variables
parentRect background;
MusicPlayer musicplayer;
boolean musicplayerActive = false;
Rect musicButton;
Rect topBar;
Rect quitButton;


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
  topBar = new Rect(background, "0", "0", "%100", "%10", color(255,255,255));
  musicButton = new Rect(topBar, "0", "0", "0", "%100", color(0,0,0));
  quitButton = new Rect(topBar, "0", "0", "0", "%100", color(0,0,0));
  quitButton.rectX = quitButton.rectParent.rectWidth - quitButton.rectWidth;
  
  
}

void draw() {
  background(color(255,255,255)); 
  if (musicplayerActive == true) {
    musicplayer.draw();
  }
    musicButton.drawRect();
    quitButton.drawRect();
    
  fill(color(255,0,0));
  //textSize(musicplayer.divs[3].rectHeight);
  //text("NOW PLAYING", musicplayer.divs[3].rectX, musicplayer.divs[3].rectY + musicplayer.divs[3].rectHeight -2);
}

void keyPressed() {
  exit();
}

void mousePressed() {
  if(musicButton.isHovering()) {
    if(musicplayerActive == false) {
      musicplayerActive = true;
    }
    else if(musicplayerActive == true) {
      musicplayerActive = false;
    }
  }
  if(quitButton.isHovering()) {
    exit();
  }
}

//End Driver
