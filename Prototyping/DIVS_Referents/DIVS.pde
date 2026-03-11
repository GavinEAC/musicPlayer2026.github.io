int appWidth;
int appHeight;
MusicPlayer musicPlayer;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  println(appWidth, appHeight);
  println(appWidth/appHeight);
  musicPlayer  = new MusicPlayer(14);
}

void draw() {
  background(color(255,255,255));
  musicPlayer.summonMusicPlayer();
}

void mousePressed() {
  musicPlayer.mousePressed();
}

void keyPressed() {
  musicPlayer.keyPressed();
}
