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
  stroke(1);
  if(musicPlayer.showGUI){
    musicPlayer.summonMusicPlayer();
  }
  musicPlayer.drawButtons();
}

void mousePressed() {
  //SHOW GUI BUTTON
  if(mouseX < musicPlayer.referent && mouseX > 0 && mouseY > appHeight - musicPlayer.referent && mouseY < appHeight) {
    if(musicPlayer.showGUI == false) {musicPlayer.showGUI = true;}
    else{musicPlayer.showGUI = false;}
  }
  //QUIT BUTTON
  if(mouseX < appWidth && mouseX > appWidth - musicPlayer.referent && mouseY > 0 && mouseY < musicPlayer.referent) {
    exit();
  }
}

void keyPressed() {
  
}
