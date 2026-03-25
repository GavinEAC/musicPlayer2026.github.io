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
  //MORE TO DO, NOT FINISHED
  void controlButtons(float[] divs) {
    for(int i = 24; int(i/4) < 12; i+=4) {
      float biggerDivDimension = divs[i+2];
      float divX = changeScale(divs[i], biggerDivDimension);
      float divY = changeScale(divs[i+1], biggerDivDimension);
      float divDimension = changeScale(divs[i+2]);
      
      if(int(i/4) == 6) {drawThinRect(divX, divY, divDimension); drawThinTriangle(-1, divX + divDimension*1/4, divY, divDimension);}
      if(int(i/4) == 8) {drawWideTriangle(divX, divY, divDimension);}
      if(int(i/4) == 10) {
        drawLines(divX, divY, divDimension);
        float node2X = divX + divDimension;
        float node2Y = divY;
        float largerDimension = divDimension;
        divDimension = divDimension*1/4;
        divX = node2X - divDimension*1/4;
        divY = node2Y - divDimension*1/4;
        drawThinTriangle(1, divX, divY, divDimension);
        drawThinTriangle(1, divX, divY + largerDimension - changeScale(divDimension), divDimension);
      }
      if(int(i/4) == 11) {drawThinRect(divX + changeScale(divDimension), divY, divDimension); drawThinTriangle(1, divX, divY, divDimension);}

    }
  }//End controlButtons
  
  float changeScale(float divXY, float divDimension) {
    return divXY = divXY + divDimension*1/4;
  }//End SmallerDivXY
  
  float changeScale(float divDimension) {
    return divDimension*1/2;
  }//End smallerDivDimension

  void drawThinRect(float divX, float divY, float divDimension) {
    rect(divX, divY, divDimension*1/4, divDimension);
  }
  
  void drawWideTriangle(float divX, float divY, float divDimension) {
    triangle(divX, divY, divX+divDimension, divY +  changeScale(divDimension), divX, divY + divDimension);
    //Apply smallerNum(divDimension) at 3rd parameter for thin triangle
  }
  
  void drawThinTriangle(int direction, float divX, float divY, float divDimension) {
    if(direction == 1) {
      triangle(divX, divY, divX+changeScale(divDimension), divY + changeScale(divDimension), divX, divY + divDimension);
    }
    if(direction == -1) {
      triangle(divX+changeScale(divDimension), divY, divX, divY + changeScale(divDimension), divX+changeScale(divDimension), divY + divDimension);
    }
  }
  
  void drawLines(float divX, float divY, float divDimension){
    line(divX, divY, divX + divDimension, divY + divDimension);
    line(divX + divDimension, divY, divX, divY + divDimension);
  }
    
  void summonMusicPlayer() {
    if(showGUI) {
      for(int i=0; i < divs.length - 8; i+=4) {
        drawRect(divs[i], divs[i+1], divs[i+2], divs[i+3]);
      }
      controlButtons(divs);
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
  
  void ERRORCheck(String description, int variable) {
    println(description, variable);
  }
}//End MusicPlayer
