class MusicPlayer {
  float[] divs;
  float referent;
  boolean showGUI;
  
  MusicPlayer(int numberOfRects) {
    this.divs = new float[numberOfRects*4];
    divs();
    summonMusicPlayer();
    showGUI = false;
  }//End MusicPlayer
  
  void mousePressed() {
    int num=12*4;
    if ( mouseReturn (num) ) showGUI = varSwitch(showGUI);
    num=13*4;
    if ( mouseReturn (num) ) exit();;
  }// End Mouse Pressed
  
  void keyPressed() {
    //key=='CAP' || key=='LOWER' //Note" Caps Lock
    //key==CODED || keyCode==ESC //Special Keys
    if (key==CODED || keyCode==ESC) exit();
    if (key=='Q' || key=='q') exit();
    if (key=='M' || key=='m') showGUI = varSwitch(showGUI);
  }//End Key Pressed
  
  Boolean varSwitch(Boolean variable) {
    if ( variable==true ) {
      return variable=false;
    } else {
      return variable=true;
    }
  }//End Boolean Variable Switch
  Boolean mouseReturn (int num) {
    return mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3];
  }//End Mouse Return
  
  void divs() {
    divs[0] = appWidth*1/4;
    divs[1] = appHeight*1/4;
    divs[2] = appWidth*1/2;
    divs[3] = appHeight*1/2;
    
    referent = divs[2] / 13;
    float[] columns = new float[7];
    for ( int i=0; i<columns.length; i++) {
      if ( i==0 ) columns[0] = divs[0] + referent;
      else if ( i==1 ) columns[1] = divs[0] + 3.5*referent;
      else if ( i==2 ) columns[2] = divs[0] + 7.5*referent;
      else if ( i>=3 && i<=5 ) columns[i] = divs[0] + (linearPoly(1, i, 5))*referent;
      else if ( i==6 ) columns[6] = divs[0] + 10.5*referent;
    }
    
    float [] rows = new float[3];
    for(int i=0; i < columns.length; i++) {
      if (i == 0) rows[0] = divs[1] + referent;
      if (i == 1) rows[1] = divs[1] + 4*referent;
      if (i == 2) rows[2] = divs[1] + 6*referent;
    }
    for(int i=4; i < divs.length; i++){
    //for(int i = 4; i == 12; i++) {
      //X POSITION
      if(i%4 == 0) {
        if(int(i/4) <= 3) {divs[i] = columns[0];}
        else if(int(i/4) == 4) {divs[i] = columns[1];}
        else if(int(i/4) == 5 || int(i/4) == 6) {divs[i] = columns[2];}
        else if(int(i/4) == 7) {divs[i] = columns[3];}
        else if(int(i/4) == 8 || int(i/4) == 9) {divs[i] = columns[4];}
        else if(int(i/4) == 10) {divs[i] = columns[5];}
        else if(int(i/4) == 11) {divs[i] = columns[6];}
        else if(int(i/4) == 12) {divs[i] = 0;}
        else if(int(i/4) == 13) {divs[i] = appWidth - referent;}
        
      }
      //Y POSITION
      if(i%4 == 1) {
        if(int(i/4) == 1 || int(i/4) == 5) {divs[i] = rows[0];}
        else if(int(i/4) == 2 || int(i/4) == 6 || int(i/4) == 8 || int(i/4) == 11) {divs[i] = rows[1];}
        else if(int(i/4) == 3 || int(i/4) == 4 || int(i/4) == 7 || int(i/4) == 9 || int(i/4) == 10) {divs[i] = rows[2];}
        else if(int(i/4) == 12) {divs[i] = appHeight - referent;}
        else if(int(i/4) == 13) {divs[i] = 0;}
      }
      //WIDTH
      if(i%4 == 2) {
        if(int(i/4) <= 2) {divs[i] = 5*referent;}
        else if(int(i/4) >= 3 && int(i/4) <= 4) {divs[i] = 2.5*referent;}
        else if(int(i/4) == 5) {divs[i] = 4*referent;}
        else if(int(i/4) >= 6) {divs[i] = referent;}
      }
      //HEIGHT
      if(i%4 == 3) {
        if(int(i/4) == 1 || int(i/4) == 2 || int(i/4) == 5) {divs[i] = 2*referent;}
        else if(int(i/4) == 3 || int(i/4) == 4) {divs[i] = 0.5*referent;}
        else if(int(i/4) >= 6) {divs[i] = referent;}
      }
    }
  }//End Divs
  
  
  void summonMusicPlayer() {
    if(showGUI) {
      for(int i=0; i < divs.length - 8; i+=4) {
        drawRect(divs[i], divs[i+1], divs[i+2], divs[i+3]);
      }
    }
    drawButtons();
  }//End summonMusicPlayer
  
  void drawButtons() {
     for(int i=divs.length - 8; i < divs.length; i+=4) {
      drawRect(divs[i], divs[i+1], divs[i+2], divs[i+3]);
    }
  }//End drawButtons
  
  void drawRect(float x, float y, float w, float h){
    rect(x,y,w,h);
  }//End drawRect
  
  float linearPoly(float m, float x, float b) {
    return (m*x) + b;
  }//End linearPoly
  
  //Getters
  Boolean musicPlayerGUI() {
    return showGUI;
  }//End Music Player GUI
  
   //Error Checks
  void ERRORCheck(String description) {
    println(description);
  }//End
  void ERRORCheck(String description, float variable) {
    println(description, variable);
  }//End
}//End MusicPlayer
