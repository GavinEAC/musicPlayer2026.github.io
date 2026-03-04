int appWidth;
int appHeight;
MusicPlayer musicPlayer;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  musicPlayer  = new MusicPlayer(9);
}

void draw() {
  musicPlayer.summonMusicPlayer();
}

void mousePressed() {
  
}

void keyPressed() {
  
}
