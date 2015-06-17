class Sketch8 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;

  PFont font;

  String s = "* PRESS MOUSE * ";
  String money = "$";

  float plusX = 20;

  float a1 = 0;
  float a2 = 0;
  float a3 = 0;
  float a4 = 0;
  float a5 = 0;
  float a6 = 0;

  float b1 =0;
  float b2 = 0;
  float b3 = 0;
  float b4 = 0;
  float b5 = 0;
  float b6 = 0;
  float b7 = 0;
  float b8 = 0;
  float b9 = 0;
  float b10 = 0;

  float c1=0;
  float c2=0;
  float c3=0;

  float d1 = 0;
  float d2 = 0;
  float d3 = 0;
  float d4 = 0;
  float d5 = 0;
  float d6 = 0;

  float e1 = 0;
  float e2 = 0;
  float e3 = 0;
  float e4 = 0;
  float e5 = 0;
  float e6 = 0;
  float e7 = 0;
  float e8 = 0;
  float e9 = 0;
  float e10 = 0;
  float e11 = 0;

  float f1 = 0;
  float f2 = 0;
  float f3 = 0;

  float g1 = 0;
  float g2 = 0;
  float g3 = 0;
  float g4 = 0;
  float g5 = 0;
  float g6 = 0;
  float g7 = 0;
  float g8 = 0;

  float j1 = 0;
  float j2 = 0;
  float j3 = 0;
  float j4 = 0;
  float j5 = 0;
  float j6 = 0;
  float j7 = 0;
  float j8 = 0;
  float j9 = 0;

  float i1 = 0;
  float i2 = 0;
  float i3 = 0;
  float i4 = 0;
  float i5 = 0;
  float i6 = 0;
  float i7 = 0;
  float i8 = 0;
  float i9 = 0;
  float i10 = 0;
  float i11 = 0;
  float i12 = 0;

  int w1 = 100;
  int w2 = 265;
  int w3 = 430;
  int h1 = 80;
  int h2 = 220;
  int h3 = 360;

  //this is for %;
  float divideB = 11;
  float divideC = 9;
  float divideD = 11;
  float divideE = 3;
  float divideF = 6;
  float divideG = 8;
  float divideH = 8;


  float a = 0;
  float b = 0;
  float c = 0;
  float d = 0;
  float e = 0;
  float f = 0;
  float g = 0;
  float h = 0;
  float j = 0;

  float gapW = 30;
  float gapH = 20;
  float slotW = 155;
  float slotH = 130;
  float x=random(1, 3);
  float y=random(1, 3);





  void setup() {
    size(1024, 768);
    smooth();
    frameRate(12);
    strokeCap(PROJECT);
    font = loadFont("Dance-Floor-50.vlw");
    textFont(font);
    background(0);
  }

  void draw() {
    super.draw();
    pushMatrix();
    translate(160, 0);

    background(0);
    noStroke();


    //White box

    fill(255);
    rect(w1, h1, slotW, slotH);

    fill(b);
    rect(w2, h1, slotW, slotH);

    fill(c);
    rect(w3, h1, slotW, slotH); //or handle

    fill(d);
    rect(w1, h2, slotW, slotH);

    fill(e);
    rect(w2, h2, slotW, slotH);

    fill(f);
    rect(w3, h2, slotW, slotH);

    fill(g);
    rect(w1, h3, slotW, slotH);

    fill(h);
    rect(w2, h3, slotW, slotH);

    fill(j);
    rect(w3, h3, slotW, slotH);

    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        b=255;
      } else {
        b=0;
      }
    }

    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        c=255;
      } else {
        c=0;
      }
    }

    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        d=255;
      } else {
        d=0;
      }
    }


    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        e=255;
      } else {
        e=0;
      }
    }


    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        f=255;
      } else {
        f=0;
      }
    }


    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        g=255;
      } else {
        g=0;
      }
    }


    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        h=255;
      } else {
        h=0;
      }
    }

    if (mousePressed) {
      int i = floor(random(0, 2));

      if (i == 0) {
        j=255;
      } else {
        j=0;
      }
    }





    //jaeum
    noFill();
    strokeWeight(20);

    stroke(0, a1);
    aah1();
    if (mousePressed) {
      if (frameCount%6 == 0) {    
        a1=255;
      } else {
        a1 = 0;
      }
    }

    stroke(0, a2);
    foldA1();
    if (mousePressed) {
      if (frameCount%6 == 1) {
        a2=255;
      } else {
        a2 = 0;
      }
    }

    stroke(0, a3);
    woo1();
    if (mousePressed) {
      if (frameCount%6 == 2) {
        a3=255;
      } else {
        a3 = 0;
      }
    }

    stroke(0, a4);
    circle1();
    if (mousePressed) {
      if (frameCount%6 == 3) {
        a4=255;
      } else {
        a4 = 0;
      }
    }

    stroke(0, a5);
    barA1();
    if (mousePressed) {
      if (frameCount%6 == 4) {
        a5=255;
      } else {
        a5 = 0;
      }
    }

    stroke(0, a6);
    barB1();
    if (mousePressed) {
      if (frameCount%6 == 5) {
        a6=255;
      } else {
        a6 = 0;
      }
    }




    //2

    stroke(0, b1);
    uh2();
    if (mousePressed) {
      if (frameCount%divideC == 0) {
        b1=255;
      } else {
        b1 = 0;
      }
    }

    stroke(0, b2);
    foldA2();
    if (mousePressed) {
      if (frameCount%divideC == 1) {
        b2=255;
      } else {
        b2 = 0;
      }
    }

    stroke(0, b3);
    woo2();
    if (mousePressed) {
      if (frameCount%divideC == 2) {
        b3=255;
      } else {
        b3 = 0;
      }
    }

    stroke(0, b4);
    barA2();
    if (mousePressed) {
      if (frameCount%divideC == 3) {
        b4=255;
      } else {
        b4 = 0;
      }
    }
    fill(0, b5);
    stroke(0, b5);
    foldB2();
    if (mousePressed) {
      if (frameCount%divideC == 4) {
        b5=255;
      } else {
        b5 = 0;
      }
    }

    fill(0, b6);
    diag2();
    if (mousePressed) {
      if (frameCount%divideC == 5) {
        b6=255;
      } else {
        b6 = 0;
      }
    }

    stroke(0, b7);
    circle2();
    if (mousePressed) {
      if (frameCount%divideC == 6) {
        b7=255;
      } else {
        b7 = 0;
      }
    }



    stroke(0, b8);
    aah2();
    if (mousePressed) {
      if (frameCount%divideC == 7) {
        b8=255;
      } else {
        b8 = 0;
      }
    }

    stroke(0, b9);
    yi2();
    if (mousePressed) {
      if (frameCount%divideC == 8) {
        b9=255;
      } else {
        b9 = 0;
      }
    }


    //3

    stroke(0, c1);
    uh3();
    if (mousePressed) {
      if (frameCount%divideE == 0) {
        c1=255;
      } else {
        c1 = 0;
      }
    }

    stroke(0, c2);
    yi3();
    if (mousePressed) {
      if (frameCount%divideE == 1) {
        c2=255;
      } else {
        c2 = 0;
      }
    }

    stroke(0, c3);
    aah3();
    if (mousePressed) {
      if (frameCount%divideE == 2) {
        c3=255;
      } else {
        c3 = 0;
      }
    }


    //4

    stroke(0, d1);
    foldA4();
    if (mousePressed) {
      if (frameCount%divideF == 0) {
        d1=255;
      } else {
        d1 = 0;
      }
    }


    fill(0, d2);
    diag4();
    if (mousePressed) {
      if (frameCount%divideF == 1) {
        d2=255;
      } else {
        d2 = 0;
      }
    }

    stroke(0, d3);
    circle4();
    if (mousePressed) {
      if (frameCount%divideF == 2) {
        d3=255;
      } else {
        d3 = 0;
      }
    }

    stroke(0, d4);
    oh4();
    if (mousePressed) {
      if (frameCount%divideF == 3) {
        d4=255;
      } else {
        d4 = 0;
      }
    }

    stroke(0, d5);
    woo4();
    if (mousePressed) {
      if (frameCount%divideF == 4) {
        d5=255;
      } else {
        d5 = 0;
      }
    }

    stroke(0, d6);
    ue4();
    if (mousePressed) {
      if (frameCount%divideF == 5) {
        d6=255;
      } else {
        d6 = 0;
      }
    }

    //5


    stroke(0, e1);
    foldA5();
    if (mousePressed) {
      if (frameCount%divideD == 0) {
        e1=255;
      } else {
        e1 = 0;
      }
    }

    fill(0, e2);
    diag5();
    if (mousePressed) {
      if (frameCount%divideD == 1) {
        e2=255;
      } else {
        e2 = 0;
      }
    }

    stroke(0, e3);
    circle5();
    if (mousePressed) {
      if (frameCount%divideD == 2) {
        e3=255;
      } else {
        e3 = 0;
      }
    }

    stroke(0, e4);
    barB5();
    if (mousePressed) {
      if (frameCount%divideD == 3) {
        e4=255;
      } else {
        e4 = 0;
      }
    }

    stroke(0, e5);
    barA5();
    if (mousePressed) {
      if (frameCount%divideD == 4) {
        e5=255;
      } else {
        e5 = 0;
      }
    }

    stroke(0, e6);
    oh5();
    if (mousePressed) {
      if (frameCount%divideD == 5) {
        e6=255;
      } else {
        e6 = 0;
      }
    }

    stroke(0, e7);
    woo5();
    if (mousePressed) {
      if (frameCount%divideD == 6) {
        e7=255;
      } else {
        e7 = 0;
      }
    }

    stroke(0, e8);
    ue5();
    if (mousePressed) {
      if (frameCount%divideD == 7) {
        e8=255;
      } else {
        e8 = 0;
      }
    }

    stroke(0, e9);
    yi5();
    if (mousePressed) {
      if (frameCount%divideD == 8) {
        e9=255;
      } else {
        e9 = 0;
      }
    }

    stroke(0, e10);
    aah5();
    if (mousePressed) {
      if (frameCount%divideD == 9) {
        e10=255;
      } else {
        e10 = 0;
      }
    }

    stroke(0, e11);
    uh5();
    if (mousePressed) {
      if (frameCount%divideD == 10) {
        e11=255;
      } else {
        e11 = 0;
      }
    }


    //6


    stroke(0, f1);
    uh6();
    if (mousePressed) {
      if (frameCount%divideE == 0) {
        f1=255;
      } else {
        f1 = 0;
      }
    }

    stroke(0, f2);
    yi6();
    if (mousePressed) {
      if (frameCount%divideE == 1) {
        f2=255;
      } else {
        f2 = 0;
      }
    }

    stroke(0, f3);
    aah6();
    if (mousePressed) {
      if (frameCount%divideE == 2) {
        f3=255;
      } else {
        f3 = 0;
      }
    }


    //7

    stroke(0, g1);
    ue7();
    if (mousePressed) {
      if (frameCount%divideH == 0) {
        g1=255;
      } else {
        g1 = 0;
      }
    }

    stroke(0, g2);
    woo7();
    if (mousePressed) {
      if (frameCount%divideH == 1) {
        g2=255;
      } else {
        g2 = 0;
      }
    }

    stroke(0, g3);
    oh7();
    if (mousePressed) {
      if (frameCount%divideH == 2) {
        g3=255;
      } else {
        g3 = 0;
      }
    }

    stroke(0, g4);
    R7();
    if (mousePressed) {
      if (frameCount%divideH == 3) {
        g4=255;
      } else {
        g4 = 0;
      }
    }

    stroke(0, g5);
    S7();
    if (mousePressed) {
      if (frameCount%divideH == 4) {
        g5=255;
      } else {
        g5 = 0;
      }
    }

    stroke(0, g6);
    F7();
    if (mousePressed) {
      if (frameCount%divideH == 5) {
        g6=255;
      } else {
        g6 = 0;
      }
    }

    stroke(0, g7);
    Q7();
    if (mousePressed) {
      if (frameCount%divideH == 6) {
        g7=255;
      } else {
        g7 = 0;
      }
    }

    fill(0, g8);
    T7();
    if (mousePressed) {
      if (frameCount%divideH == 7) {
        g8=255;
      } else {
        g8 = 0;
      }
    }


    //8

    stroke(0, j1);
    ue8();
    if (mousePressed) {
      if (frameCount%divideG == 0) {
        j1=255;
      } else {
        j1 = 0;
      }
    }

    stroke(0, j2);
    oh8();
    if (mousePressed) {
      if (frameCount%divideG == 1) {
        j2=255;
      } else {
        j2 = 0;
      }
    }

    stroke(0, j3);
    woo8();
    if (mousePressed) {
      if (frameCount%divideG == 2) {
        j3=255;
      } else {
        j3 = 0;
      }
    }

    stroke(0, j4);
    S8();
    if (mousePressed) {
      if (frameCount%divideG == 3) {
        j4=255;
      } else {
        j4 = 0;
      }
    }
    /*
  stroke(0, j5);
     fill(0, j5);
     W8();
     if (mousePressed) {
     if (frameCount%divideG == 4) {
     j5=255;
     } else {
     j5 = 0;
     }
     }
     */
    fill(0, j6);
    T8();
    if (mousePressed) {
      if (frameCount%divideG == 5) {
        j6=255;
      } else {
        j6 = 0;
      }
    }

    stroke(0, j7);
    R8();
    if (mousePressed) {
      if (frameCount%divideG == 6) {
        j7=255;
      } else {
        j7 = 0;
      }
    }

    stroke(0, j8);
    Q8();
    if (mousePressed) {
      if (frameCount%divideG == 7) {
        j8=255;
      } else {
        j8 = 0;
      }
    }

    stroke(0, j5);
    D8();
    if (mousePressed) {
      if (frameCount%divideG == 4) {
        j5=255;
      } else {
        j5 = 0;
      }
    }


    //9

    stroke(0, i1);
    woo9();
    if (mousePressed) {
      if (frameCount%divideB == 0) {
        i1=255;
      } else {
        i1 = 0;
      }
    }

    stroke(0, i2);
    oh9();
    if (mousePressed) {
      if (frameCount%divideB == 1) {
        i2=255;
      } else {
        i2 = 0;
      }
    }

    stroke(0, i3);
    ue9();
    if (mousePressed) {
      if (frameCount%divideB == 2) {
        i3=255;
      } else {
        i3 = 0;
      }
    }

    stroke(0, i4);
    yi9();
    if (mousePressed) {
      if (frameCount%divideB == 3) {
        i4=255;
      } else {
        i4 = 0;
      }
    }

    stroke(0, i5);
    uh9();
    if (mousePressed) {
      if (frameCount%divideB == 4) {
        i5=255;
      } else {
        i5 = 0;
      }
    }

    stroke(0, i6);
    aah9();
    if (mousePressed) {
      if (frameCount%divideB == 5) {
        i6=255;
      } else {
        i6 = 0;
      }
    }

    stroke(0, i7);
    R9();
    if (mousePressed) {
      if (frameCount%divideB == 6) {
        i7=255;
      } else {
        i7 = 0;
      }
    }

    stroke(0, i8);
    S9();
    if (mousePressed) {
      if (frameCount%divideB == 7) {
        i7=255;
      } else {
        i7 = 0;
      }
    }

    stroke(0, i9);
    T9();
    if (mousePressed) {
      if (frameCount%divideB == 8) {
        i9=255;
      } else {
        i9 = 0;
      }
    }

    stroke(0, i10);
    Q9();
    if (mousePressed) {
      if (frameCount%divideB == 9) {
        i10=255;
      } else {
        i10 = 0;
      }
    }
    /*
           stroke(0, i11);
     W9();
     if (mousePressed) {
     if (frameCount%divideB == 10) {
     i11=255;
     } else {
     i11 = 0;
     }
     }
     */
    stroke(0, i11);
    A9();
    if (mousePressed) {
      if (frameCount%divideB == 10) {
        i11=255;
      } else {
        i11 = 0;
      }
    }


    //jackpot
    fill(255, random(255), 0);
    ellipse(60, 40, 10, 10);
    ellipse(plusX*4, 40, 10, 10);
    ellipse(plusX*5, 40, 10, 10);
    ellipse(plusX*6, 40, 10, 10);
    ellipse(plusX*7, 40, 10, 10);
    ellipse(plusX*8, 40, 10, 10);
    ellipse(plusX*9, 40, 10, 10);
    ellipse(plusX*10, 40, 10, 10);
    ellipse(plusX*11, 40, 10, 10);
    ellipse(plusX*12, 40, 10, 10);
    ellipse(plusX*13, 40, 10, 10);
    ellipse(plusX*14, 40, 10, 10);
    ellipse(plusX*15, 40, 10, 10);
    ellipse(plusX*16, 40, 10, 10);
    ellipse(plusX*17, 40, 10, 10);
    ellipse(plusX*18, 40, 10, 10);
    ellipse(plusX*19, 40, 10, 10);
    ellipse(plusX*20, 40, 10, 10);
    ellipse(plusX*21, 40, 10, 10);
    ellipse(plusX*22, 40, 10, 10);
    ellipse(plusX*23, 40, 10, 10);
    ellipse(plusX*24, 40, 10, 10);
    ellipse(plusX*25, 40, 10, 10);
    ellipse(plusX*26, 40, 10, 10);
    ellipse(plusX*27, 40, 10, 10);
    ellipse(plusX*28, 40, 10, 10);
    ellipse(plusX*29, 40, 10, 10);
    ellipse(plusX*30, 40, 10, 10);
    ellipse(plusX*31, 40, 10, 10);
    ellipse(plusX*32, 40, 10, 10);

    //2
    ellipse(60, plusX*3, 10, 10);
    ellipse(60, plusX*4, 10, 10);
    ellipse(60, plusX*5, 10, 10);
    ellipse(60, plusX*6, 10, 10);
    ellipse(60, plusX*7, 10, 10);
    ellipse(60, plusX*8, 10, 10);
    ellipse(60, plusX*9, 10, 10);
    ellipse(60, plusX*10, 10, 10);
    ellipse(60, plusX*11, 10, 10);
    ellipse(60, plusX*12, 10, 10);
    ellipse(60, plusX*13, 10, 10);
    ellipse(60, plusX*14, 10, 10);
    ellipse(60, plusX*15, 10, 10);
    ellipse(60, plusX*16, 10, 10);
    ellipse(60, plusX*17, 10, 10);
    ellipse(60, plusX*18, 10, 10);
    ellipse(60, plusX*19, 10, 10);
    ellipse(60, plusX*20, 10, 10);
    ellipse(60, plusX*21, 10, 10);
    ellipse(60, plusX*22, 10, 10);
    ellipse(60, plusX*23, 10, 10);
    ellipse(60, plusX*24, 10, 10);
    ellipse(60, plusX*25, 10, 10);
    ellipse(60, plusX*26, 10, 10);
    ellipse(60, plusX*27, 10, 10);

    //3

    ellipse(plusX*32, plusX*3, 10, 10);
    ellipse(plusX*32, plusX*4, 10, 10);
    ellipse(plusX*32, plusX*5, 10, 10);
    ellipse(plusX*32, plusX*6, 10, 10);
    ellipse(plusX*32, plusX*7, 10, 10);
    ellipse(plusX*32, plusX*8, 10, 10);
    ellipse(plusX*32, plusX*9, 10, 10);
    ellipse(plusX*32, plusX*10, 10, 10);
    ellipse(plusX*32, plusX*11, 10, 10);
    ellipse(plusX*32, plusX*12, 10, 10);
    ellipse(plusX*32, plusX*13, 10, 10);
    ellipse(plusX*32, plusX*14, 10, 10);
    ellipse(plusX*32, plusX*15, 10, 10);
    ellipse(plusX*32, plusX*16, 10, 10);
    ellipse(plusX*32, plusX*17, 10, 10);
    ellipse(plusX*32, plusX*18, 10, 10);
    ellipse(plusX*32, plusX*19, 10, 10);
    ellipse(plusX*32, plusX*20, 10, 10);
    ellipse(plusX*32, plusX*21, 10, 10);
    ellipse(plusX*32, plusX*22, 10, 10);
    ellipse(plusX*32, plusX*23, 10, 10);
    ellipse(plusX*32, plusX*24, 10, 10);
    ellipse(plusX*32, plusX*25, 10, 10);
    ellipse(plusX*32, plusX*26, 10, 10);
    ellipse(plusX*32, plusX*27, 10, 10);

    //4
    ellipse(plusX*4, plusX*27, 10, 10);
    ellipse(plusX*5, plusX*27, 10, 10);
    ellipse(plusX*6, plusX*27, 10, 10);
    ellipse(plusX*7, plusX*27, 10, 10);
    ellipse(plusX*8, plusX*27, 10, 10);
    ellipse(plusX*9, plusX*27, 10, 10);
    ellipse(plusX*10, plusX*27, 10, 10);
    ellipse(plusX*11, plusX*27, 10, 10);
    ellipse(plusX*12, plusX*27, 10, 10);
    ellipse(plusX*13, plusX*27, 10, 10);
    ellipse(plusX*14, plusX*27, 10, 10);
    ellipse(plusX*15, plusX*27, 10, 10);
    ellipse(plusX*16, plusX*27, 10, 10);
    ellipse(plusX*17, plusX*27, 10, 10);
    ellipse(plusX*18, plusX*27, 10, 10);
    ellipse(plusX*19, plusX*27, 10, 10);
    ellipse(plusX*20, plusX*27, 10, 10);
    ellipse(plusX*21, plusX*27, 10, 10);
    ellipse(plusX*22, plusX*27, 10, 10);
    ellipse(plusX*23, plusX*27, 10, 10);
    ellipse(plusX*24, plusX*27, 10, 10);
    ellipse(plusX*25, plusX*27, 10, 10);
    ellipse(plusX*26, plusX*27, 10, 10);
    ellipse(plusX*27, plusX*27, 10, 10);
    ellipse(plusX*28, plusX*27, 10, 10);
    ellipse(plusX*29, plusX*27, 10, 10);
    ellipse(plusX*30, plusX*27, 10, 10);
    ellipse(plusX*31, plusX*27, 10, 10);
    ellipse(plusX*32, plusX*27, 10, 10);



    textSize(50);

    text(s, -10, 670);


    fill(255, random(0, 80), 0);
    textSize(70);
    text(money, -60, 120);
    text(money, -60, 255);
    text(money, -60, 390);
    text(money, -60, 525);
    text(money, 690, 120);
    text(money, 690, 255);
    text(money, 690, 390);
    text(money, 690, 525);


    popMatrix();
    masterUI();
  }

  //1


  void aah1() {
    line(w1+75, h1, w1+75, h1+125);
    line(w1+75, h1+65, w1+150, h1+65);
  }

  void foldA1() {
    line(w1+75, h1+65, w1+150, h1+65);
    line(w1+75, h1+65, w1+75, h1+125);
  }

  void woo1() {
    line(w1, h1+65, w1+150, h1+65);
    line(w1+75, h1+65, w1+75, h1+125);
  }

  void circle1() {
    ellipse(w1+75, h1+65, 70, 70);
  }

  void barA1() {
    line(w1+75, h1+65, w1+150, h1+65);
  }

  void barB1() {
    line(w1+75, h1+65, w1+75, h1+125);
  }


  //2

  void uh2() {
    line(w2, h1+65, w2+75, h1+65);
    line(w2+75, h1, w2+75, h1+125);
  } 

  void foldA2() {
    line(w2, h1+65, w2+75, h1+65);
    line(w2+75, h1+65, w2+75, h1+125);
  }

  void woo2() {
    line(w2, h1+65, w2+150, h1+65);
    line(w2+75, h1+65, w2+75, h1+125);
  }

  void barA2() {
    line(w2, h1+65, w2+75, h1+65);
  }

  void foldB2() {
    line(w2, h1+65, w2+70, h1+65);
    noStroke();
    fill(0, b5);
    quad(w2+75, h1+55, w2+100, h1+55, w2+27, h1+130, w2, h1+130);
    noFill();
  }

  void diag2() { 
    noStroke();
    fill(0, b6);
    quad(w2+65, h1+55, w2+90, h1+55, w2+27, h1+130, w2, h1+130);
    noFill();
  }

  void circle2() {
    ellipse(w2+75, h1+65, 70, 70);
  }


  void aah2() {
    line(w2+75, h1, w2+75, h1+125);
    line(w2+75, h1+65, w2+150, h1+65);
  }

  void yi2() {
    line(w2+75, h1, w2+75, h1+125);
  }


  //3

  void uh3() {
    line(w3+75, h1, w3+75, h1+125);
    line(w3, h1+65, w3+75, h1+65);
  }

  void yi3() {
    line(w3+75, h1, w3+75, h1+125);
  }

  void aah3() {
    line(w3+75, h1, w3+75, h1+125);
  }


  //4

  void foldA4() {
    line(w1+75, h2, w1+75, h2+65);
    line(w1+75, h2+65, w1+150, h2+65);
  }

  void diag4() {

    noStroke();
    fill(0, d2);
    quad(w1+130, h2, w1+155, h2, w1+85, h2+65, w1+60, h2+65);
    noFill();
  }

  void circle4() {
    ellipse(w1+76, h2+65, 70, 70);
  }

  void oh4() {
    line(w1, h2+65, w1+150, h2+65);
    line(w1+75, h2, w1+75, h2+65);
  }

  void woo4() {
    line(w1, h2+65, w1+150, h2+65);
    line(w1+75, h2+65, w1+75, h2+125);
  }

  void ue4() {
    line(w1, h2+65, w1+150, h2+65);
  }


  //5

    void foldA5() {
    line(w2, h2+65, w2+75, h2+65);
    line(w2+75, h2, w2+75, h2+65);
  }

  void diag5() {
    noStroke();
    fill(0, e2);
    quad(w2, h2, w2+27, h2, w2+85, h2+65, w2+60, h2+65);
    noFill();
  }

  void circle5() {
    ellipse(w2+75, h2+65, 70, 70);
  }

  void barB5() {
    line(w2+75, h2, w2+75, h2+65);
  }

  void barA5() {
    line(w2, h2+65, w2+75, h2+65);
  }

  void oh5() {
    line(w2, h2+65, w2+150, h2+65);
    line(w2+75, h2, w2+75, h2+65);
  }

  void woo5() {
    line(w2, h2+65, w2+150, h2+65);
    line(w2+75, h2+65, w2+75, h2+125);
  }

  void ue5() {
    line(w2, h2+65, w2+150, h2+65);
  }

  void yi5() {
    line(w2+75, h2, w2+75, h2+125);
  }

  void aah5() {
    line(w2+75, h2, w2+75, h2+125); 
    line(w2, h2+65, w2+75, h2+65);
  }

  void uh5() {
    line(w2+75, h2, w2+75, h2+125);
    line(w2, h2+65, w2+75, h2+65);
  }


  //6

  void uh6() {
    line(w3+75, h2, w3+75, h2+125);
  }

  void yi6() {
    line(w3+75, h2, w3+75, h2+125);
  }

  void aah6() {
    line(w3+75, h2, w3+75, h2+125);
    line(w3+75, h2+65, w3+150, h2+65);
  }


  //7

  void ue7() {
    line(w1, h3+65, w1+150, h3+65);
  }

  void woo7() {
    line(w1, h3+65, w1+150, h3+65);
    line(w1+75, h3+65, w1+75, h3+125);
  }

  void oh7() {
    line(w1, h3+65, w1+150, h3+65);  
    line(w1+75, h3, w1+75, h3+65);
  }

  void R7() {
    line(w1+40, h3+35, w1+110, h3+35);
    line(w1+110, h3+35, w1+110, h3+90);
  }

  void S7() {
    line(w1+40, h3+35, w1+40, h3+90);
    line(w1+40, h3+90, w1+110, h3+90);
  }

  void F7() {
    line(w1+40, h3+35, w1+110, h3+35);
    line(w1+110, h3+35, w1+110, h3+62.5);
    line(w1+110, h3+62.5, w1+40, h3+62.5);
    line(w1+40, h3+62.5, w1+40, h3+90);
    line(w1+40, h3+90, w1+110, h3+90);
  }

  void Q7() {
    line(w1+40, h3+35, w1+40, h3+90);
    line(w1+40, h3+90, w1+110, h3+90);
    line(w1+110, h3+90, w1+110, h3+35);
    line(w1+40, h3+62.5, w1+110, h3+62.5);
  }

  void T7() {
    noStroke();
    fill(0, g8);
    quad(w1+60, h3+30, w1+85, h3+30, w1+50, h3+100, w1+25, h3+100);
    quad(w1+70, h3+30, w1+95, h3+30, w1+130, h3+100, w1+105, h3+100);
    noFill();
  }


  //8

  void ue8() {
    line(w2, h3+65, w2+150, h3+65);
  }

  void oh8() {
    line(w2, h3+65, w2+150, h3+65);
    line(w2+75, h3, w2+75, h3+65);
  }

  void woo8() {
    line(w2, h3+65, w2+150, h3+65);  
    line(w2+75, h3+65, w2+75, h3+125);
  }

  void S8() {
    line(w2+40, h3+35, w2+40, h3+90);
    line(w2+40, h3+90, w2+110, h3+90);
  } 

  /*void W8(){
   line(w2+40, h3+35, w2+110, h3+35);
   noStroke();
   fill(0, j5);
   quad(w2+90, h3+35, w2+120, h3+35, w2+55, h3+90, w2+25, h3+90);
   quad(w2+65, h3+65, w2+95, h3+65, w2+125, h3+90, w2+95, h3+90);
   noFill();
   }*/

  void T8() {
    noStroke();
    fill(0, j6);
    quad(w2+60, h3+30, w2+85, h3+30, w2+50, h3+100, w2+25, h3+100);
    quad(w2+70, h3+30, w2+95, h3+30, w2+130, h3+100, w2+105, h3+100);

    noFill();
  }

  void R8() {
    line(w2+40, h3+35, w2+110, h3+35);
    line(w2+110, h3+35, w2+110, h3+90);
  }

  void Q8() {
    line(w2+40, h3+35, w2+40, h3+90);
    line(w2+110, h3+35, w2+110, h3+90);
    line(w2+40, h3+62.5, w2+110, h3+62.5);
    line(w2+40, h3+90, w2+110, h3+90);
  }

  void D8() {
    line(w2+40, h3+35, w2+40, h3+90);
    line(w2+40, h3+90, w2+110, h3+90);
    line(w2+110, h3+90, w2+110, h3+35);
    line(w2+110, h3+35, w2+40, h3+35);
  }


  //9

  void woo9() {
    line(w3, h3+65, w3+150, h3+65);
    line(w3+75, h3+65, w3+75, h3+125);
  }

  void oh9() {
    line(w3, h3+65, w3+150, h3+65);
    line(w3+75, h3, w3+75, h3+65);
  }

  void ue9() {
    line(w3, h3+65, w3+150, h3+65);
  }

  void yi9() {
    line(w3+75, h3, w3+75, h3+125);
  }

  void uh9() {
    line(w3+75, h3, w3+75, h3+125);
    line(w3, h3+65, w3+75, h3+65);
  }

  void aah9() {
    line(w3+75, h3, w3+75, h3+125); 
    line(w3+75, h3+65, w3+150, h3+65);
  }

  void R9() {
    line(w3+40, h3+35, w3+110, h3+35);
    line(w3+110, h3+35, w3+110, h3+90);
  }

  void S9() {
    line(w3+40, h3+35, w3+40, h3+90);
    line(w3+40, h3+90, w3+110, h3+90);
  }

  void T9() {
    noStroke();
    fill(0, i9);
    quad(w3+60, h3+30, w3+85, h3+30, w3+50, h3+100, w3+25, h3+100);
    quad(w3+70, h3+30, w3+95, h3+30, w3+130, h3+100, w3+105, h3+100);

    noFill();
  }

  void Q9() {
    line(w3+40, h3+35, w3+40, h3+90);
    line(w3+110, h3+35, w3+110, h3+90);
    line(w3+40, h3+62.5, w3+110, h3+62.5);
    line(w3+40, h3+90, w3+110, h3+90);
  }
  /*
void W9(){
   line(w3+40, h3+35, w3+110, h3+35);
   line(w3+110, h3+35, w3+40, h3+90);
   line(w3+75, h3+62.5, w3+110, h3+90); 
   }
   */
  void A9() {
    line(w3+40, h3+35, w3+40, h3+90);
    line(w3+40, h3+90, w3+110, h3+90);
    line(w3+110, h3+90, w3+110, h3+35);
    line(w3+110, h3+35, w3+40, h3+35);
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

