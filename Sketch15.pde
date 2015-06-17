class Sketch15 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  /*---------------------------------------
   
   2015/06/11
   
   by Choel Jun Lim
   
   Only one arc type.
   3bulsik hangle type system.
   
   You can make hangle with animation.
   
   ---------------------------------------*/

  ArrayList<Gulja> guljas = new ArrayList<Gulja>();

  float strokeSize = 10;

  int num = 452;

  int xpos;

  //unit animation
  float x1 = 0;
  float x2 = 0;
  float x3 = 0;
  float x4 = 0;

  float off = 0;

  float halfpi = HALF_PI;

  //circle_uint
  float cx;
  float cy;
  float cx2;
  float cy2;
  float cx3;
  float cy3;
  float cx4;
  float cy4;

  float centerX = 100;
  float centerY = 50;
  float radius;
  float angle;
  //

  PImage img;
  //PImage img2;

  int guideOpacity = 100;

  int img_xp = 50;

  int size = 100;
  //회전속도
  float speed = 0.06;

  //gird
  int x;
  int y;

  void setup() {
    size(1024, 768);
    radius = 50;

    size = 100;

    x = width/10;
    y = height/10;

    img = loadImage("keyboard_lcj-01.png");
    guljas.add(new Gulja(xpos));
  }

  void draw() {
    super.draw();
    background(0);

    //keyboard image
    image(img, 0, 538, 1024, 230);

    guideLine(xpos+200);

    pushMatrix();
    translate(120, 50);
    for (int i = 0; i < guljas.size (); i++) {
      Gulja c = guljas.get(i); 
      c.gulja();
      Gulja u = guljas.get(guljas.size()-1); 
      u.update(key);
    }

    popMatrix();
    masterUI();
  }

  class Gulja {

    float[] draw;
    float[] erase;

    //stlye
    float strokeColor = 255;
    float circleColor = 200;
    float strokeOpacity = 255;
    float circleOpacity = 0;
    float fillWhite = 0;
    float fillColor = 0;

    float xpos;
    char ch;

    Gulja(int _x) {

      draw = new float[num];
      erase = new float[num];
      for (int i = 0x100; i <= 0x1C3; i++) {
        draw[i] = 0;
        erase[i] = 1;
      }

      xpos = _x;
    }


    void gulja() {    

      pushMatrix();  
      translate(xpos, 0); 

      pushMatrix();  
      translate(50, 200); 
      drawJongsung(draw[0x1A8], draw[0x1A9], draw[0x1AA], draw[0x1AB], draw[0x1AE], draw[0x1AC], draw[0x1AF], draw[0x1B7], draw[0x1B8], draw[0x1B9], draw[0x1BA], draw[0x1BB], draw[0x1BC], draw[0x1BD], draw[0x1BE], draw[0x1BF], draw[0x1C0], draw[0x1C1], draw[0x1C2]);
      popMatrix();

      pushMatrix();  
      translate(0, 0); 
      drawJungsung(draw[0x161], draw[0x162], draw[0x163], draw[0x164], draw[0x165], draw[0x166], draw[0x167], draw[0x168], draw[0x169], draw[0x16A], draw[0x16B], draw[0x16C], draw[0x16D], draw[0x16E], draw[0x16F], draw[0x170], draw[0x171], draw[0x172], draw[0x173], draw[0x174], draw[0x175], draw[0x176]);
      popMatrix();

      pushMatrix();  
      translate(0, 0); 
      drawChosung(draw[0x100], draw[0x101], draw[0x102], draw[0x103], draw[0x104], draw[0x105], draw[0x106], draw[0x107], draw[0x108], draw[0x109], draw[0x10A], draw[0x10B], draw[0x10C], draw[0x10D], draw[0x10E], draw[0x10F], draw[0x110], draw[0x111], draw[0x112]);
      popMatrix();

      pushMatrix();  
      translate(50, 100); 
      drawGlyph(draw[0x113], draw[0x114], draw[0x115], draw[0x116]);
      popMatrix();

      popMatrix();
    }


    void drawChosung(float on0, float on1, float on2, float on3, float on4, float on5, float on6, float on7, float on8, float on9, float onA, float onB
      , float onC, float onD, float onE, float onF, float on10, float on11, float on12) {

      drawJaso(0, 0, 0, 0, 2, 0, 0, 0, 0, on0);//ㄱ
      drawJaso(0, 0, 0, 2, 2, 0, 0, 0, 0, on1);//ㄲ
      drawJaso(0, 0, 0, 0, 1, 0, 0, 0, 0, on2);//ㄴ
      drawJaso(0, 0, 0, 0, 4, 0, 0, 1, 0, on3);//ㄷ
      drawJaso(0, 0, 0, 4, 4, 0, 1, 1, 0, on4);//ㄸ
      drawJaso(0, 2, 0, 0, 3, 0, 0, 1, 0, on5);//ㄹ
      drawJaso(0, 0, 0, 0, 4, 1, 0, 2, 3, on6);//ㅁ
      drawJaso(0, 0, 0, 0, 1, 0, 2, 6, 0, on7);//ㅂ
      drawJaso(0, 0, 0, 0, 1, 1, 2, 6, 6, on8);//ㅃ
      drawJaso(0, 0, 0, 0, 4, 1, 0, 0, 0, on9);//ㅅ
      drawJaso(0, 0, 0, 4, 4, 1, 0, 0, 0, onA);//ㅆ
      drawJaso(0, 0, 0, 0, 3, 2, 0, 1, 4, onB);//ㅇ
      drawJaso(0, 0, 0, 0, 2, 0, 0, 3, 1, onC);//ㅈ
      drawJaso(0, 0, 0, 2, 2, 0, 3, 3, 1, onD);//ㅉ
      drawJaso(0, 4, 0, 0, 2, 0, 0, 3, 1, onE);//ㅊ
      drawJaso(0, 2, 0, 0, 2, 0, 0, 0, 0, onF);//ㅋ
      drawJaso(0, 4, 0, 0, 4, 0, 0, 1, 0, on10);//ㅌ
      drawJaso(0, 0, 0, 0, 2, 3, 0, 4, 1, on11);//ㅍ
      drawJaso(0, 4, 1, 0, 3, 2, 0, 1, 4, on12);//ㅎ
    }

    void drawJongsung(float on0, float on1, float on2, float on3, float on4, float on5, float on6, float on7, float on8, float on9, float onA, float onB
      , float onC, float onD, float onE, float onF, float on10, float on11, float on12) {

      drawJaso(0, 0, 0, 0, 0, 0, 0, 2, 0, on0);//ㄱ
      drawJaso(0, 0, 0, 0, 0, 0, 2, 2, 0, on1);//ㄲ
      drawJaso(0, 0, 0, 0, 0, 0, 2, 3, 2, on2);//ㄱㅅ

      drawJaso(0, 0, 0, 0, 0, 0, 0, 1, 0, on3);//ㄴ
      drawJaso(0, 0, 0, 0, 4, 0, 0, 1, 0, on4);//ㄷ
      drawJaso(0, 0, 0, 0, 2, 0, 1, 3, 1, on5);//ㄴㅈ
      drawJaso(0, 2, 0, 0, 3, 0, 0, 1, 0, on6);//ㄹ
      drawJaso(0, 0, 0, 0, 4, 1, 0, 2, 3, on7);//ㅁ
      drawJaso(0, 0, 0, 0, 1, 0, 2, 6, 0, on8);//ㅂ
      drawJaso(0, 0, 0, 0, 1, 0, 2, 6, 1, on9);//ㅂㅅ
      drawJaso(0, 0, 0, 0, 0, 0, 0, 4, 1, onA);//ㅅ
      drawJaso(0, 0, 0, 0, 0, 0, 4, 4, 1, onB);//ㅆ
      drawJaso(0, 0, 0, 0, 3, 2, 0, 1, 4, onC);//ㅇ
      drawJaso(0, 0, 0, 0, 2, 0, 0, 3, 1, onD);//ㅈ

      drawJaso(0, 4, 0, 0, 2, 0, 0, 3, 1, onE);//ㅊ
      drawJaso(0, 0, 0, 0, 2, 0, 0, 2, 0, onF);//ㅋ
      drawJaso(0, 4, 0, 0, 4, 0, 0, 1, 0, on10);//ㅌ
      drawJaso(0, 0, 0, 0, 2, 3, 0, 4, 1, on11);//ㅍ
      drawJaso(0, 4, 1, 0, 3, 2, 0, 1, 4, on12);//ㅎ
    }

    void drawJungsung(float on0, float on1, float on2, float on3, float on4, float on5, float on6, float on7, float on8, float on9, float onA, float onB
      , float onC, float onD, float onE, float onF, float on10, float on11, float on12, float on13, float on14, float on15) {

      drawMoum(0, 0, 1, 0, 3, 0, 0, 0, 0, on0);//
      drawMoum(0, 0, 1, 4, 3, 2, 0, 0, 0, on1);//
      drawMoum(1, 0, 1, 0, 3, 0, 0, 0, 0, on2);//
      drawMoum(1, 4, 1, 4, 3, 2, 0, 0, 0, on3);//
      drawMoum(0, 0, 4, 0, 2, 0, 0, 0, 0, on4);//
      drawMoum(0, 0, 4, 4, 2, 2, 0, 0, 0, on5);//
      drawMoum(4, 0, 4, 0, 2, 0, 0, 0, 0, on6);//
      drawMoum(4, 4, 4, 4, 2, 2, 0, 0, 0, on7);//
      drawMoum(0, 0, 0, 0, 0, 0, 4, 1, 0, on8);//
      drawMoum(0, 0, 1, 0, 3, 0, 4, 1, 0, on9);//
      drawMoum(0, 0, 1, 4, 3, 2, 4, 1, 0, onA);//
      drawMoum(0, 0, 2, 0, 0, 0, 4, 1, 0, onB);//
      drawMoum(0, 0, 0, 0, 0, 0, 4, 1, 1, onC);//
      drawMoum(0, 0, 0, 0, 0, 0, 2, 3, 0, onD);//
      drawMoum(0, 0, 4, 0, 2, 0, 2, 3, 0, onE);//
      drawMoum(0, 0, 4, 4, 2, 2, 2, 3, 0, onF);//
      drawMoum(0, 0, 2, 0, 0, 0, 2, 3, 0, on10);//
      drawMoum(0, 0, 0, 0, 0, 0, 2, 3, 3, on11);//
      drawMoum(0, 0, 0, 0, 0, 0, 0, 4, 0, on12);//
      drawMoum(0, 0, 2, 0, 0, 0, 0, 4, 0, on13);//
      drawMoum(0, 0, 2, 0, 0, 0, 0, 0, 0, on14);//
    }
    void drawGlyph(float on1, float on2, float on3, float on4) {
      glyph(5, 6, 0, 6, 5, 0, 0, 0, 0, on1);//*
      glyph(1, 3, 0, 4, 2, 0, 0, 0, 0, on2);//x
      glyph(0, 3, 0, 4, 0, 0, 0, 0, 0, on3);//~
      glyph(5, 6, 0, 0, 0, 0, 0, 0, 0, on4);//v
    }

    void drawJaso(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, float on) {

      drawUnit(1, 1, a1, on); 
      drawUnit(2, 1, a2, on); 
      drawUnit(3, 1, a3, on);

      drawUnit(1, 2, a4, on);
      drawUnit(2, 2, a5, on);    
      drawUnit(3, 2, a6, on);

      drawUnit(1, 3, a7, on);
      drawUnit(2, 3, a8, on);
      drawUnit(3, 3, a9, on);
    }

    void drawMoum(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, float on) {

      drawUnit(4, 1, a1, on); 
      drawUnit(5, 1, a2, on); 

      drawUnit(4, 2, a3, on);
      drawUnit(5, 2, a4, on);

      drawUnit(4, 3, a5, on);    
      drawUnit(5, 3, a6, on);

      drawUnit(2, 4, a7, on);
      drawUnit(3, 4, a8, on);
      drawUnit(4, 4, a9, on);
    }
    void glyph(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, float on) {

      drawUnit(1, 2, a1, on);
      drawUnit(2, 2, a2, on);    
      drawUnit(3, 2, a3, on);

      drawUnit(1, 3, a4, on);
      drawUnit(2, 3, a5, on);
      drawUnit(3, 3, a6, on);

      drawUnit(1, 4, a7, on);
      drawUnit(2, 4, a8, on);
      drawUnit(3, 4, a9, on);
    }

    void drawUnit(float xp, float yp, int a, float on) {

      //x line, y line, halfpi
      if (a == 0) {
        x1 = off;
        x2 = off;
        x3 = off;
        x4 = off;
      } else if (a == 1) {
        x1 = on;
        x2 = off;
        x3 = off;
        x4 = off;
      } else if (a == 2) {
        x1 = off;
        x2 = on;
        x3 = off;
        x4 = off;
      } else if (a == 3) {
        x1 = off;
        x2 = off;
        x3 = on;
        x4 = off;
      } else if (a == 4) {
        x1 = off;
        x2 = off;
        x3 = off;
        x4 = on;
      } else if (a == 5) {
        x1 = on; 
        x2 = on;
        x3 = off;
        x4 = off;
      } else if (a == 6) {
        x1 = off;
        x2 = off;
        x3 = on;
        x4 = on;
      } else if (a == 7) {
        x1 = off;
        x2 = on;
        x3 = on;
        x4 = off;
      } else if (a == 8) {
        x1 = on;
        x2 = off;
        x3 = off;
        x4 = on;
      } else if (a == 9) {
        x1 = on;
        x2 = on;
        x3 = on;
        x4 = off;
      } else if (a == 10) {
        x1 = on;
        x2 = on;
        x3 = off;
        x4 = on;
      } else if (a == 11) {
        x1 = on;
        x2 = off;
        x3 = on;
        x4 = on;
      } else if (a == 12) {
        x1 = off;
        x2 = on;
        x3 = on;
        x4 = on;
      } else if (a == 13) {
        x1 = on;
        x2 = on;
        x3 = on;
        x4 = on;
      } 

      //drawUnit
      pushMatrix();
      stroke(strokeColor, strokeOpacity);
      strokeWeight(strokeSize);
      fill(fillColor, fillWhite);

      arc(width*10/x + xp*50-50, height*5/y + yp*50-50, size, size, HALF_PI, HALF_PI +x1 );
      arc(width*5/x + xp*50-50, height*10/y + yp*50-50, size, size, HALF_PI+PI, HALF_PI+PI +x2 );
      arc(width*10/x + xp*50-50, height*10/y + yp*50-50, size, size, PI, PI +x3);
      arc(width*5/x + xp*50-50, height*5/y + yp*50-50, size, size, TWO_PI, TWO_PI +x4);

      noStroke();
      popMatrix();

      //circle Unit
      cx = centerX + cos(x1+HALF_PI)*radius;
      cy = centerY + sin(x1+HALF_PI)*radius;

      cx2 = centerX + cos(x2+PI+HALF_PI)*radius;
      cy2 = centerY + sin(x2+PI+HALF_PI)*radius;

      cx3 = centerX + cos(x3+PI)*radius;
      cy3 = centerY + sin(x3+PI)*radius;

      cx4 = centerX + cos(x4)*radius;
      cy4 = centerY + sin(x4)*radius;

      pushMatrix();
      fill(circleColor, circleOpacity*x1);
      noStroke();
      ellipse(cx + width*10/x + xp*50 - 150, cy + height*5/y + yp*50 - 100, strokeSize, strokeSize);
      noFill();
      stroke(255, strokeOpacity);
      popMatrix();

      pushMatrix();
      fill(circleColor, circleOpacity*x2);
      noStroke();
      ellipse(cx2 + width*5/x + xp*50 - 150, cy2 + height*10/y + yp*50 - 100, strokeSize, strokeSize);
      noFill();
      stroke(255, strokeOpacity);
      popMatrix();

      pushMatrix();
      fill(circleColor, circleOpacity*x3);
      noStroke();
      ellipse(cx3 + width*10/x + xp*50 - 150, cy3 + height*10/y + yp*50 - 100, strokeSize, strokeSize);
      noFill();
      stroke(255, strokeOpacity);
      popMatrix();

      pushMatrix();
      fill(circleColor, circleOpacity*x4);
      noStroke();
      ellipse(cx4 + width*5/x + xp*50 - 150, cy4 + height*5/y + yp*50 - 100, strokeSize, strokeSize);
      noFill();
      stroke(255, strokeOpacity);
      popMatrix();
    }

    void update(char _ch) {

      ch = _ch;
      for (int i = 0x100; i <= 0x1C3; i++) {
        //erase

        draw[i] = lerp(draw[i], -PI, speed*erase[i]);
        //draw
        draw[i] = lerp(draw[i], halfpi, speed);
      }

      if (ch == 'k') {
        //ㄱ
        for (int i = 0x100; i <= 0x159; i++) {
          if (erase[0x101] == 1) {
            erase[0x101] = 1;
            erase[0x100] = 0;
            erase[i] = 1;
          } else if (erase[0x100] == 0) {     
            erase[0x101] = 0;
            //erase[0x100] = 0;
            erase[i] = 1;
          }
        }
      }
      if (ch == 'K') {
        //ㄲ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x101] = 0;
          erase[i] = 1;
        }
      }

      if (ch == 'h') {
        //ㄴ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x102] = 0;
          erase[i] = 1;
        }
      }

      if (ch == 'u') {
        //ㄷ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x103] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'U') {
        //ㄸ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x104] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'y') {
        //ㄹ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x105] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'i') {
        //ㅁ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x106] = 0;
          erase[i] = 1;
        }
      }
      if (ch == ';') {
        //ㅂ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x107] = 0;
          erase[i] = 1;
        }
      }
      if (ch == ':') {
        //ㅃ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x108] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'n') {
        //ㅅ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x109] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'N') {
        //ㅆ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x110A] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'j') {
        //o
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x10B] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'l') {
        //ㅈ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x10C] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'L') {
        //ㅉ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x10D] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'o') {
        //ㅉ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x10E] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '0') {
        //ㅋ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x10F] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '"') {
        //ㅌ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x110] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'p') {
        //ㅍ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x111] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'm') {
        //ㅎ
        for (int i = 0x100; i <= 0x159; i++) {
          erase[0x112] = 0;
          erase[i] = 1;
        }
      }


      //중성

      if (ch == 'f') {
        //ㅏ
        for (int i = 0x113; i <= 0x176; i++) {
          if (erase[0x169] == 0) {    
            erase[0x161] = 0;
            erase[i] = 1;
            erase[0x169] = 0;
          } else {
            erase[0x161] = 0;
            erase[i] = 1;
          }
        }
      }
      if (ch == 'r') {
        //ㅐ
        for (int i = 0x113; i <= 0x176; i++) {    
          if (erase[0x169] == 0) {
            erase[0x162] = 0;
            erase[i] = 1;
            erase[0x169] = 0;
          } else {
            erase[0x162] = 0;
            erase[i] = 1;
          }
        }
      }
      if (ch == '6') {
        //ㅑ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x163] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'G') {
        //ㅒ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x164] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 't') {
        //ㅓ
        for (int i = 0x113; i <= 0x176; i++) {    
          if (erase[0x16E] == 0) {
            erase[0x165] = 0;
            erase[i] = 1;
            erase[0x16E] = 0;
          } else {
            erase[0x165] = 0;
            erase[i] = 1;
          }
        }
      }
      if (ch == 'c') {
        //ㅔ
        for (int i = 0x113; i <= 0x176; i++) {    
          if (erase[0x16E] == 0) {
            erase[0x166] = 0;
            erase[i] = 1;
            erase[0x16E] = 0;
          } else {
            erase[0x166] = 0;
            erase[i] = 1;
          }
        }
      }  
      if (ch == 'e') {
        //ㅕ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x167] = 0;
          erase[i] = 1;
        }
      }  
      if (ch == '7') {
        //ㅖ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x168] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'v') {
        //ㅗ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x169] = 0;
          erase[i] = 1;
        }
      }  
      if (ch == '4') {
        //ㅛ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x16D] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'b' || ch == '9') {
        //ㅜ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x16E] = 0;
          erase[i] = 1;
        }
      }    
      if (ch == '5') {
        //ㅠ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x172] = 0;
          erase[i] = 1;
        }
      }    
      if (ch == 'g') {
        //ㅡ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x173] = 0;
          erase[i] = 1;
        }
      }    
      if (ch == '8') {
        //ㅢ
        for (int i = 0x113; i <= 0x176; i++) {
          erase[0x174] = 0;
          erase[i] = 1;
        }
      }    
      if (ch == 'd') {
        //ㅣ
        for (int i = 0x113; i <= 0x176; i++) {    
          if (erase[0x16E] == 0) {
            erase[0x175] = 0;
            erase[i] = 1;
            erase[0x16E] = 0;
          } else if (erase[0x169] == 0) {
            erase[0x175] = 0;
            erase[i] = 1;
            erase[0x169] = 0;
          } else if (erase[0x173] == 0) {
            erase[0x175] = 0;
            erase[i] = 1;
            erase[0x173] = 0;
          } else {
            erase[0x175] = 0;
            erase[i] = 1;
          }
        }
      }    

      //종성
      if (ch == ' ') {
        //clear
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[i] = 1;
        }
      }

      if (ch == 'x') {
        //ㄱ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1A8] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '!') {
        // ㄲ
        for (int i = 0x1A9; i <= 0x1C3; i++) {
          erase[0x1A9] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'V') {
        // ㄱㅅ
        for (int i = 0x1A9; i <= 0x1C3; i++) {
          erase[0x1AA] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 's') {
        // ㄴ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1AB] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'E') {
        // ㄴㅈ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1AC] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'A') {
        // ㄷ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1AE] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'w') {
        // ㄹ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1AF] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'z') {
        // ㅁ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1B7] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '3') {
        // ㅂ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1B8] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'X') {
        // ㅂㅅ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1B9] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'q') {
        // ㅅ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BA] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '2') {
        // ㅆ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BB] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'a') {
        // ㅇ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BC] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '#') {
        // ㅈ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BD] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'Z') {
        // ㅊ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BE] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'C') {
        // ㅋ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1BF] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'W') {
        // ㅌ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1C0] = 0;
          erase[i] = 1;
        }
      }
      if (ch == 'Q') {
        // ㅍ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1C1] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '1') {
        // ㅎ
        for (int i = 0x1A8; i <= 0x1C3; i++) {
          erase[0x1C2] = 0;
          erase[i] = 1;
        }
      }

      //glyph

      if (ch == '*') {
        // *
        for (int i = 0x100; i <= 0x1C3; i++) {
          erase[0x113] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '(') {
        // x
        for (int i = 0x100; i <= 0x1C3; i++) {
          erase[0x114] = 0;
          erase[i] = 1;
        }
      }
      if (ch == ')') {
        // ~
        for (int i = 0x100; i <= 0x1C3; i++) {
          erase[0x115] = 0;
          erase[i] = 1;
        }
      }
      if (ch == '_') {
        // v
        for (int i = 0x100; i <= 0x1C3; i++) {
          erase[0x116] = 0;
          erase[i] = 1;
        }
      }

      //style

      if (ch == '.') {
        // 
        strokeOpacity = 100;
        circleColor = 200;
        circleOpacity = 150;
        fillWhite = 0;
        //strokeSize = 10;
      }
      if (ch == ',') {
        // 
        strokeColor = 255;
        circleOpacity = 0;
        strokeOpacity = 255;
        fillWhite = 0;
        //strokeSize = 10;
      }
      if (ch == '/') {
        // 
        strokeColor = 255;
        circleOpacity = 100;
        //strokeSize = 0;
        strokeOpacity = 150;
        fillColor = 200;
        fillWhite = 200;
      }
    }
  }



  void guideLine(float rect_xpos) {
    rect_xpos = xpos+200;
    strokeWeight(5);
    stroke(255, guideOpacity);
    line(50+rect_xpos, 530, 150 + rect_xpos, 530);
  }



  void keyPressed() {
    boolean a = true;
    boolean size = true;
    int i = guljas.size();

    if (key == CODED) {

      if (keyCode == RIGHT) {
        if (i > 2) {
          a = false;
          //img_xp = 2000;
        } 
        if (i <= 2) {
          a = true;
          img_xp = 2000;
          guljas.add(new Gulja(xpos+200));

          xpos += 200;
        }
      }

      if (keyCode == LEFT) {

        if (i < 1) {
          a = false;
        } 
        if (i <=1) {
          img_xp = 50;
        }
        if (i > 1) {
          a = true;
          guideOpacity = 100;
          guljas.remove(i-1);

          xpos -= 200;
        }
        if (i == 0) {
          a = true;

          guljas.remove(i-1);

          xpos -= 200;
        }
      }
      if (keyCode == UP) {
        strokeSize ++;
      }
      if (keyCode == DOWN) {
        if (strokeSize <= 0) {
          size = false;
        } 
        if (strokeSize > 0) {
          size = true;

          strokeSize --;
        }
      }
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
    stroke(0, 255);
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
            if (sketchNow < maxSketchNum) {
              sketchNow ++;
              nextAvailable = false;
            } else {
              sketchNow = 0;
              nextAvailable = false;
            }
          }
        } else {
          mOpaL = 50;
          mOpaR = 50;
        }
      }
    }
  }
}

