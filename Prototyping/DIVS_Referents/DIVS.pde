int appWidth;
int appHeight;
MusicPlayer musicPlayer;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  musicPlayer  = new MusicPlayer(10);
}

void draw() {
  musicPlayer.summonMusicPlayer();
}

void mousePressed() {
  
}

void keyPressed() {
  
}
