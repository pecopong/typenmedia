class Sketch16 extends EmbeddedSketch {
  int mBgCol = 240;
  int mBgColInv = 0;
  int mOpaL = 50;
  int mOpaR = 50;

  OscP5 oscP5;

  int found;

  float poseScale;
  PVector posePosition = new PVector();
  PVector poseOrientation = new PVector();

  float mouthHeight;
  float mouthWidth;
  float eyeLeft;
  float eyeRight;
  float eyebrowLeft;
  float eyebrowRight;
  float jaw;
  float nostrils;
  float poseOriX;
  float poseOriZ;
  float poseOriY;
  float posePosY;
  float posePosX;

  float strWeight;
  float eyeSc;
  float noseWidth = 6;

  float posePosY1 = 0;
  float posePosY2 = 0;
  float poseOriY1 = 0;
  float poseOriY2 = 0;
  float jawNos1 = 0;
  float jawNos2 = 0;
  float blinkChan1 = 0;
  float blinkChan2 = 0;
  float frameSave1; // blink framesave
  float frameSave2; // headDown framesave
  float frameSave3; // smile framesave;
  float NWval; //nostril width;

  boolean headDown = false;
  boolean smile = false;
  boolean blink = false;

  void setup() {
    size(1024, 768);

    oscP5 = new OscP5(this, 8338);
    oscP5.plug(this, "found", "/found");
    oscP5.plug(this, "poseScale", "/pose/scale");
    oscP5.plug(this, "posePosition", "/pose/position");
    oscP5.plug(this, "poseOrientation", "/pose/orientation");
    oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
    oscP5.plug(this, "mouthHeightReceived", "/gesture/mouth/height");
    oscP5.plug(this, "eyeLeftReceived", "/gesture/eye/left");
    oscP5.plug(this, "eyeRightReceived", "/gesture/eye/right");
    oscP5.plug(this, "eyebrowLeftReceived", "/gesture/eyebrow/left");
    oscP5.plug(this, "eyebrowRightReceived", "/gesture/eyebrow/right");
    oscP5.plug(this, "jawReceived", "/gesture/jaw");
    oscP5.plug(this, "nostrilsReceived", "/gesture/nostrils");
  }

  void draw() {  
    super.draw();
    pushMatrix();
    background(240);
    strWeight = poseScale;
    stroke(30);
    strokeWeight(3);
    noFill();
    eyeSc = poseScale*3;

    //  if (found > 0) {
    translate(width-posePosition.x, posePosition.y);
    rotate(-poseOriZ+0.1);
    scale(poseScale);


    blinkChan1 = blinkChan2;
    blinkChan2 = eyebrowLeft-eyeLeft;
    if (blinkChan2 - blinkChan1 > 0.5 && frameCount>100) {
      blink = true;
      frameSave1 = frameCount;
    }

    if (frameCount - frameSave1 > 10) {
      blink = false;
    }

    if (frameCount - frameSave2 > 100) {
      headDown = false;
    }

    if (mouthWidth >15 || frameCount - frameSave3 > 100) {
      smile = false;
    }

    //mouth
    if (mouthHeight>2) {
      rectMode(CENTER);
      if (mouthHeight>5 && mouthWidth>15) {
        rect(0, 30, mouthWidth*2, mouthHeight*2, 3);
        line(-mouthWidth, 20, -mouthWidth, 30);
        line(mouthWidth, 20, mouthWidth, 30);
      } else {
        rect(0, 28, mouthWidth*2, mouthHeight*3, 3);
      }
    } else {
      if (smile) {
        line(0, 25, mouthWidth, 35);
        line(0, 25, -mouthWidth, 35);
      } else {
        line(0, 30, mouthWidth, 30);
        line(0, 30, -mouthWidth, 30);
      }
    }

    //nose
    noseWidth = (posePosX - 290)/4;
    if (posePosX > 290) {
      NWval = constrain(noseWidth, 6, 10);
    } else {
      NWval = constrain(noseWidth, -10, -6);
    }
    line(0, 0, 0, 25-mouthHeight*3/2);
    line(0, (25-mouthHeight*3/2)*2/3, -NWval, (25-mouthHeight*3/2)*2/3);

    if (headDown) {
      //eyeLeft
      line(-20-eyeSc*2/3, -eyeLeft*5+10, -20+eyeSc*2/3, -eyeLeft*5+10);
      line(-20-eyeSc*2/5, -eyeLeft*5+10, -20-eyeSc*2/5, -eyeLeft*5+20);
      line(-20+eyeSc*2/5, -eyeLeft*5+10, -20+eyeSc*2/5, -eyeLeft*5+20);
      //eyeRight
      line(20-eyeSc*2/3, -eyeRight*5+10, 20+eyeSc*2/3, -eyeRight*5+10);
      line(20-eyeSc*2/5, -eyeRight*5+10, 20-eyeSc*2/5, -eyeRight*5+20);
      line(20+eyeSc*2/5, -eyeRight*5+10, 20+eyeSc*2/5, -eyeRight*5+20);
    } else if (blink) {
      line(-20-eyeSc/2, -eyeLeft*5+15, -20+eyeSc/2, -eyeLeft*5+15);
      line(20-eyeSc/2, -eyeRight*5+15, 20+eyeSc/2, -eyeRight*5+15);
    } else {
      //eyeLeft
      ellipse(-20, eyeLeft, eyeSc, eyeSc);
      //eyeRight
      line(10, eyeRight-5, 10+eyeSc, eyeRight-5);
      line(10, eyeRight-5, 10, eyeRight+5);
      line(10, eyeRight+5, 10+eyeSc, eyeRight+5);
      //eyeBrowLeft
      line(-20-eyeSc/2, -eyebrowLeft*5+25, -20+eyeSc/2, -eyebrowLeft*5+25);
      line(-20, -eyebrowLeft*5+20, -20, -eyebrowLeft*5+25);
      //eyeBrowRight
      line(10, -eyebrowRight*5+25, 10+eyeSc, -eyebrowRight*5+25);
      line(10+eyeSc, -eyebrowRight*5+25, 10+eyeSc, eyeRight-5);
    }

    emotionDetect();
    popMatrix();
    masterUI();
  }

  public void emotionDetect() {
    if (frameCount%30 == 0) {
      posePosY1 = posePosY2;
      posePosY2 = posePosY;
      jawNos1 = jawNos2;
      jawNos2 = jaw-nostrils;

      if (frameCount > 100) {
        if (posePosY2 - posePosY1 > 25) {
          headDown = true;
          frameSave2 = frameCount;
        }

        if (posePosY2 - posePosY1 <-20) {
          headDown = false;
        }

        if (jawNos2 - jawNos1 > 1 && mouthHeight < 2) {
          if (!smile) {
            frameSave3 = frameCount;
          }
          smile = true;
        }
      }
    }
  }

  // OSC CALLBACK FUNCTIONS

  public void found(int i) {
    //  println("found: " + i);
    found = i;
  }

  public void poseScale(float s) {
    //  println("scale: " + s);
    poseScale = s;
  }

  public void posePosition(float x, float y) {
    //  println("pose position\tX: " + x + " Y: " + y );
    posePosition.set(x, y, 0);
    posePosY = y;
    posePosX = x;
  }

  public void poseOrientation(float x, float y, float z) {
    //  println("pose orientation\tX: " + x + " Y: " + y + " Z: " + z);
    poseOrientation.set(x, y, z);
    poseOriX = x;
    poseOriZ = z;
    poseOriY = y;
  }

  public void mouthWidthReceived(float w) {
    //  println("mouth Width: " + w);
    mouthWidth = w;
  }

  public void mouthHeightReceived(float h) {
    //  println("mouth height: " + h);
    mouthHeight = h;
  }

  public void eyeLeftReceived(float f) {
    //  println("eye left: " + f);
    eyeLeft = f;
  }

  public void eyeRightReceived(float f) {
    //  println("eye right: " + f);
    eyeRight = f;
  }

  public void eyebrowLeftReceived(float f) {
    //  println("eyebrow left: " + f);
    eyebrowLeft = f;
  }

  public void eyebrowRightReceived(float f) {
    //  println("eyebrow right: " + f);
    eyebrowRight = f;
  }

  public void jawReceived(float f) {
    //  println("jaw: " + f);
    jaw = f;
  }

  public void nostrilsReceived(float f) {
    //  println("nostrils: " + f);
    nostrils = f;
  }

  // all other OSC messages end up here
  void oscEvent(OscMessage m) {
    if (m.isPlugged() == false) {
      //    println("UNPLUGGED: " + m);
    }
  }
  void masterUIdraw() {
    noStroke();
    smooth();
    blendMode(NORMAL);
    fill(mBgColInv, mOpaL);
    ellipseMode(CENTER);
    ellipse(-90, 384, 300, 300);
    fill(mBgColInv, mOpaR);
    ellipse(1114, 384, 300, 300);
    strokeWeight(3);
    stroke(mBgCol, 255);
    line(10, 384, 30, 364);
    line(10, 384, 30, 404);
    line(1014, 384, 994, 364);
    line(1014, 384, 994, 404);
  }

  void masterUI() {
    masterUIdraw();
   if (mouseY < 506 && mouseY > 268) {
      if (mouseX < 60) { // left click (previous sketch)
        mOpaL = 100;
        if (mousePressed) pageChan(0);
      } else if (mouseX > 964) { //right click (next sketch)
        mOpaR = 100;
        if (mousePressed) pageChan(1);
      } else {
        mOpaL = 50;
        mOpaR = 50;
      }
    }
  }
}

