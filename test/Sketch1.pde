class Sketch1 extends EmbeddedSketch {
  int mBgCol = 255;
  int mBgColInv = 0;
  int mOpaL = 50;
  int mOpaR = 50;

  int rect1X, rect2X, rect3X, rectY;
  int rectSize = 100;
  boolean rect1Over = false;
  boolean rect2Over = false;
  boolean rect3Over = false;
  int count = 0;
  int limit = 0;
  int i = 0;
  float circle = random(5, 20);
  float easing = 0.01;
  PImage img;

  void setup() {
    size(1024, 768);
    background(255);
    rect1X = width/2 - rectSize/2 -100;
    rect2X = width/2 - rectSize/2;
    rect3X = width/2 - rectSize/2 + 100;
    rectY = 600 - rectSize/2;
    pushMatrix();
    translate(260, 40);
    line(140, 110, 320, 110);
    line(230, 110, 230, 160);
    line(160, 160, 300, 160);
    line(160, 160, 160, 250);
    line(300, 160, 300, 250);
    line(350, 110, 350, 280);
    line(160, 300, 160, 380);
    line(160, 380, 350, 380);
    popMatrix();
    img = loadImage("text.png");

    masterUIdraw();
  }

  void draw() {
    super.draw();
    update(mouseX, mouseY);
    strokeWeight(1);

    noStroke();
    fill(100, 160, 100);
    rect(rect1X, rectY, rectSize, rectSize);
    fill(200, 0, 50);
    rect(rect2X, rectY, rectSize, rectSize);
    fill(40, 40, 40);
    rect(rect3X, rectY, rectSize, rectSize);

    textSize(14);
    image(img, width/2-150, 680);

    if (rect1Over) {
      greenmold();
    }
    if (rect2Over) {
      redmold();
    }
    if (rect3Over) {
      greymold();
    }
    masterUI();
  }
  void keyPressed() {
    limit=0;
    i=0;
    background(255);
    masterUIdraw();
  }

  void update(int x, int y) {
    if (overRect(rect1X, rectY, rectSize, rectSize)) {
      rect1Over = true;
      rect2Over = false;
      rect3Over = false;
    } else if (overRect(rect2X, rectY, rectSize, rectSize)) {
      rect1Over = false;
      rect2Over = true;
      rect3Over = false;
    } else if (overRect(rect3X, rectY, rectSize, rectSize)) {
      rect1Over = false;
      rect2Over = false;
      rect3Over = true;
    } else {
      rect1Over = rect2Over = rect3Over = false;
    }
  }

  void mousePressed() {
    if (rect1Over) {
      greenmold();
    }
    if (rect2Over) {
      redmold();
    }
    if (rect3Over) {
      greymold();
    }
  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }

  void greenmold() {
    limit++;
    i++;
    if (limit>1000) {
      limit--;
      fill(255);
    };
    if (i>180) i=0;
    if (limit<0) {
      limit=0;
    }
    noStroke();
    float circle = random(5, 20);
    pushMatrix();
    translate(260, 40);
    fill(100, random(110, 160), 100);
    //line(110,150,290,150);
    rect(random(140, 320), 110+limit/20, circle, circle);
    rect(random(140, 320), 110+limit/10, circle, circle);
    rect(random(140, 320), 110-limit/20, circle, circle);
    rect(random(140, 320), 110-limit/10, circle, circle);

    //line(200,150,200,200);
    rect(230+limit/20, random(110, 160), circle, circle);
    rect(230+limit/10, random(110, 160), circle, circle);
    rect(230-limit/20, random(110, 160), circle, circle);
    rect(230-limit/10, random(110, 160), circle, circle);

    //line(130,200,270,200);
    rect(random(160, 300), 160+limit/20, circle, circle);
    rect(random(160, 300), 160+limit/10, circle, circle);
    rect(random(160, 300), 160-limit/20, circle, circle);
    rect(random(160, 300), 160-limit/10, circle, circle);

    //line(130,200,130,290);
    rect(160+limit/20, random(160, 250), circle, circle);
    rect(160+limit/10, random(160, 250), circle, circle);
    rect(160-limit/20, random(160, 250), circle, circle);
    rect(160-limit/10, random(160, 250), circle, circle);

    //line(270,200,270,290);
    rect(300+limit/20, random(160, 250), circle, circle);
    rect(300+limit/10, random(160, 250), circle, circle);
    rect(300-limit/20, random(160, 250), circle, circle);
    rect(300-limit/10, random(160, 250), circle, circle);

    //line(320,150,320,320);
    rect(350+limit/20, random(110, 280), circle, circle);
    rect(350+limit/10, random(110, 280), circle, circle);
    rect(350-limit/20, random(110, 280), circle, circle);
    rect(350-limit/10, random(110, 280), circle, circle);

    //line(130,340,130,420);
    rect(160+limit/20, random(300, 380), circle, circle);
    rect(160+limit/10, random(300, 380), circle, circle);
    rect(160-limit/20, random(300, 380), circle, circle);
    rect(160-limit/10, random(300, 380), circle, circle);

    //line(130,420,320,420);
    rect(random(160, 350), 380+limit/20, circle, circle);
    rect(random(160, 350), 380+limit/10, circle, circle);
    rect(random(160, 350), 380-limit/20, circle, circle);
    rect(random(160, 350), 380-limit/10, circle, circle);
    popMatrix();
  }

  void redmold() {
    limit++;
    i++;
    if (limit>1000) {
      limit--;
      stroke(255);
    };
    if (i>180) i=0;
    if (limit<0) {
      limit=0;
    }
    noFill();
    float circle = random(5, 20);
    pushMatrix();
    translate(260, 40);
    stroke(random(150, 255), 0, 50);
    //line(110,150,290,150);
    ellipse(random(140, 320), 110+limit/20, circle, circle);
    ellipse(random(140, 320), 110+limit/10, circle, circle);
    ellipse(random(140, 320), 110-limit/20, circle, circle);
    ellipse(random(140, 320), 110-limit/10, circle, circle);

    //line(200,150,200,200);
    ellipse(230+limit/20, random(110, 160), circle, circle);
    ellipse(230+limit/10, random(110, 160), circle, circle);
    ellipse(230-limit/20, random(110, 160), circle, circle);
    ellipse(230-limit/10, random(110, 160), circle, circle);

    //line(130,200,270,200);
    ellipse(random(160, 300), 160+limit/20, circle, circle);
    ellipse(random(160, 300), 160+limit/10, circle, circle);
    ellipse(random(160, 300), 160-limit/20, circle, circle);
    ellipse(random(160, 300), 160-limit/10, circle, circle);

    //line(130,200,130,290);
    ellipse(160+limit/20, random(160, 250), circle, circle);
    ellipse(160+limit/10, random(160, 250), circle, circle);
    ellipse(160-limit/20, random(160, 250), circle, circle);
    ellipse(160-limit/10, random(160, 250), circle, circle);

    //line(270,200,270,290);
    ellipse(300+limit/20, random(160, 250), circle, circle);
    ellipse(300+limit/10, random(160, 250), circle, circle);
    ellipse(300-limit/20, random(160, 250), circle, circle);
    ellipse(300-limit/10, random(160, 250), circle, circle);

    //line(320,150,320,320);
    ellipse(350+limit/20, random(110, 280), circle, circle);
    ellipse(350+limit/10, random(110, 280), circle, circle);
    ellipse(350-limit/20, random(110, 280), circle, circle);
    ellipse(350-limit/10, random(110, 280), circle, circle);

    //line(130,340,130,420);
    ellipse(160+limit/20, random(300, 380), circle, circle);
    ellipse(160+limit/10, random(300, 380), circle, circle);
    ellipse(160-limit/20, random(300, 380), circle, circle);
    ellipse(160-limit/10, random(300, 380), circle, circle);

    //line(130,420,320,420);
    ellipse(random(160, 350), 380+limit/20, circle, circle);
    ellipse(random(160, 350), 380+limit/10, circle, circle);
    ellipse(random(160, 350), 380-limit/20, circle, circle);
    ellipse(random(160, 350), 380-limit/10, circle, circle);
    popMatrix();
  }

  void greymold() {
    limit++;
    i++;
    if (limit>1000) {
      limit--;
      stroke(255);
    };
    if (i>180) i=0;
    if (limit<0) {
      limit=0;
    }
    noFill();
    pushMatrix();
    translate(260, 40);
    stroke(random(10, 40), random(10, 40), random(10, 40));
    //line(110,150,290,150);
    beginShape();
    curveVertex(random(140, 320), 110);
    curveVertex(random(140, 320)-limit/20, 110+limit/20);
    curveVertex(random(140, 320)-limit/17, 110-limit/17);
    curveVertex(random(140, 320)-limit, 110+limit);
    endShape();
    beginShape();
    curveVertex(random(140, 320), 110);
    curveVertex(random(140, 320)+limit/20, 110+limit/20);
    curveVertex(random(140, 320)+limit/17, 110-limit/17);
    curveVertex(random(140, 320)+limit, 110+limit);
    endShape();

    //line(200,150,200,200);
    beginShape();
    curveVertex(230, random(110, 160));
    curveVertex(230+limit/20, random(110, 160)-limit/20);
    curveVertex(230-limit/17, random(110, 160)-limit/17);
    curveVertex(230+limit, random(110, 160)-limit);
    endShape();
    beginShape();
    curveVertex(230, random(110, 160));
    curveVertex(230+limit/20, random(110, 160)+limit/20);
    curveVertex(230-limit/17, random(110, 160)+limit/17);
    curveVertex(230+limit, random(110, 160)+limit);
    endShape();

    //line(130,200,270,200);
    beginShape();
    curveVertex(random(160, 300), 160);
    curveVertex(random(160, 300)-limit/20, 160+limit/20);
    curveVertex(random(160, 300)-limit/17, 160-limit/17);
    curveVertex(random(160, 300)-limit, 160+limit);
    endShape();
    beginShape();
    curveVertex(random(160, 300), 160);
    curveVertex(random(160, 300)+limit/20, 160+limit/20);
    curveVertex(random(160, 300)+limit/17, 160-limit/17);
    curveVertex(random(160, 300)+limit, 160+limit);
    endShape();

    //line(130,200,130,290);
    beginShape();
    curveVertex(160, random(160, 250));
    curveVertex(160+limit/20, random(160, 250)-limit/20);
    curveVertex(160-limit/17, random(160, 250)-limit/17);
    curveVertex(160+limit, random(200, 200)-limit);
    endShape();
    beginShape();
    curveVertex(160, random(160, 250));
    curveVertex(160+limit/20, random(160, 250)+limit/20);
    curveVertex(160-limit/17, random(160, 250)+limit/17);
    curveVertex(160+limit, random(160, 250)+limit);
    endShape();

    //line(270,200,270,290);
    beginShape();
    curveVertex(300, random(160, 250));
    curveVertex(300+limit/20, random(160, 250)-limit/20);
    curveVertex(300-limit/17, random(160, 250)-limit/17);
    curveVertex(300+limit, random(160, 250)-limit);
    endShape();
    beginShape();
    curveVertex(300, random(160, 250));
    curveVertex(300+limit/20, random(160, 250)+limit/20);
    curveVertex(300-limit/17, random(160, 250)+limit/17);
    curveVertex(300+limit, random(160, 250)+limit);
    endShape();

    //line(320,150,320,320);
    beginShape();
    curveVertex(350, random(110, 280));
    curveVertex(350+limit/20, random(110, 280)-limit/20);
    curveVertex(350-limit/17, random(110, 280)-limit/17);
    curveVertex(350+limit, random(110, 280)-limit);
    endShape();
    beginShape();
    curveVertex(350, random(110, 280));
    curveVertex(350+limit/20, random(110, 280)+limit/20);
    curveVertex(350-limit/17, random(110, 280)+limit/17);
    curveVertex(350+limit, random(110, 280)+limit);
    endShape();

    //line(130,340,130,420);
    beginShape();
    curveVertex(160, random(300, 380));
    curveVertex(160+limit/20, random(300, 380)-limit/20);
    curveVertex(160-limit/17, random(300, 380)-limit/17);
    curveVertex(160+limit, random(300, 380)-limit);
    endShape();
    beginShape();
    curveVertex(160, random(300, 380));
    curveVertex(160+limit/20, random(300, 380)+limit/20);
    curveVertex(160-limit/17, random(300, 380)+limit/17);
    curveVertex(160+limit, random(300, 380)+limit);
    endShape();

    //line(130,420,320,420);
    beginShape();
    curveVertex(random(160, 350), 380);
    curveVertex(random(160, 350)+limit/20, 380+limit/20);
    curveVertex(random(160, 350)+limit/17, 380-limit/17);
    curveVertex(random(160, 350)+limit, 380+limit);
    endShape();
    beginShape();
    curveVertex(random(160, 350), 380);
    curveVertex(random(160, 350)-limit/20, 380+limit/20);
    curveVertex(random(160, 350)-limit/17, 380-limit/17);
    curveVertex(random(160, 350)-limit, 380+limit);
    endShape();
    popMatrix();

    masterUI();
  }

  void masterUI() {
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

  void masterUIdraw() {
    noStroke();
    fill(mBgColInv, mOpaL);
    ellipse(-90, 384, 300, 300);
    fill(mBgColInv, mOpaR);
    ellipse(1114, 384, 300, 300);
    strokeWeight(3);
    stroke(mBgCol);
    line(10, 384, 30, 364);
    line(10, 384, 30, 404);
    line(1014, 384, 994, 364);
    line(1014, 384, 994, 404);
  }
}

