class Sketch3 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  
  void setup() {
    size(1024, 768);
  }

  void draw() {
    background(0);
    super.draw();
    masterUI();
  }

  void masterUI() {
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

