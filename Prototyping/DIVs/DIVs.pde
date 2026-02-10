//DIVs for music interface

//Libararies

//Classes - Objects

//Global Variables
MusicPlayer player;
MusicPlayer player2;
MusicPlayer player3;

int appWidth;
int appHeight;

//void settings() {}

void setup() {
  appWidth = displayWidth;
  appHeight = displayHeight;
  print(appWidth);
  fullScreen();
  player = new MusicPlayer(0,0);
  player2 = new MusicPlayer(1000,340);
  player3 = new MusicPlayer(450,45);
  
}

void draw() {
  background(color(0,0,0));
  player.draw();
  player2.draw();
  player3.draw();
}

void keyPressed() {}

void mousePressed() {}

//End Driver
