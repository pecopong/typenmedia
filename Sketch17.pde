class Sketch17 extends EmbeddedSketch {
  int mBgCol = 255;
  int mBgColInv = 0;
  int mOpaL = 50;
  int mOpaR = 50;
  
  GuReum gr;
  DoongDoong dd;
  BaRam br;
  SolSol ss; 

  Minim minim;
  AudioInput in; 

  PImage img; 

  float level;
  float x;
  float a; 
  boolean sw = true; 

  void setup() { 
    size(1024, 768);
    frameRate(30);
    smooth(); 
    noFill(); 
    strokeCap(ROUND); 
    gr = new GuReum();
    dd = new DoongDoong(); 
    br = new BaRam();
    ss = new SolSol();

    minim = new Minim(this); 
    in = minim.getLineIn(Minim.MONO, 512); 

    img = loadImage("moongu.png");
  }

  void draw() {
    super.draw();
    pushMatrix();
    background(255, 255, 255);
    stroke(0, 175, 225, 90);
    noFill(); 

    x = sin(a/500)*15 +18; 
    strokeWeight(x);

    if (a < 0.) {
      a = cos(a);
    } else if (a>5000) {
      a =-cos(a);
    }
    if (sw) {
      a = a+1.5;
    } else {
      a = a-3;
    }

    level = in.left.level(); 
    level = map(level, 0, 1, 0, 0.5); 

    //println(level);

    scale(0.768);
    translate(162, -40); 
    gr.display(); 
    dd.display(); 
    br.display();
    ss.display();  

    image(img, width/2-100, 950);
    popMatrix();
    masterUI();
  }


  class BaRam {
    float d = 0;


    void display() {

      //  d = 0.002*mouseX; 
      d += level; 

      //ba
      pushMatrix();
      translate(75, 675);
      rotate(PI*d);
      line(0, 0, 0, 25);
      popMatrix(); 

      pushMatrix();
      translate(75, 700);
      rotate(PI*-d);
      line(0, 0, 25, 0); 
      popMatrix(); 

      pushMatrix();
      translate(100, 700);
      rotate(PI*d);
      arc(0, 0, 50, 50, 0, HALF_PI);
      popMatrix(); 

      pushMatrix();
      translate(100, 700);
      rotate(PI*d);
      arc(0, 0, 50, 50, HALF_PI, PI);
      popMatrix(); 

      pushMatrix();
      translate(200, 725);
      rotate(PI*d);
      arc(0, 0, 50, 50, PI, PI+HALF_PI); 
      popMatrix(); 

      //ram
      pushMatrix();
      translate(350, 675);
      rotate(PI*d);
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI);
      popMatrix(); 

      pushMatrix();
      translate(350, 675);
      rotate(PI*d);
      arc(0, 0, 50, 50, HALF_PI, PI); 
      popMatrix(); 

      pushMatrix();
      translate(325, 675);
      rotate(PI*-d);
      line(0, 0, 25, 0);
      popMatrix(); 

      pushMatrix();
      translate(350, 675);
      rotate(PI*d);
      line(0, 0, 25, 0);
      popMatrix(); 

      pushMatrix();
      translate(450, 700);
      rotate(PI*-d);
      arc(0, 0, 50, 50, PI, PI+HALF_PI); 
      popMatrix();

      pushMatrix();
      translate(425, 725);
      rotate(PI*d);  
      arc(0, 0, 50, 50, HALF_PI, PI);
      popMatrix();

      pushMatrix();
      translate(400, 750);
      rotate(PI*-d);
      arc(0, 0, 50, 50, PI, PI+HALF_PI);
      popMatrix(); 

      pushMatrix();
      translate(400, 750);
      rotate(PI*-d);
      arc(0, 0, 50, 50, 0, HALF_PI); 
      popMatrix(); 

      pushMatrix();
      translate(375, 775);
      rotate(PI*d);
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI);
      popMatrix();
    }
  }

  class DoongDoong {
    float d1 = 0;  
    float d2 = 0; 
    float time; 

    void display() { 
      smooth(); 

      d1 = sin(time++/150)*25; 
      d2 = -sin(time++/200)*25;  

      //doong
      pushMatrix(); 
      translate(0, d1+40); 
      line(600, 225, 625, 225);
      line(625, 225, 650, 225); 
      arc(625, 225, 50, 50, HALF_PI, PI);
      line(625, 250, 650, 250); 
      line(600, 275, 625, 275);
      arc(625, 300, 50, 50, PI+HALF_PI, TWO_PI);
      arc(625, 325, 50, 50, 0, HALF_PI);
      arc(625, 325, 50, 50, HALF_PI, PI);
      arc(625, 325, 50, 50, PI, PI+HALF_PI);
      arc(625, 325, 50, 50, PI+HALF_PI, TWO_PI); 
      popMatrix(); 
      //DOONG2
      pushMatrix();
      translate(250, d2+40);
      line(600, 225, 625, 225);
      line(625, 225, 650, 225); 
      arc(625, 225, 50, 50, HALF_PI, PI);
      line(625, 250, 650, 250); 
      line(600, 275, 625, 275);
      arc(625, 300, 50, 50, PI+HALF_PI, TWO_PI);
      arc(625, 325, 50, 50, 0, HALF_PI);
      arc(625, 325, 50, 50, HALF_PI, PI);
      arc(625, 325, 50, 50, PI, PI+HALF_PI);
      arc(625, 325, 50, 50, PI+HALF_PI, TWO_PI); 
      popMatrix();
    }
  }

  class GuReum {
    float d3 = 0;  
    float d4 = 0; 
    float time; 

    void display() { 
      smooth(); 

      d3 = -sin(time++/150)*25; 
      d4 = sin(time++/200)*25; 

      //gu
      pushMatrix();
      translate(0, d3+40);
      arc(125, 250, 50, 50, PI+HALF_PI, TWO_PI);
      line(100, 275, 125, 275);
      arc(125, 300, 50, 50, PI+HALF_PI, TWO_PI); 
      popMatrix(); 

      //reum
      pushMatrix(); 
      translate(0, d4+40); 
      arc(375, 225, 50, 50, PI+HALF_PI, TWO_PI);
      arc(375, 225, 50, 50, HALF_PI, PI); 
      line(350, 225, 375, 225);
      line(375, 225, 400, 225);
      line(350, 275, 375, 275);
      line(375, 275, 400, 275);
      arc(400, 300, 50, 50, HALF_PI, PI);
      arc(375, 325, 50, 50, PI, PI+HALF_PI);
      arc(375, 325, 50, 50, 0, HALF_PI); 
      arc(350, 350, 50, 50, PI+HALF_PI, TWO_PI);
      popMatrix();
    }
  }


  class SolSol {
    float d = 0;


    void display() {

      //  d = 0.002*mouseX; 
      d -= level; 
      // println(d);
      //SOL
      pushMatrix();
      translate(625, 675);
      rotate(PI*d);  
      arc(0, 0, 50, 50, PI, PI+HALF_PI);
      popMatrix();

      pushMatrix();
      translate(625, 675);
      rotate(PI*d);  
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI); 
      popMatrix(); 

      pushMatrix();
      translate(650, 700);
      rotate(PI*d);
      arc(0, 0, 50, 50, HALF_PI, PI);
      popMatrix();

      pushMatrix();
      translate(625, 775);
      rotate(PI*-d);
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI);
      popMatrix(); 

      pushMatrix();
      translate(625, 775);
      rotate(PI*d);
      arc(0, 0, 50, 50, HALF_PI, PI); 
      popMatrix(); 

      pushMatrix();
      translate(600, 775);
      rotate(PI*-d);
      line(0, 0, 25, 0);
      popMatrix(); 

      pushMatrix();
      translate(625, 775);
      rotate(PI*d);
      line(0, 0, 25, 0);
      popMatrix(); 

      //SOL2
      pushMatrix();
      translate(875, 675);
      rotate(PI*-d);  
      arc(0, 0, 50, 50, PI, PI+HALF_PI);
      popMatrix();

      pushMatrix();
      translate(875, 675);
      rotate(PI*d);  
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI); 
      popMatrix(); 

      pushMatrix();
      translate(900, 700);
      rotate(PI*-d);
      arc(0, 0, 50, 50, HALF_PI, PI);
      popMatrix();

      pushMatrix();
      translate(875, 775);
      rotate(PI*d);
      arc(0, 0, 50, 50, PI+HALF_PI, TWO_PI);
      popMatrix(); 

      pushMatrix();
      translate(875, 775);
      rotate(PI*-d);
      arc(0, 0, 50, 50, HALF_PI, PI); 
      popMatrix(); 

      pushMatrix();
      translate(850, 775);
      rotate(PI*d);
      line(0, 0, 25, 0);
      popMatrix(); 

      pushMatrix();
      translate(875, 775);
      rotate(PI*-d);
      line(0, 0, 25, 0);
      popMatrix();
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
    if (nextAvailable) {
      if (mouseY < 506 && mouseY > 268) {
        if (mouseX < 60) { // left click (previous sketch)
          mOpaL = 100;
          if (mousePressed) {
            if (sketchNow > 0) {
              sketchNow --;
              nextAvailable = false;
            } else {
              sketchNow = maxSketchNum;
              nextAvailable = false;
            }
          }
        } else if (mouseX > 964) { //right click (next sketch)
          mOpaR = 100;
          if (mousePressed) {
            reset = true;
            removeadd = true;
          }
        } else {
          mOpaL = 50;
          mOpaR = 50;
        }
      }
    }
  }
}

