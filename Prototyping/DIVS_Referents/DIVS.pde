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
  
  //Delete this later
  color pink = color(255, 102, 204);
  loadPixels();
  for (int i = 0; i < (width*height/2)-width/2; i++) {
    pixels[i] = pink;
  }
  updatePixels();
}

void draw() {
  background(color(255,255,255));
  updatePixels();
  musicPlayer.summonMusicPlayer();
}

void mousePressed() {
  musicPlayer.mousePressed();
}

void keyPressed() {
  musicPlayer.keyPressed();
}
