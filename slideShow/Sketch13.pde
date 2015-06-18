class Sketch13 extends EmbeddedSketch {
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

  PFont myFont;//한국어
  float opacity;
  Movie theMov;

  void setup() {

    frameRate(60);
    size(1024, 768);
    ellipseMode(CENTER);
    opacity = 255;

    theMov = new Movie(this, "filling_water.mp4");
    theMov.play();
  }

  void draw() {
    super.draw();
    pushMatrix();
    translate(-70, 0);

    background(0);
    image(theMov, 0, 0);


    String s = "마우스로 클릭하면 다시 시작합니다.";
    text(s, 450, 650);
    textSize(24);
    myFont = createFont("NanumGothic", 20);
    textFont(myFont);


    //----------------------------------- 시원하게

    drawJaso('ㅅ', 207.537, 310);
    drawJaso('ㅅ', 207.537, 360);
    drawJaso('ㅣ', 272.344, 250);
    drawJaso('ㅣ', 272.344, 300);
    drawJaso('ㅣ', 272.344, 350);
    drawJaso('ㅣ', 272.344, 400);
    drawJaso('ㅣ', 272.344, 450);

    drawJaso('ㅇ', 360-10, 310-10);
    drawJaso('ㅜ', 350, 371.172-20);
    drawJaso('ㅣ', 371.172-21, 400);
    drawJaso('ㅣ', 471.172-21, 350);
    drawJaso('ㅓ', 450, 400);
    drawJaso('ㅣ', 471.172-21, 450);
    drawJaso('1', 471.172-21, 500);

    drawJaso('ㅎ', 510.808, 358.75);
    drawJaso('2', 571.086-21, 271.171-21);
    drawJaso('ㅏ', 571.086-21, 300);
    drawJaso('ㅣ', 571.086-21, 350);
    drawJaso('ㅣ', 571.086-21, 400);
    drawJaso('ㅡ', 600, 271.171-21);
    drawJaso('+', 650, 250);

    drawJaso('ㄱ', 660, 360);
    drawJaso('ㅓ', 700, 350);
    drawJaso('ㅣ', 721.172-21, 400);
    drawJaso('ㅣ', 721.172-21, 450);
    drawJaso('ㅣ', 721.172-21, 500);

    drawJaso('ㅣ', 771.172-21, 300);
    drawJaso('ㅣ', 771.172-21, 350);
    drawJaso('ㅣ', 771.172-21, 400);
    drawJaso('ㅣ', 771.172-21, 450);
    drawJaso('ㅣ', 771.172-21, 500);



    waterTank() ;

    //-----------------------------------------'시원하게' 사라짐
    if (frameCount >= 1750) {
      opacity = 0;
    } else {
      opacity = 255;
    }

    popMatrix();
    pageShift(13, 15);
  }

  void mouseClicked() {
    frameCount =  0;
    theMov.jump(0);
    setup();
  }


  //-------------------------------------------- 자소에 간단한/ 변수 할당

  void drawJaso(char c, float x, float y) {
    if (c == 'ㄱ') {
      drawUnit_00(x, y);
    } else if (c == 'ㄴ') {
      drawUnit_01(x, y);
    } else if (c == 'ㄷ') {
      drawUnit_02(x, y);
    } else if (c == 'ㄹ') {
      drawUnit_03(x, y);
    } else if (c == 'ㅁ') {
      drawUnit_04(x, y);
    } else if (c == 'ㅂ') {
      drawUnit_05(x, y);
    } else if (c == 'ㅅ') {
      drawUnit_06(x, y);
    } else if (c == 'ㅇ') {
      drawUnit_07(x, y);
    } else if (c == 'ㅈ') {
      drawUnit_08(x, y);
    } else if (c == 'ㅊ') {
      drawUnit_09(x, y);
    } else if (c == 'ㅋ') {
      drawUnit_10(x, y);
    } else if (c == 'ㅌ') {
      drawUnit_11(x, y);
    } else if (c == 'ㅍ') {
      drawUnit_12(x, y);
    } else if (c == 'ㅎ') {
      drawUnit_13(x, y);
    } else if (c == 'ㅏ') {
      drawUnit_14(x, y);
    } else if (c == '1') {
      drawUnit_15(x, y);
    } else if (c == '2') {
      drawUnit_16(x, y);
    } else if (c == 'ㅓ') {
      drawUnit_17(x, y);
    } else if (c == '3') {
      drawUnit_18(x, y);
    } else if (c == '4') {
      drawUnit_19(x, y);
    } else if (c == 'ㅗ') {
      drawUnit_20(x, y);
    } else if (c == 'ㅜ') {
      drawUnit_21(x, y);
    } else if (c == 'ㅡ') {
      drawUnit_22(x, y);
    } else if (c == 'ㅣ') {
      drawUnit_23(x, y);
    } else if (c == '+') {
      drawUnit_24(x, y);
    }
  }


  //-------------------------------------------초/종성

  //ㄱ
  void drawUnit_00(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);

    pushMatrix( ); 
    beginShape( ); 
    scale(0.3125);

    vertex(32, 32);
    vertex(128, 32);
    vertex(128, 128);
    vertex(103, 128);
    vertex(103, 55);
    vertex(32, 55);
    vertex(32, 32);

    endShape();
    popMatrix(); 

    popMatrix();
  }

  //ㄴ
  void drawUnit_01(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);

    pushMatrix( ); 
    beginShape( ); 
    scale(0.3125);

    vertex(128, 128);
    vertex(32, 128);
    vertex(32, 31);
    vertex(56, 31);
    vertex(56, 103);
    vertex(128, 103);
    vertex(128, 128);

    endShape();
    popMatrix(); 


    popMatrix();
  }

  //ㄷ
  void drawUnit_02(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);

    pushMatrix( ); 
    beginShape( );
    scale(0.3125);

    vertex(128, 32);
    vertex(32, 32);
    vertex(32, 127);
    vertex(128, 128);
    vertex(128, 104);
    vertex(56, 104);
    vertex(56, 55);
    vertex(128, 56);
    vertex(128, 32);

    endShape();
    popMatrix(); 

    popMatrix();
  }

  //ㄹ
  void drawUnit_03(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    beginShape( ); 
    scale(0.3125);

    vertex(32, 32);
    vertex(128, 32);
    vertex(128, 88);
    vertex(56, 88);
    vertex(56, 104);
    vertex(128, 104);
    vertex(128, 128);
    vertex(32, 128);
    vertex(32, 64);
    vertex(104, 64);
    vertex(104, 56);
    vertex(32, 56);
    vertex(32, 32);

    endShape();
    popMatrix();

    popMatrix();
  }

  //ㅁ
  void drawUnit_04(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    //겉사각형
    rect(32, 32, 96, 96);
    //뚫림
    fill(255, 255, 255);
    rect(55, 55, 48, 48);

    popMatrix();

    popMatrix();
  }

  //ㅂ
  void drawUnit_05(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);

    //겉
    pushMatrix( ); 
    beginShape( ); 
    scale(0.3125);

    rect(32, 32, 24, 32);
    rect(104, 32, 23, 32);

    endShape();

    //뚫림
    noFill();
    strokeWeight(24);
    stroke(0, 255, 255, opacity);
    rect(44, 68, 72, 48);

    popMatrix(); 

    popMatrix();
  }

  //ㅅ
  void drawUnit_06(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);

    pushMatrix( ); 
    beginShape( ); 
    scale(0.3125);

    vertex(136, 111);
    vertex(92, 67);
    vertex(92, 32);
    vertex(68, 32);
    vertex(68, 67);
    vertex(24, 111);
    vertex(41, 128);
    vertex(80, 89);
    vertex(119, 128);
    vertex(136, 111);
    endShape();
    popMatrix(); 

    popMatrix();
  }

  //ㅇ
  void drawUnit_07(float x, float y) {

    pushMatrix();

    translate(x, y);
    noFill();


    pushMatrix();
    scale(0.3125);
    strokeWeight(24);
    stroke(0, 255, 255, opacity);
    ellipseMode(CORNER);
    ellipse(39, 39, 80, 80);

    popMatrix();

    popMatrix();
  }

  //ㅈ
  void drawUnit_08(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( );
    beginShape( ); 
    scale(0.3125);

    vertex(135, 111);
    vertex(92, 67);
    vertex(92, 56);
    vertex(128, 56);
    vertex(128, 32);
    vertex(31, 32);
    vertex(31, 56);
    vertex(68, 56);
    vertex(68, 67);
    vertex(24, 111);
    vertex(41, 128);
    vertex(80, 89);
    vertex(119, 128);
    vertex(135, 111);

    endShape();
    popMatrix(); 

    popMatrix();
  }

  //ㅊ
  void drawUnit_09(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( );
    beginShape( );
    scale(0.3125);

    vertex(136, 111);
    vertex(92, 67);
    vertex(92, 56);
    vertex(128, 56);
    vertex(128, 32);
    vertex(92, 32);
    vertex(92, 24);
    vertex(68, 24);
    vertex(68, 32);
    vertex(32, 32);
    vertex(32, 56);
    vertex(68, 56);
    vertex(68, 67);
    vertex(24, 111);
    vertex(41, 128);
    vertex(80, 89);
    vertex(119, 128);
    vertex(136, 111);

    endShape(); 
    popMatrix(); 

    popMatrix();
  }

  //ㅋ
  void drawUnit_10(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( );
    beginShape( ); 
    scale(0.3125);

    vertex(128, 67);
    vertex(128, 67);
    vertex(128, 32);
    vertex(32, 32);
    vertex(32, 55);
    vertex(103, 55);
    vertex(103, 67);
    vertex(32, 67);
    vertex(32, 91);
    vertex(103, 91);
    vertex(103, 128);
    vertex(128, 128);
    vertex(128, 91);
    vertex(128, 91);
    vertex(128, 67);

    endShape();
    popMatrix();

    popMatrix();
  }

  //ㅌ
  void drawUnit_11(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    beginShape( );
    scale(0.3125);

    vertex(128, 56);
    vertex(128, 32);
    vertex(32, 32);
    vertex(32, 67);
    vertex(32, 91);
    vertex(32, 128);
    vertex(128, 128);
    vertex(128, 104);
    vertex(56, 104);
    vertex(56, 91);
    vertex(128, 91);
    vertex(128, 67);
    vertex(56, 67);
    vertex(56, 56);
    vertex(128, 56);

    endShape();
    popMatrix(); 

    popMatrix();
  }

  //ㅍ
  void drawUnit_12(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( );
    scale(0.3125);
    rect(32, 32, 96, 24);
    rect(48, 48, 24, 64);
    rect(88, 48, 24, 64);
    rect(32, 104, 96, 24);

    popMatrix(); 

    popMatrix();
  }

  //ㅎ
  void drawUnit_13(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    //모자
    beginShape( ); 

    vertex(128, 32);
    vertex(92, 32);
    vertex(92, 24);
    vertex(68, 24);
    vertex(68, 32);
    vertex(32, 32);
    vertex(32, 56);
    vertex(128, 56);
    vertex(128, 32);

    endShape();

    //원
    noFill();
    strokeWeight(24);
    stroke(0, 255, 255, opacity);
    ellipse(52, 60, 56, 56);

    popMatrix(); 

    popMatrix();
  }


  void guideline() {

    strokeWeight(1);
    stroke(0, 173, 238);
    line(150, 300, 950, 300);
    line(150, 350, 950, 350);
    line(150, 400, 950, 400);
    line(150, 450, 950, 450);
    line(150, 500, 950, 500);
    line(200, 250, 200, 550);
    line(250, 250, 250, 550);
    line(300, 250, 300, 550);
    line(350, 250, 350, 550);
    line(400, 250, 400, 550);
    line(450, 250, 450, 550);
    line(500, 250, 500, 550);
    line(550, 250, 550, 550);
    line(600, 250, 600, 550);
    line(650, 250, 650, 550);
    line(700, 250, 700, 550);
    line(750, 250, 750, 550);
    line(800, 250, 800, 550);
    line(850, 250, 850, 550);
    line(900, 250, 900, 550);
  }



  //---------------------------------------------중성

  //ㅏ
  void drawUnit_14(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(67, 0, 24, 92);
    rect(67, 67, 92, 24);
    rect(67, 67, 24, 92);

    popMatrix();

    popMatrix();
  }


  //위오ㅣ_
  void drawUnit_15(float x, float y) {
    pushMatrix();
    noStroke();
    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(67, 0, 24, 92);
    rect(67, 67, 92, 24);

    popMatrix();

    popMatrix();
  }


  //아오ㅣ-
  void drawUnit_16(float x, float y) {
    pushMatrix();
    translate(x, y);

    noStroke();
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    rect(67, 67, 24, 92);
    rect(67, 67, 92, 24);
    popMatrix();


    popMatrix();
  }


  //ㅓ
  void drawUnit_17(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(67, 0, 24, 92);
    rect(67, 67, 24, 92);
    rect(0, 67, 92, 24);
    popMatrix();

    popMatrix();
  }


  //위왼_ㅣ
  void drawUnit_18(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(67, 0, 24, 92);
    rect(0, 67, 92, 24);

    popMatrix();

    popMatrix();
  }

  //아외-ㅣ
  void drawUnit_19(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    rect(67, 67, 24, 92);

    rect(0, 67, 92, 24);


    popMatrix();

    popMatrix();
  }



  //ㅗ
  void drawUnit_20(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    rect(67, 0, 24, 92);
    rect(0, 67, 92, 24);
    rect(67, 67, 92, 24);

    popMatrix();

    popMatrix();
  }

  //ㅜ
  void drawUnit_21(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    rect(67, 67, 24, 92);
    rect(0, 67, 92, 24);
    rect(67, 67, 92, 24);

    popMatrix();

    popMatrix();
  }


  //ㅡ
  void drawUnit_22(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(0, 67, 92, 24);
    rect(67, 67, 92, 24);

    popMatrix();

    popMatrix();
  }

  //ㅣ
  void drawUnit_23(float x, float y) {
    pushMatrix();
    noStroke();

    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);

    rect(67, 0, 24, 92);
    rect(67, 67, 24, 92);
    popMatrix();

    popMatrix();
  }

  //+
  void drawUnit_24(float x, float y) {
    pushMatrix();
    noStroke();
    translate(x, y);
    fill(0, 255, 255, opacity);


    pushMatrix( ); 
    scale(0.3125);
    rect(67, 0, 24, 92);
    rect(67, 67, 24, 92);
    rect(0, 67, 92, 24);
    rect(67, 67, 92, 24);
    popMatrix();

    popMatrix();
  }



  //------------------------------------------- 배경이미지

  //물탱크
  void waterTank() {
    strokeWeight(3);
    stroke(255, 241, 0);

    //틀
    noFill();
    bezier(150, 275, 150, 261, 161, 250, 175, 250);
    bezier(950, 275, 950, 261, 938, 250, 925, 250);
    bezier(950, 525, 950, 538, 938, 550, 925, 550);
    bezier(150, 525, 150, 538, 161, 550, 175, 550);
    line(172, 250, 927, 250);
    line(172, 550, 927, 550);
    line(950, 270, 950, 530);
    line(150, 270, 150, 530);

    fill(255, 54, 131);
    //  arc(195, 200, 100,100, PI, -PI);
    rect(200, 200, 150, 50);
    //  bezier(350, 210, 352, 210, 355, 207, 355, 205);
    //  bezier(355, 205, 355, 202, 352, 200, 350, 200);

    fill(255, 54, 131);
    rect(950, 450, 50, 80);
  }
}

void movieEvent(Movie m) {
  m.read();
}

