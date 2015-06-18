class Sketch14 extends EmbeddedSketch {
  void pageShift(int x, int y) {
    if (mouseX < 60 && mouseY > 264 && mouseY < 504) {
      if (mousePressed) {
        slideShow.setCurrentSlide(x);
      }
      tint(255, 100);
    } else {
      tint(255, 50);
    }
    image(btn_LW, 0, 264);
    if (mouseX > 964 && mouseY > 264 && mouseY < 504) {
      if (mousePressed) {
        slideShow.setCurrentSlide(y);
      }
      tint(255, 100);
    } else {
      tint(255, 50);
    }
    image(btn_RW, 964, 264);
    tint(255, 255);
  }


  // * LimJiyoung

  // <IF YOU FOLLOW THE EDGE> is a generative Hanguel typography project with Processing.
  // Each typeface is consists of expanding lines.
  // You can change the direction of expansion by moving cursor left or right across canvas.
  //------------------------------------------------

  PImage img;

  int startX= 40; // startpoint X coordinate
  int stopX = 160; // stoppoint X coordinate
  int startY = 30; // startpoint Y coordinate
  int stopY = 80; // stoppoint Y coordinate
  float X = startX; // current x coordinate
  float Y = startY; // current y coordinate
  float step = 0.05; // moving speed
  float pct = 0.6; // moving ratio
  int i = 0;
  boolean tf = false;

  void setup() {
    size(1064, 768);
    img = loadImage("Instruction.png");
    smooth();
    background(0);
    fill(255);
  }

  void draw() {
    super.draw();
    pushMatrix();
    scale(0.83);
    translate(100, 70);
    stroke(255);
    strokeWeight(0.5);
    image(img, 440, 40, 160, 40);
    if (!tf) {
      if (pct < 1.1) {
        X = startX + ((stopX-startX) * pct);
        Y = startY + ((stopY-startX) * pct);
        pct += step;
      }
      if (pct>1.1) tf = true;
    } else {
      pct -= step;
      if (pct<0) tf = false;
    }
    if (mouseX < width/2) {
      X -= 0.8;
      Y += 0.8;
    } else {
      X += 0.8;
      Y -= 0.8;
    } 
    pushMatrix();
    translate(0, 130);
    ga();
    jang();
    ja();
    ri();
    reul();
    popMatrix();
    pushMatrix();
    translate(50, 180);
    dda();
    ra();
    ga2();
    myun();
    popMatrix();
    fill(10, 0, 0, 5);
    noStroke();
    rect(-1, -1, width+1, height+1);
    stroke(255);

    popMatrix();
    fill(0);
    noStroke();
    rect(0, 0, 100, 768);
    rect(924, 0, 100, 768);
    pageShift(14, 16);
  }

  void keyPressed() {
    if (key == ' ') {
      setup();
    }
  }

  void grid() {
    for (i=0; i<1000; i +=10) {  
      line(i, 0, i, 1000);
      line(0, i, 1000, i);
    }
  }

  void ga() {  
    line(X, Y, 40, 100);
    line(X, Y, 120, 200);
    line(X+60, Y, 180, 200);
    line(X+60, Y, 280, 50);
    //가
  }

  void jang() {
    line(X+200, Y, 240, 100);
    line(X+200, Y, 280, 200);
    line(X+260, Y, 380, 200);
    line(X+260, Y, 480, 50);
    line(X+200, Y, 395, 160);
    //
    line(X+180, Y+210, 280, 220);
    line(X+180, Y+210, 380, 250);
    line(X+220, Y+130, 280, 220);
    line(X+220, Y+130, 380, 250);
    //장
  }

  void ja() {

    line(X+400, Y, 440, 100);
    line(X+400, Y, 480, 200);
    line(X+460, Y, 580, 200);
    line(X+460, Y, 680, 50);
    line(X+400, Y, 595, 160);
    //자
  }

  void ri() {

    line(X+600, Y, 640, 100);
    line(X+600, Y, 640, 150);
    line(X+540, Y+100, 680, 125);
    line(X+540, Y+100, 780, 140);
    line(X+660, Y, 760, 200);
    //리
  }

  void reul() {

    line(X+800, Y, 840, 100);
    line(X+800, Y, 840, 150);
    line(X+740, Y+100, 880, 125);
    line(X+740, Y+100, 980, 140);
    //
    line(X+820, Y+85, 820, 190);
    //
    line(X+800, Y+110, 840, 210);
    line(X+800, Y+110, 840, 260);
    line(X+740, Y+210, 880, 235);
    line(X+740, Y+210, 980, 250);
    //를
  }

  void dda() {

    line(X, Y+250, 40, 400);
    line(X-60, Y+350, 80, 375);
    line(X-60, Y+350, 180, 390);
    line(X+60, Y+250, 100, 400);
    line(X, Y+350, 140, 375);
    line(X, Y+350, 240, 390); 
    line(X+60, Y+250, 180, 450);
    line(X+60, Y+250, 280, 300);
    //따
  }

  void ra() {

    line(X+220, Y+250, 260, 350);
    line(X+220, Y+250, 260, 400);
    line(X+160, Y+350, 300, 375);
    line(X+160, Y+350, 400, 390);
    line(X+260, Y+250, 380, 450);
    line(X+260, Y+250, 480, 300);
    //라
  }

  void myun() {
    line(X+580, Y+310, 680, 320);
    line(X+580, Y+310, 780, 350);
    line(X+620, Y+230, 680, 320);
    line(X+620, Y+230, 780, 350);
    //
    line(X+700, Y+250, 820, 450);
    line(X+700, Y+250, 790, 320);
    line(X+690, Y+280, 770, 380);
    //
    line(X+600, Y+420, 700, 430);
    line(X+600, Y+420, 820, 460);
    //면
  }

  void ga2() {

    line(X+400, Y+250, 440, 350);
    line(X+400, Y+250, 520, 450);
    line(X+460, Y+250, 580, 450);
    line(X+460, Y+250, 680, 300);
    //가
  }
}

