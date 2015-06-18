class Sketch2 extends EmbeddedSketch {
  void pageShift(int x, int y) {
    if (mouseX < 60 && mouseY > 264 && mouseY < 504) {
      if (mousePressed) {
        slideShow.setCurrentSlide(x);
      }
      tint(255, 100);
    } else {
      tint(255, 50);
    }
    image(btn_LB, 0, 264);
    if (mouseX > 964 && mouseY > 264 && mouseY < 504) {
      if (mousePressed) {
        slideShow.setCurrentSlide(y);
      }
      tint(255, 100);
    } else {
      tint(255, 50);
    }
    image(btn_RB, 964, 264);
    tint(255, 255);
  }

  ArrayList<Jaso> jasos = new ArrayList<Jaso>();
  ArrayList<Line> lines = new ArrayList<Line>();

  PImage img;
  PImage img02;

  float x;
  float y;
  float x2;
  float y2;
  float x3;
  float margin;
  float margin2;


  int i = 0;
  int jul = 5;

  void setup() {
    size(1024, 768);

    margin = 50;
    x = margin;
    y = margin;

    margin2 = 85;
    x2 = margin2;
    y2 = margin2;

    img = loadImage ( "KKK.png" );
    img02 = loadImage ("KHK.png");
  } 


  void draw() {
    super.draw();
    background(255);
    stroke(0);
    strokeWeight(9);

    image(img, 0, 0);
    image(img02, 0+x3, 0);

    for (int i = 0; i < jasos.size (); i++) {
      Jaso j = jasos.get(i);
      j.display();
    }

    for (int e = 0; e <lines.size (); e++) {
      Line l = lines.get(e);
      l.display();
    }
    pageShift(2, 4);
  }


  void keyPressed() {
    if (key == ' ') {
      jasos = new ArrayList<Jaso>();
      lines = new ArrayList<Line>();
      x = margin;
      y = margin;
      i = -1;

      x2 = margin2;
      y2 = margin2;

      x3 += 1000;
    } //Jaso,Line Reset


    jasos.add( new Jaso(key, x, y) );
    lines.add( new Line(key, x2, y2) );

    if (i == 0) {
      x += 42;
    } else if (i == 1) {
      y += 70;
    } else if (i == 2) {
      x -= 42;
      y += 50;
    } // Jaso cho-joong-jong sung typing

    if (jul == 5) {
      x2 += 25;
      y2 += 40;
    } // line spacing



    if (y > height -150) {
      x += 150;
      y = margin;
    } //Jaso margin call

    if (x2 > width ) {
      y2 = margin2;
      x2 = margin2+25;
    } // Line margin call

    i++;
    if (i > 2) i = 0;

    jul++;
    if (jul > 6) jul = 5;
  }

  class Jaso {

    PShape letter1;  //ㄱ
    PShape letter2;  //ㄴ
    PShape letter3;  //ㄷ
    PShape letter4;  //ㄹ
    PShape letter5;  //ㅁ
    PShape letter6;  //ㅂ
    PShape letter7;  //ㅅ
    PShape letter8;  //ㅇ
    PShape letter9;  //ㅈ
    PShape letter10; //ㅊ
    PShape letter11; //ㅋ
    PShape letter12; //ㅌ
    PShape letter13; //ㅍ
    PShape letter14; //ㅎ
    PShape letter15; //ㅏ
    PShape letter16; //ㅑ
    PShape letter17; //ㅓ
    PShape letter18; //ㅕ
    PShape letter19; //ㅗ
    PShape letter20; //ㅛ
    PShape letter21; //ㅜ
    PShape letter22; //ㅠ
    PShape letter23; //ㅡ
    PShape letter24; //ㄲ
    PShape letter25; //ㅆ
    PShape letter26; //ㅉ
    PShape letter27; //line

    char ch;
    float x;
    float y;
    float w;
    float h;

    float x2; 
    float y2;

    Jaso(char _ch, float _x, float _y) {
      ch = _ch;
      x = _x;
      y = _y;

      w = random(10, 30);
      h = random(10, 30);
    }


    void display () {
      if (ch == 'r') {
        letter1 = loadShape("001.svg");
        shape(letter1, x, y, 100, 100);
      }

      if (ch == 's') {
        letter2 = loadShape("002.svg");
        shape(letter2, x, y, 100, 100);
      }

      if (ch == 'e') {
        letter3 = loadShape("003.svg");
        shape(letter3, x, y, 100, 100);
      }

      if (ch == 'f') {
        letter4 = loadShape("004.svg");
        shape(letter4, x, y, 100, 100);
      }

      if (ch == 'a') {
        letter5 = loadShape("005.svg");
        shape(letter5, x, y, 100, 100);
      }

      if (ch == 'q') {
        letter6 = loadShape("006.svg");
        shape(letter6, x, y, 100, 100);
      }

      if (ch == 't') {
        letter7 = loadShape("007.svg");
        shape(letter7, x, y, 100, 100);
      }

      if (ch == 'd') {
        letter8 = loadShape("008.svg");
        shape(letter8, x, y, 100, 100);
      }

      if (ch == 'w') {
        letter9 = loadShape("009.svg");
        shape(letter9, x, y, 100, 100);
      }

      if (ch == 'c') {
        letter10 = loadShape("010.svg");
        shape(letter10, x, y, 100, 100);
      }

      if (ch == 'z') {
        letter11 = loadShape("011.svg");
        shape(letter11, x, y, 100, 100);
      }

      if (ch == 'x') {
        letter12 = loadShape("012.svg");
        shape(letter12, x, y, 100, 100);
      }

      if (ch == 'v') {
        letter13 = loadShape("013.svg");
        shape(letter13, x, y, 100, 100);
      }

      if (ch == 'g') {
        letter14 = loadShape("014.svg");
        shape(letter14, x, y, 100, 100);
      }

      if (ch == 'k') {
        letter15 = loadShape("015.svg");
        shape(letter15, x-5, y+30, 100, 100);
      }

      if (ch == 'i') {
        letter16 = loadShape("016.svg");
        shape(letter16, x-5, y+30, 100, 100);
      }

      if (ch == 'j') {
        letter17 = loadShape("017.svg");
        shape(letter17, x-20, y, 100, 100);
      }

      if (ch == 'u') {
        letter18 = loadShape("018.svg");
        shape(letter18, x-20, y, 100, 100);
      }    

      if (ch == 'h') {
        letter19 = loadShape("019.svg");
        shape(letter19, x-20, y+35, 100, 100);
      }    

      if (ch == 'y') {
        letter20 = loadShape("020.svg");
        shape(letter20, x-20, y+35, 100, 100);
      }  

      if (ch == 'n') {
        letter21 = loadShape("021.svg");
        shape(letter21, x-20, y+35, 100, 100);
      }

      if (ch == 'b') {
        letter22 = loadShape("022.svg");
        shape(letter22, x-20, y+35, 100, 100);
      }

      if (ch == 'm') {
        letter23 = loadShape("023.svg");
        shape(letter23, x-20, y+35, 100, 100);
      }

      if (ch == 'R') {
        letter24 = loadShape("ㄲ.svg");
        shape(letter24, x, y, 100, 100);
      } 

      if (ch == 'T') {
        letter25 = loadShape("ㅆ.svg");
        shape(letter25, x, y, 100, 100);
      }    

      if (ch == 'W') {
        letter26 = loadShape("ㅉ.svg");
        shape(letter26, x, y, 100, 100);
      }
    }
  }

  class Line {

    PShape line01; //line 
    PShape line02; //line2
    PShape line03; //main line

    char chr;
    float offsetx;
    float offsety;
    float offsetw;
    float offseth;

    Line(char _chr, float _offsetx, float _offsety) {
      chr = _chr;
      offsetx = _offsetx+30;
      offsety = _offsety;

      offsetw = random(10, 30);
      offseth = random(10, 30);
    }





    void display () {

      if (chr == '[') {
        line01 = loadShape("line.svg");
        shape(line01, offsetx, offsety, 100, 800);
      } 
      if (chr == ']') {
        line02 = loadShape("line02.svg");
        shape(line02, offsetx, offsety-350, 100, 800);
      }
    }
  }
}

