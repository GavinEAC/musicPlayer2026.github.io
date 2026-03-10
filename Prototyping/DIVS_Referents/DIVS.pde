int appWidth;
int appHeight;
MusicPlayer musicPlayer;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  println(appWidth, appHeight);
  println(appWidth/appHeight);
  musicPlayer  = new MusicPlayer(12);
}

void draw() {
  musicPlayer.summonMusicPlayer();
}

void mousePressed() {
  
}

void keyPressed() {
  
}
