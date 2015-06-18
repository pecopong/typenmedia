class Sketch12 extends EmbeddedSketch {
  void pageShift(int x, int y) {
    if (mouseX < 60 && mouseY > 264 && mouseY < 504) {
      if(mousePressed) {
        slideShow.setCurrentSlide(x);
      }
      tint(255, 100);
    } else {
      tint(255, 50); 
    }
    image(btn_LW, 0, 264);
    if (mouseX > 964 && mouseY > 264 && mouseY < 504) {
      if(mousePressed) {
        slideShow.setCurrentSlide(y);
      }
      tint(255, 100);
    } else {
      tint(255, 50);
    }
    image(btn_RW, 964, 264);
    tint(255, 255);
  }

  int rectPos = 200;
  float rectSize = 30;
  float edge = 0;
  int a = 0;
  float s = 0;
  float f = 1;

  String ss = "Left Click";
  String sss = "Drag";
  String ssss = "Right Click";
  String sssss = "Space Bar";


  void setup() {
    size(1024, 768);
  }

  void draw() {
    super.draw();
    pushMatrix();
    background(0);


    textSize(15);
    text(ss, 450, 640);
    text(sss, 450, 660);
    text(ssss, 450, 680);
    text(sssss, 450, 700);

    if (mouseY > 0) {
      scale(1, f);
    }  


    if (mousePressed) {
      if (mouseButton == LEFT) {
        edge = 10 + 5 * sin(s);
        s = s + 0.1;
      } else if (mouseButton == RIGHT) {
        rectSize= rectSize + random(-1.1, 1.1);
        frameRate(20);
      }
    }

    if (keyPressed) {
      if (key == ' ') {
        edge = 0;
      }
    }
    if (edge > 1) {
      a = 1;
      fill(252-mouseX/5, 150+mouseY/7, 241);
    }

    if (edge == 0) {
      a = 0;
      fill(140, 140, 140);
    }

    rect(rectPos +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 2*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 3*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos +mouseX/15*a, rectPos+ 2*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 2*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ 2*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);

    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos- rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos+ 2*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos+ 4*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 7*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);

    rect(rectPos+ rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 2*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 4*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 5*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 4*rectSize +mouseX/15*a, rectPos+ 7*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ 8*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 2*rectSize +mouseX/15*a, rectPos+ 9*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 2*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 3*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 4*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 5*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 6*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);

    rect(rectPos + 12*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 13*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 14*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 15*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 14*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 13*rectSize +mouseX/15*a, rectPos+ 2*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 12*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 13*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 14*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos + 15*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);

    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos- rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 2*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 3*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 4*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 19*rectSize +mouseX/15*a, rectPos+ rectSize +mouseY/15*a, rectSize, rectSize, edge);

    rect(rectPos+ 15*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 16*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 17*rectSize +mouseX/15*a, rectPos+ 6*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 7*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 8*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 18*rectSize +mouseX/15*a, rectPos+ 9*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 17*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 16*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 15*rectSize +mouseX/15*a, rectPos+ 10*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 14*rectSize +mouseX/15*a, rectPos+ 9*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 14*rectSize +mouseX/15*a, rectPos+ 8*rectSize +mouseY/15*a, rectSize, rectSize, edge);
    rect(rectPos+ 14*rectSize +mouseX/15*a, rectPos+ 7*rectSize +mouseY/15*a, rectSize, rectSize, edge);

    noStroke();
    popMatrix();
    pageShift(12, 14);
  }

  void mouseDragged() {
    f = 0.003 * mouseY;
  }

  void mouseReleased() {
    rectSize = 30;  
    f = 1;
  }
}

