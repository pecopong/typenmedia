class Sketch9 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  // 20111652 lee minsu
  // 작업명 "아아악"
  //소리를 받아들인 후 변수 count의 증가에 따라 변화가 생김
  //컨셉 : 소리에 반응해 흔들려야만 보이는 글씨
  //3가지 지시어가 나온 후 마지막 말이 나오는 구조

  Minim minim;    //Minim object
  AudioInput in;  //in this example, we work with external audio source.


  //rp들은 원의 랜덤좌표를 위한 변수
  //col1 원의 색변수, count 글자변화의 변수

  PImage img;
  PImage img1;

  float x = 30;
  float rpx = 0;
  float rpy = 0;
  float rpc = -5;
  float rpv = 5;
  float rpb = -5;
  float rpn = 5;
  float rpa = -5;
  float rps = 5;
  float rp1 = 0;
  float rp2 = 0;
  float rp3 = 0;
  float rp4 = 0;
  float rp5 = 0;
  float rp6 = 0;
  float rp7 = 0;
  float rp8 = 0;
  float rp9 = 0;
  float rp10 = 0;
  float rp11 = 0;
  float rp12 = 0;
  float rp13 = 0;
  float rp14 = 0;
  float col1 = 240;
  float count = 0;
  float y = 255;
  float z = 255;
  float lt1 = 0;

  void setup() {
    size( 1024, 768 );
    minim = new Minim(this);

    in = minim.getLineIn(Minim.MONO, 512);
    //마지막에 나오는 이미지
    img = loadImage("kek.jpg");
    img1 = loadImage("please01.png");
  }



  void stop() {
    // always close Minim audio classes when you are done with them
    in.close();
    minim.stop();
  }

  void draw() {
    super.draw();
    pushMatrix();
    scale(0.88);
    translate(72,70);
    float level = in.left.level();

    level = map(level, 0, 1, 0, 400);

    fill(col1);

    if ( count > 35 ) x +=2;
    if ( count == 0) fill(col1);
    if (count > 35 ) col1 -=5;
    if ( col1 < 35 ) col1 = 30;
    if (count == 0 ) col1 = 240;
    if ( count > 35 ) fill(x, 0, 0);
    if ( count < 35 ) x = 30;
    noStroke();
    background(0, 0, 30);

    if (level > 10 ) count += 0.2;
    if (level < 10 ) count = 0;

    if (count > 1) rp1 = -5;
    if (count == 0) rp1 += 0.2;
    if (rp1 > 0) rp1 = 0;
    if (count > 1) rp2 = 5;
    if (count == 0) rp2 -= 0.2;
    if (rp2 < 0 ) rp2 = 0;

    if (count > 1) rp3 = -5;
    if (count == 0) rp3 += 0.2;
    if (rp3 > 0) rp3 = 0;
    if (count > 1) rp4 = 5;
    if (count == 0) rp4 -= 0.2;
    if (rp4 < 0 ) rp4 = 0;
    if (count > 10) rp3 = rpx;
    if (count > 10) rpx +=0.2;
    if (rpx > 0) rpx = 0;
    if ( count > 10) rp4 = rpy;
    if (count > 10) rpy -= 0.2;
    if (rpy < 0) rpy =0;
    if ( count > 25) rpx = rp1;
    if ( count > 25) rpy = rp2;

    if (count > 1) rp5 = -5;
    if (count == 0) rp5 += 0.2;
    if (rp5 > 0) rp5 = 0;
    if (count > 1) rp6 = 5;
    if (count == 0) rp6 -= 0.2;
    if (rp6 < 0 ) rp6 = 0;
    if (count > 25) rp5 = rpc;
    if (count > 25) rpc +=0.2;
    if (rpc > 0) rpc = 0;
    if (count > 25) rp6 = rpv;
    if (count > 25) rpv -=0.2;
    if (rpv > 0) rpv = 0;

    if (count > 1) rp7 = -5;
    if (count == 0) rp7 += 0.2;
    if (rp7 > 0) rp7 = 0;
    if (count > 1) rp8 = 5;
    if (count == 0) rp8 -= 0.2;
    if (rp8 < 0 ) rp8 = 0;
    if (count > 10) rp7 = rpb;
    if (count > 10) rpb +=0.2;
    if (rpb > 0) rpb = 0;
    if (count > 10) rp8 = rpn;
    if (count > 10) rpn -=0.2;
    if (rpn > 0) rpn = 0;

    if (count > 10) rp9 = -5;
    if (count == 0) rp9 += 0.2;
    if (rp9 > 0) rp9 = 0;
    if (count > 10) rp10 = 5;
    if (count == 0) rp10 -= 0.2;
    if (rp10 < 0 ) rp10 = 0;
    if (count > 25) rp9 = rpa;
    if (count > 25) rpa +=0.2;
    if (rpa > 0) rpa = 0;
    if (count > 25) rp10 = rps;
    if (count > 25) rps -=0.2;
    if (rps > 0) rps = 0;

    if (count > 10) rp11 = -5;
    if (count == 0) rp11 += 0.2;
    if (rp11 > 0) rp11 = 0;
    if (count > 10) rp12 = 5;
    if (count == 0) rp12 -= 0.2;
    if (rp12 < 0 ) rp12 = 0;
    if (count > 25) rp11 = rp1;
    if (count > 25) rp12 = rp2;

    if (count > 25) rp13 = -5;
    if (count == 0) rp13 += 0.2;
    if (rp13 > 0) rp13 = 0;
    if (count > 25) rp14 = 5;
    if (count == 0) rp14 -= 0.2;
    if (rp14 < 0 ) rp14 = 0;

    if ( count > 35 ) sceneZero();

    pushMatrix();
    translate(3, 0);
    // all section 세 가지 글자에 모두 흔들리는 원 / 1, 3 첫번째와 세번째 흔들리는 원
    //2, 3 두번째와 세번째 흔들리는 원 / 1st, 2st, 3rd 각각 그 때만 흔들리는 원
    //----------- all section ----------------------------------------

    ellipse(450+random(rp1, rp2), 223+random(rp1, rp2), 9, 9);

    ellipse(462+random(rp1, rp2), 223+random(rp1, rp2), 9, 9);

    ellipse(475+random(rp1, rp2), 223+random(rp1, rp2), 9, 9);

    ellipse(488+random(rp1, rp2), 223+random(rp1, rp2), 9, 9);

    ellipse(450+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(462+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(475+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(488+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(552+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 235+random(rp1, rp2), 9, 9);

    ellipse(462+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(475+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(488+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(539+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(552+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(577+random(rp1, rp2), 248+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 260+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 273+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 285+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 298+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 310+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 323+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 335+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 348+random(rp1, rp2), 9, 9);

    ellipse(577+random(rp1, rp2), 348+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 360+random(rp1, rp2), 9, 9);

    ellipse(577+random(rp1, rp2), 360+random(rp1, rp2), 9, 9);

    ellipse(564+random(rp1, rp2), 373+random(rp1, rp2), 9, 9);

    ellipse(577+random(rp1, rp2), 373+random(rp1, rp2), 9, 9);

    ellipse(462+random(rp1, rp2), 410+random(rp1, rp2), 9, 9);

    ellipse(475+random(rp1, rp2), 410+random(rp1, rp2), 9, 9);

    ellipse(488+random(rp1, rp2), 410+random(rp1, rp2), 9, 9);

    ellipse(450+random(rp1, rp2), 423+random(rp1, rp2), 9, 9);

    ellipse(462+random(rp1, rp2), 423+random(rp1, rp2), 9, 9);

    ellipse(475+random(rp1, rp2), 423+random(rp1, rp2), 9, 9);

    ellipse(488+random(rp1, rp2), 423+random(rp1, rp2), 9, 9);

    //---------------1, 3-----------------------------------------------

    ellipse(501+random(rp3, rp4), 223+random(rp3, rp4), 9, 9);

    ellipse(513+random(rp3, rp4), 223+random(rp3, rp4), 9, 9);
    //
    ellipse(526+random(rp3, rp4), 223+random(rp3, rp4), 9, 9);
    //
    ellipse(539+random(rp3, rp4), 223+random(rp3, rp4), 9, 9);
    //
    ellipse(552+random(rp3, rp4), 223+random(rp3, rp4), 9, 9);
    //
    ellipse(501+random(rp3, rp4), 235+random(rp3, rp4), 9, 9);
    //
    ellipse(513+random(rp3, rp4), 235+random(rp3, rp4), 9, 9);
    //
    ellipse(526+random(rp3, rp4), 235+random(rp3, rp4), 9, 9);
    //
    ellipse(539+random(rp3, rp4), 235+random(rp3, rp4), 9, 9);
    //
    ellipse(501+random(rp3, rp4), 248+random(rp3, rp4), 9, 9);
    //
    ellipse(513+random(rp3, rp4), 248+random(rp3, rp4), 9, 9);
    //
    ellipse(526+random(rp3, rp4), 248+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 260+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 273+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 285+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 298+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 310+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 323+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 335+random(rp3, rp4), 9, 9);

    ellipse(513+random(rp3, rp4), 398+random(rp3, rp4), 9, 9);

    ellipse(526+random(rp3, rp4), 398+random(rp3, rp4), 9, 9);

    ellipse(539+random(rp3, rp4), 398+random(rp3, rp4), 9, 9);

    ellipse(501+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(513+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(526+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(539+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(552+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(564+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 410+random(rp3, rp4), 9, 9);

    ellipse(501+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(513+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(526+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(539+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(552+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(564+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    ellipse(577+random(rp3, rp4), 423+random(rp3, rp4), 9, 9);

    //--------------------1, 2-------------------------------------------

    ellipse(348+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(348+random(rp5, rp6), 373+random(rp5, rp6), 9, 9);

    ellipse(360+random(rp5, rp6), 373+random(rp5, rp6), 9, 9);

    ellipse(437+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(437+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(450+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 260+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 273+random(rp5, rp6), 9, 9);

    ellipse(475+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(488+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(539+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(475+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(488+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(539+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(488+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(539+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(437+random(rp5, rp6), 398+random(rp5, rp6), 9, 9);

    ellipse(424+random(rp5, rp6), 410+random(rp5, rp6), 9, 9);

    ellipse(437+random(rp5, rp6), 410+random(rp5, rp6), 9, 9);

    ellipse(450+random(rp5, rp6), 410+random(rp5, rp6), 9, 9);

    ellipse(424+random(rp5, rp6), 423+random(rp5, rp6), 9, 9);

    ellipse(437+random(rp5, rp6), 423+random(rp5, rp6), 9, 9);

    ellipse(615+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(628+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(641+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(654+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(666+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(679+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(615+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(628+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(641+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(654+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(666+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(679+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(552+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 223+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 235+random(rp5, rp6), 9, 9);

    ellipse(628+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(641+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(654+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(666+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(679+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 248+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 260+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 260+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 260+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 273+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 273+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 273+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 285+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 298+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 310+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 323+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 335+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 348+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 360+random(rp5, rp6), 9, 9);

    ellipse(730+random(rp5, rp6), 373+random(rp5, rp6), 9, 9);

    ellipse(743+random(rp5, rp6), 373+random(rp5, rp6), 9, 9);

    ellipse(756+random(rp5, rp6), 373+random(rp5, rp6), 9, 9);

    //-----------------------------1st--------------------------------------

    ellipse(169+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(144+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(156+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(348+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(169+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(182+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(195+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(207+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(220+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(233+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(246+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(258+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(271+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(284+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(348+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(360+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(348+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(360+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(348+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(309+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(322+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(297+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(309+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(322+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(335+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    //  ellipse(501+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    //  ellipse(513+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);
    //
    //  ellipse(539+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    //  ellipse(552+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);
    //
    //  ellipse(501+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);
    //
    //  ellipse(513+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    //  ellipse(539+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);
    //
    //  ellipse(501+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);
    //
    //  ellipse(513+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    //  ellipse(577+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(501+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(513+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(526+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(501+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(513+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(526+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(501+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(513+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(526+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(450+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(462+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(475+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(488+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(501+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    //  ellipse(513+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);
    //
    //  ellipse(539+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(552+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(564+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(577+random(rp7, rp8), 398+random(rp7, rp8), 9, 9);

    ellipse(692+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(705+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(717+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(692+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(705+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(717+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    //  ellipse(501+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(513+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(539+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(552+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(564+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 410+random(rp7, rp8), 9, 9);
    //
    //  ellipse(501+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(513+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(526+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(539+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(552+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(564+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);
    //
    //  ellipse(577+random(rp7, rp8), 423+random(rp7, rp8), 9, 9);

    ellipse(692+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(705+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(717+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(794+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(807+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(781+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(794+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(807+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 223+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 235+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 248+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 260+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(819+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(832+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 273+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 285+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 298+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 310+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 323+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 335+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 348+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 360+random(rp7, rp8), 9, 9);

    ellipse(858+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(870+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    ellipse(883+random(rp7, rp8), 373+random(rp7, rp8), 9, 9);

    //-------------------------2st-----------------------------------------------
    ellipse(373+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 260+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 260+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 260+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 273+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 273+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 273+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(450+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 285+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(450+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(539+random(rp9, rp10), 260+random(rp9, rp10), 9, 9);

    ellipse(539+random(rp9, rp10), 273+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(450+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 323+random(rp9, rp10), 9, 9);

    ellipse(539+random(rp9, rp10), 323+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 335+random(rp9, rp10), 9, 9);

    ellipse(539+random(rp9, rp10), 335+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(539+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(552+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 323+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 323+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 323+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 335+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 335+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 335+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(462+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(475+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 385+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 385+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 385+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 398+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 398+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 410+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 410+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 410+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 410+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 410+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 423+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 460+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 473+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 485+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 498+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 498+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 498+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 510+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 510+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 510+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 523+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 523+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 523+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(348+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(360+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(373+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(386+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(399+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(411+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(424+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(743+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(756+random(rp9, rp10), 223+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(756+random(rp9, rp10), 235+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(615+random(rp9, rp10), 248+random(rp9, rp10), 9, 9);

    ellipse(705+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(717+random(rp9, rp10), 298+random(rp9, rp10), 9, 9);

    ellipse(692+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(705+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(717+random(rp9, rp10), 310+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 498+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 510+random(rp9, rp10), 9, 9);

    ellipse(488+random(rp9, rp10), 523+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 535+random(rp9, rp10), 9, 9);

    ellipse(437+random(rp9, rp10), 548+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(615+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(628+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(641+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(654+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(666+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(679+random(rp9, rp10), 348+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(615+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(628+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(641+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(654+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(666+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(679+random(rp9, rp10), 360+random(rp9, rp10), 9, 9);

    ellipse(603+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(615+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(628+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(641+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(654+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(666+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    ellipse(679+random(rp9, rp10), 373+random(rp9, rp10), 9, 9);

    //-----------------2, 3----------------------------------------------------------

    ellipse(564+random(rp11, rp12), 223, 9, 9);

    ellipse(577+random(rp11, rp12), 223+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 223+random(rp11, rp12), 9, 9);

    ellipse(577+random(rp11, rp12), 235+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 235+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 248+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 348+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 360+random(rp11, rp12), 9, 9);

    ellipse(590+random(rp11, rp12), 373+random(rp11, rp12), 9, 9);

    ellipse(450+random(rp11, rp12), 460+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 460+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 460+random(rp11, rp12), 9, 9);

    ellipse(488+random(rp11, rp12), 460+random(rp11, rp12), 9, 9);

    ellipse(450+random(rp11, rp12), 473+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 473+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 473+random(rp11, rp12), 9, 9);

    ellipse(488+random(rp11, rp12), 473+random(rp11, rp12), 9, 9);

    ellipse(450+random(rp11, rp12), 485+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 485+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 485+random(rp11, rp12), 9, 9);

    ellipse(488+random(rp11, rp12), 485+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 498+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 498+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 510+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 510+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 523+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 523+random(rp11, rp12), 9, 9);

    ellipse(450+random(rp11, rp12), 535+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 535+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 535+random(rp11, rp12), 9, 9);

    ellipse(488+random(rp11, rp12), 535+random(rp11, rp12), 9, 9);

    ellipse(450+random(rp11, rp12), 548+random(rp11, rp12), 9, 9);

    ellipse(462+random(rp11, rp12), 548+random(rp11, rp12), 9, 9);

    ellipse(475+random(rp11, rp12), 548+random(rp11, rp12), 9, 9);

    ellipse(488+random(rp11, rp12), 548+random(rp11, rp12), 9, 9);

    //-------------------------3rd--------------------------------------------------

    ellipse(590+random(rp13, rp14), 260+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 273+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 285+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 298+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 310+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 323+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 335+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 385+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 385+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 385+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 410+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 423+random(rp13, rp14), 9, 9);

    ellipse(501+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(501+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(501+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(450+random(rp13, rp14), 498+random(rp13, rp14), 9, 9);

    ellipse(450+random(rp13, rp14), 510+random(rp13, rp14), 9, 9);

    ellipse(450+random(rp13, rp14), 523+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(552+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(564+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(577+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 460+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(552+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(564+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(577+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 473+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(552+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(564+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(577+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 485+random(rp13, rp14), 9, 9);

    ellipse(501+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(552+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(564+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(577+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 535+random(rp13, rp14), 9, 9);

    ellipse(501+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(513+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(526+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(539+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(552+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(564+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(577+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(590+random(rp13, rp14), 548+random(rp13, rp14), 9, 9);

    ellipse(628, 535, 9, 9);

    ellipse(641, 535, 9, 9);

    ellipse(666, 535, 9, 9);

    ellipse(679, 535, 9, 9);

    ellipse(705, 535, 9, 9);

    ellipse(717, 535, 9, 9);

    ellipse(628, 548, 9, 9);

    ellipse(641, 548, 9, 9);

    ellipse(666, 548, 9, 9);

    ellipse(679, 548, 9, 9);

    ellipse(705, 548, 9, 9);

    ellipse(717, 548, 9, 9);

    //  //--------------------------------------------------------------------------
  
    ellipse(29, 173, 9, 9);
    //
    ellipse(42, 173, 9, 9);
    //
    ellipse(54, 173, 9, 9);
    //
    ellipse(67, 173, 9, 9);
    //
    ellipse(80, 173, 9, 9);
    //
    ellipse(93, 173, 9, 9);
    //
    ellipse(105, 173, 9, 9);
    //
    ellipse(118, 173, 9, 9);
    //
    ellipse(131, 173, 9, 9);
    //
    ellipse(144, 173, 9, 9);
    //
    ellipse(156, 173, 9, 9);
    //
    ellipse(169, 173, 9, 9);
    //
    ellipse(182, 173, 9, 9);
    //
    ellipse(195, 173, 9, 9);
    //
    ellipse(207, 173, 9, 9);
    //
    ellipse(220, 173, 9, 9);
    //
    ellipse(233, 173, 9, 9);
    //
    ellipse(246, 173, 9, 9);
    //
    ellipse(258, 173, 9, 9);
    //
    ellipse(271, 173, 9, 9);
    //
    ellipse(284, 173, 9, 9);
    //
    ellipse(297, 173, 9, 9);
    //
    ellipse(309, 173, 9, 9);
    //
    ellipse(322, 173, 9, 9);
    //
    ellipse(335, 173, 9, 9);
    //
    ellipse(348, 173, 9, 9);
    //
    ellipse(360, 173, 9, 9);
    //
    ellipse(373, 173, 9, 9);
    //
    ellipse(386, 173, 9, 9);
    //
    ellipse(399, 173, 9, 9);
    //
    ellipse(411, 173, 9, 9);
    //
    ellipse(424, 173, 9, 9);
    //
    ellipse(437, 173, 9, 9);
    //
    ellipse(450, 173, 9, 9);
    //
    ellipse(462, 173, 9, 9);
    //
    ellipse(475, 173, 9, 9);
    //
    ellipse(488, 173, 9, 9);
    //
    ellipse(501, 173, 9, 9);
    //
    ellipse(513, 173, 9, 9);
    //
    ellipse(526, 173, 9, 9);
    //
    ellipse(539, 173, 9, 9);
    //
    ellipse(552, 173, 9, 9);
    //
    ellipse(564, 173, 9, 9);
    //
    ellipse(577, 173, 9, 9);
    //
    ellipse(590, 173, 9, 9);
    //
    ellipse(603, 173, 9, 9);
    //
    ellipse(615, 173, 9, 9);
    //
    ellipse(628, 173, 9, 9);
    //
    ellipse(641, 173, 9, 9);
    //
    ellipse(654, 173, 9, 9);
    //
    ellipse(666, 173, 9, 9);
    //
    ellipse(679, 173, 9, 9);
    //
    ellipse(692, 173, 9, 9);
    //
    ellipse(705, 173, 9, 9);
    //
    ellipse(717, 173, 9, 9);
    //
    ellipse(730, 173, 9, 9);
    //
    ellipse(743, 173, 9, 9);
    //
    ellipse(756, 173, 9, 9);
    //
    ellipse(768, 173, 9, 9);
    //
    ellipse(781, 173, 9, 9);
    //
    ellipse(794, 173, 9, 9);
    //
    ellipse(807, 173, 9, 9);
    //
    ellipse(819, 173, 9, 9);
    //
    ellipse(832, 173, 9, 9);
    //
    ellipse(845, 173, 9, 9);
    //
    ellipse(858, 173, 9, 9);
    //
    ellipse(870, 173, 9, 9);
    //
    ellipse(883, 173, 9, 9);
    //
    ellipse(896, 173, 9, 9);
    //
    ellipse(909, 173, 9, 9);
    //
    ellipse(921, 173, 9, 9);
    //
    ellipse(934, 173, 9, 9);
    //
    ellipse(947, 173, 9, 9);
    //
    ellipse(960, 173, 9, 9);
    //
    ellipse(972, 173, 9, 9);
    //
    ellipse(985, 173, 9, 9);
    //
    ellipse(743, 185, 9, 9);
    //
    ellipse(756, 185, 9, 9);
    //
    ellipse(768, 185, 9, 9);
    //
    ellipse(781, 185, 9, 9);
    //
    ellipse(794, 185, 9, 9);
    //
    ellipse(807, 185, 9, 9);
    //
    ellipse(819, 185, 9, 9);
    //
    ellipse(832, 185, 9, 9);
    //
    ellipse(845, 185, 9, 9);
    //
    ellipse(858, 185, 9, 9);
    //
    ellipse(870, 185, 9, 9);
    //
    ellipse(883, 185, 9, 9);
    //
    ellipse(896, 185, 9, 9);
    //
    ellipse(909, 185, 9, 9);
    //
    ellipse(921, 185, 9, 9);
    //
    ellipse(934, 185, 9, 9);
    //
    ellipse(947, 185, 9, 9);
    //
    ellipse(960, 185, 9, 9);
    //
    ellipse(972, 185, 9, 9);
    //
    ellipse(985, 185, 9, 9);
    //
    ellipse(513, 185, 9, 9);
    //
    ellipse(526, 185, 9, 9);
    //
    ellipse(539, 185, 9, 9);
    //
    ellipse(552, 185, 9, 9);
    //
    ellipse(564, 185, 9, 9);
    //
    ellipse(577, 185, 9, 9);
    //
    ellipse(590, 185, 9, 9);
    //
    ellipse(603, 185, 9, 9);
    //
    ellipse(615, 185, 9, 9);
    //
    ellipse(628, 185, 9, 9);
    //
    ellipse(641, 185, 9, 9);
    //
    ellipse(654, 185, 9, 9);
    //
    ellipse(666, 185, 9, 9);
    //
    ellipse(679, 185, 9, 9);
    //
    ellipse(692, 185, 9, 9);
    //
    ellipse(705, 185, 9, 9);
    //
    ellipse(717, 185, 9, 9);
    //
    ellipse(730, 185, 9, 9);
    //
    ellipse(284, 185, 9, 9);
    //
    ellipse(297, 185, 9, 9);
    //
    ellipse(309, 185, 9, 9);
    //
    ellipse(322, 185, 9, 9);
    //
    ellipse(335, 185, 9, 9);
    //
    ellipse(348, 185, 9, 9);
    //
    ellipse(360, 185, 9, 9);
    //
    ellipse(373, 185, 9, 9);
    //
    ellipse(386, 185, 9, 9);
    //
    ellipse(399, 185, 9, 9);
    //
    ellipse(411, 185, 9, 9);
    //
    ellipse(424, 185, 9, 9);
    //
    ellipse(437, 185, 9, 9);
    //
    ellipse(450, 185, 9, 9);
    //
    ellipse(462, 185, 9, 9);
    //
    ellipse(475, 185, 9, 9);
    //
    ellipse(488, 185, 9, 9);
    //
    ellipse(501, 185, 9, 9);
    //
    ellipse(93, 185, 9, 9);
    //
    ellipse(105, 185, 9, 9);
    //
    ellipse(118, 185, 9, 9);
    //
    ellipse(131, 185, 9, 9);
    //
    ellipse(144, 185, 9, 9);
    //
    ellipse(156, 185, 9, 9);
    //
    ellipse(169, 185, 9, 9);
    //
    ellipse(182, 185, 9, 9);
    //
    ellipse(195, 185, 9, 9);
    //
    ellipse(207, 185, 9, 9);
    //
    ellipse(220, 185, 9, 9);
    //
    ellipse(233, 185, 9, 9);
    //
    ellipse(246, 185, 9, 9);
    //
    ellipse(258, 185, 9, 9);
    //
    ellipse(271, 185, 9, 9);
    //
    ellipse(29, 185, 9, 9);
    //
    ellipse(42, 185, 9, 9);
    //
    ellipse(54, 185, 9, 9);
    //
    ellipse(67, 185, 9, 9);
    //
    ellipse(80, 185, 9, 9);
    //
    ellipse(29, 198, 9, 9);
    //
    ellipse(42, 198, 9, 9);
    //
    ellipse(54, 198, 9, 9);
    //
    ellipse(67, 198, 9, 9);
    //
    ellipse(80, 198, 9, 9);
    //
    ellipse(93, 198, 9, 9);
    //
    ellipse(105, 198, 9, 9);
    //
    ellipse(118, 198, 9, 9);
    //
    ellipse(131, 198, 9, 9);
    //
    ellipse(144, 198, 9, 9);
    //
    ellipse(156, 198, 9, 9);
    //
    ellipse(169, 198, 9, 9);
    //
    ellipse(182, 198, 9, 9);
    //
    ellipse(195, 198, 9, 9);
    //
    ellipse(207, 198, 9, 9);
    //
    ellipse(220, 198, 9, 9);
    //
    ellipse(233, 198, 9, 9);
    //
    ellipse(246, 198, 9, 9);
    //
    ellipse(258, 198, 9, 9);
    //
    ellipse(271, 198, 9, 9);
    //
    ellipse(284, 198, 9, 9);
    //
    ellipse(297, 198, 9, 9);
    //
    ellipse(309, 198, 9, 9);
    //
    ellipse(322, 198, 9, 9);
    //
    ellipse(335, 198, 9, 9);
    //
    ellipse(348, 198, 9, 9);
    //
    ellipse(360, 198, 9, 9);
    //
    ellipse(373, 198, 9, 9);
    //
    ellipse(386, 198, 9, 9);
    //
    ellipse(399, 198, 9, 9);
    //
    ellipse(411, 198, 9, 9);
    //
    ellipse(424, 198, 9, 9);
    //
    ellipse(437, 198, 9, 9);
    //
    ellipse(450, 198, 9, 9);
    //
    ellipse(462, 198, 9, 9);
    //
    ellipse(475, 198, 9, 9);
    //
    ellipse(488, 198, 9, 9);
    //
    ellipse(501, 198, 9, 9);
    //
    ellipse(513, 198, 9, 9);
    //
    ellipse(526, 198, 9, 9);
    //
    ellipse(539, 198, 9, 9);
    //
    ellipse(552, 198, 9, 9);
    //
    ellipse(564, 198, 9, 9);
    //
    ellipse(577, 198, 9, 9);
    //
    ellipse(590, 198, 9, 9);
    //
    ellipse(603, 198, 9, 9);
    //
    ellipse(615, 198, 9, 9);
    //
    ellipse(628, 198, 9, 9);
    //
    ellipse(641, 198, 9, 9);
    //
    ellipse(654, 198, 9, 9);
    //
    ellipse(666, 198, 9, 9);
    //
    ellipse(679, 198, 9, 9);
    //
    ellipse(692, 198, 9, 9);
    //
    ellipse(705, 198, 9, 9);
    //
    ellipse(717, 198, 9, 9);
    //
    ellipse(730, 198, 9, 9);
    //
    ellipse(743, 198, 9, 9);
    //
    ellipse(756, 198, 9, 9);
    //
    ellipse(768, 198, 9, 9);
    //
    ellipse(781, 198, 9, 9);
    //
    ellipse(794, 198, 9, 9);
    //
    ellipse(807, 198, 9, 9);
    //
    ellipse(819, 198, 9, 9);
    //
    ellipse(832, 198, 9, 9);
    //
    ellipse(845, 198, 9, 9);
    //
    ellipse(858, 198, 9, 9);
    //
    ellipse(870, 198, 9, 9);
    //
    ellipse(883, 198, 9, 9);
    //
    ellipse(896, 198, 9, 9);
    //
    ellipse(909, 198, 9, 9);
    //
    ellipse(921, 198, 9, 9);
    //
    ellipse(934, 198, 9, 9);
    //
    ellipse(947, 198, 9, 9);
    //
    ellipse(960, 198, 9, 9);
    //
    ellipse(972, 198, 9, 9);
    //
    ellipse(985, 198, 9, 9);
    //
    ellipse(883, 210, 9, 9);
    //
    ellipse(896, 210, 9, 9);
    //
    ellipse(909, 210, 9, 9);
    //
    ellipse(921, 210, 9, 9);
    //
    ellipse(934, 210, 9, 9);
    //
    ellipse(947, 210, 9, 9);
    //
    ellipse(960, 210, 9, 9);
    //
    ellipse(972, 210, 9, 9);
    //
    ellipse(985, 210, 9, 9);
    //
    ellipse(654, 210, 9, 9);
    //
    ellipse(666, 210, 9, 9);
    //
    ellipse(679, 210, 9, 9);
    //
    ellipse(692, 210, 9, 9);
    //
    ellipse(705, 210, 9, 9);
    //
    ellipse(717, 210, 9, 9);
    //
    ellipse(730, 210, 9, 9);
    //
    ellipse(743, 210, 9, 9);
    //
    ellipse(756, 210, 9, 9);
    //
    ellipse(768, 210, 9, 9);
    //
    ellipse(781, 210, 9, 9);
    //
    ellipse(794, 210, 9, 9);
    //
    ellipse(807, 210, 9, 9);
    //
    ellipse(819, 210, 9, 9);
    //
    ellipse(832, 210, 9, 9);
    //
    ellipse(845, 210, 9, 9);
    //
    ellipse(858, 210, 9, 9);
    //
    ellipse(870, 210, 9, 9);
    //
    ellipse(437, 210, 9, 9);
    //
    ellipse(450, 210, 9, 9);
    //
    ellipse(462, 210, 9, 9);
    //
    ellipse(475, 210, 9, 9);
    //
    ellipse(488, 210, 9, 9);
    //
    ellipse(501, 210, 9, 9);
    //
    ellipse(513, 210, 9, 9);
    //
    ellipse(526, 210, 9, 9);
    //
    ellipse(539, 210, 9, 9);
    //
    ellipse(552, 210, 9, 9);
    //
    ellipse(564, 210, 9, 9);
    //
    ellipse(577, 210, 9, 9);
    //
    ellipse(590, 210, 9, 9);
    //
    ellipse(603, 210, 9, 9);
    //
    ellipse(615, 210, 9, 9);
    //
    ellipse(628, 210, 9, 9);
    //
    ellipse(641, 210, 9, 9);
    //
    ellipse(195, 210, 9, 9);
    //
    ellipse(207, 210, 9, 9);
    //
    ellipse(220, 210, 9, 9);
    //
    ellipse(233, 210, 9, 9);
    //
    ellipse(246, 210, 9, 9);
    //
    ellipse(258, 210, 9, 9);
    //
    ellipse(271, 210, 9, 9);
    //
    ellipse(284, 210, 9, 9);
    //
    ellipse(297, 210, 9, 9);
    //
    ellipse(309, 210, 9, 9);
    //
    ellipse(322, 210, 9, 9);
    //
    ellipse(335, 210, 9, 9);
    //
    ellipse(348, 210, 9, 9);
    //
    ellipse(360, 210, 9, 9);
    //
    ellipse(373, 210, 9, 9);
    //
    ellipse(386, 210, 9, 9);
    //
    ellipse(399, 210, 9, 9);
    //
    ellipse(411, 210, 9, 9);
    //
    ellipse(424, 210, 9, 9);
    //
    ellipse(29, 210, 9, 9);
    //
    ellipse(42, 210, 9, 9);
    //
    ellipse(54, 210, 9, 9);
    //
    ellipse(67, 210, 9, 9);
    //
    ellipse(80, 210, 9, 9);
    //
    ellipse(93, 210, 9, 9);
    //
    ellipse(105, 210, 9, 9);
    //
    ellipse(118, 210, 9, 9);
    //
    ellipse(131, 210, 9, 9);
    //
    ellipse(144, 210, 9, 9);
    //
    ellipse(156, 210, 9, 9);
    //
    ellipse(169, 210, 9, 9);
    //
    ellipse(182, 210, 9, 9);
    //
    ellipse(29, 223, 9, 9);
    //
    ellipse(42, 223, 9, 9);
    //
    ellipse(54, 223, 9, 9);
    //
    ellipse(67, 223, 9, 9);
    //
    ellipse(80, 223, 9, 9);
    //
    ellipse(93, 223, 9, 9);
    //
    ellipse(105, 223, 9, 9);
    //
    ellipse(118, 223, 9, 9);
    //
    ellipse(131, 223, 9, 9);
    //
    ellipse(144, 223, 9, 9);
    //
    ellipse(156, 223, 9, 9);
    //
    ellipse(297, 223, 9, 9);
    //
    ellipse(309, 223, 9, 9);
    //
    ellipse(322, 223, 9, 9);
    //
    ellipse(768, 223, 9, 9);
    //
    ellipse(781, 223, 9, 9);
    //
    ellipse(794, 223, 9, 9);
    //
    ellipse(807, 223, 9, 9);
    //
    ellipse(819, 223, 9, 9);
    //
    ellipse(832, 223, 9, 9);
    //
    ellipse(845, 223, 9, 9);
    //
    ellipse(896, 223, 9, 9);
    //
    ellipse(909, 223, 9, 9);
    //
    ellipse(921, 223, 9, 9);
    //
    ellipse(934, 223, 9, 9);
    //
    ellipse(947, 223, 9, 9);
    //
    ellipse(960, 223, 9, 9);
    //
    ellipse(972, 223, 9, 9);
    //
    ellipse(985, 223, 9, 9);
    //
    ellipse(768, 235, 9, 9);
    //
    ellipse(781, 235, 9, 9);
    //
    ellipse(794, 235, 9, 9);
    //
    ellipse(807, 235, 9, 9);
    //
    ellipse(819, 235, 9, 9);
    //
    ellipse(832, 235, 9, 9);
    //
    ellipse(845, 235, 9, 9);
    //
    ellipse(896, 235, 9, 9);
    //
    ellipse(909, 235, 9, 9);
    //
    ellipse(921, 235, 9, 9);
    //
    ellipse(934, 235, 9, 9);
    //
    ellipse(947, 235, 9, 9);
    //
    ellipse(960, 235, 9, 9);
    //
    ellipse(972, 235, 9, 9);
    //
    ellipse(985, 235, 9, 9);
    //
    ellipse(29, 235, 9, 9);
    //
    ellipse(42, 235, 9, 9);
    //
    ellipse(54, 235, 9, 9);
    //
    ellipse(67, 235, 9, 9);
    //
    ellipse(80, 235, 9, 9);
    //
    ellipse(93, 235, 9, 9);
    //
    ellipse(105, 235, 9, 9);
    //
    ellipse(118, 235, 9, 9);
    //
    ellipse(131, 235, 9, 9);
    //
    ellipse(144, 235, 9, 9);
    //
    ellipse(297, 235, 9, 9);
    //
    ellipse(309, 235, 9, 9);
    //
    ellipse(322, 235, 9, 9);
    //
    ellipse(29, 248, 9, 9);
    //
    ellipse(42, 248, 9, 9);
    //
    ellipse(54, 248, 9, 9);
    //
    ellipse(67, 248, 9, 9);
    //
    ellipse(80, 248, 9, 9);
    //
    ellipse(93, 248, 9, 9);
    //
    ellipse(105, 248, 9, 9);
    //
    ellipse(118, 248, 9, 9);
    //
    ellipse(131, 248, 9, 9);
    //
    ellipse(297, 248, 9, 9);
    //
    ellipse(309, 248, 9, 9);
    //
    ellipse(322, 248, 9, 9);
    //
    ellipse(768, 248, 9, 9);
    //
    ellipse(781, 248, 9, 9);
    //
    ellipse(794, 248, 9, 9);
    //
    ellipse(807, 248, 9, 9);
    //
    ellipse(896, 248, 9, 9);
    //
    ellipse(909, 248, 9, 9);
    //
    ellipse(921, 248, 9, 9);
    //
    ellipse(934, 248, 9, 9);
    //
    ellipse(947, 248, 9, 9);
    //
    ellipse(960, 248, 9, 9);
    //
    ellipse(972, 248, 9, 9);
    //
    ellipse(985, 248, 9, 9);
    //
    ellipse(845, 248, 9, 9);
    //
    ellipse(768, 260, 9, 9);
    //
    ellipse(781, 260, 9, 9);
    //
    ellipse(794, 260, 9, 9);
    //
    ellipse(807, 260, 9, 9);
    //
    ellipse(845, 260, 9, 9);
    //
    ellipse(896, 260, 9, 9);
    //
    ellipse(909, 260, 9, 9);
    //
    ellipse(921, 260, 9, 9);
    //
    ellipse(934, 260, 9, 9);
    //
    ellipse(947, 260, 9, 9);
    //
    ellipse(960, 260, 9, 9);
    //
    ellipse(972, 260, 9, 9);
    //
    ellipse(985, 260, 9, 9);
    //
    ellipse(373, 260, 9, 9);
    //
    ellipse(386, 260, 9, 9);
    //
    ellipse(399, 260, 9, 9);
    //
    ellipse(411, 260, 9, 9);
    //
    ellipse(424, 260, 9, 9);
    //
    ellipse(437, 260, 9, 9);
    //
    ellipse(450, 260, 9, 9);
    //
    ellipse(501, 260, 9, 9);
    //
    ellipse(513, 260, 9, 9);
    //
    ellipse(526, 260, 9, 9);
    //
    ellipse(603, 260, 9, 9);
    //
    ellipse(615, 260, 9, 9);
    //
    ellipse(628, 260, 9, 9);
    //
    ellipse(641, 260, 9, 9);
    //
    ellipse(654, 260, 9, 9);
    //
    ellipse(666, 260, 9, 9);
    //
    ellipse(679, 260, 9, 9);
    //
    ellipse(692, 260, 9, 9);
    //
    ellipse(705, 260, 9, 9);
    //
    ellipse(717, 260, 9, 9);
    //
    ellipse(42, 260, 9, 9);
    //
    ellipse(54, 260, 9, 9);
    //
    ellipse(67, 260, 9, 9);
    //
    ellipse(80, 260, 9, 9);
    //
    ellipse(93, 260, 9, 9);
    //
    ellipse(105, 260, 9, 9);
    //
    ellipse(118, 260, 9, 9);
    //
    ellipse(131, 260, 9, 9);
    //
    ellipse(182, 260, 9, 9);
    //
    ellipse(195, 260, 9, 9);
    //
    ellipse(207, 260, 9, 9);
    //
    ellipse(220, 260, 9, 9);
    //
    ellipse(233, 260, 9, 9);
    //
    ellipse(246, 260, 9, 9);
    //
    ellipse(258, 260, 9, 9);
    //
    ellipse(271, 260, 9, 9);
    //
    ellipse(284, 260, 9, 9);
    //
    ellipse(297, 260, 9, 9);
    //
    ellipse(309, 260, 9, 9);
    //
    ellipse(322, 260, 9, 9);
    //
    ellipse(29, 260, 9, 9);
    //
    ellipse(29, 273, 9, 9);
    //
    ellipse(42, 273, 9, 9);
    //
    ellipse(54, 273, 9, 9);
    //
    ellipse(67, 273, 9, 9);
    //
    ellipse(80, 273, 9, 9);
    //
    ellipse(93, 273, 9, 9);
    //
    ellipse(105, 273, 9, 9);
    //
    ellipse(118, 273, 9, 9);
    //
    ellipse(131, 273, 9, 9);
    //
    ellipse(182, 273, 9, 9);
    //
    ellipse(195, 273, 9, 9);
    //
    ellipse(207, 273, 9, 9);
    //
    ellipse(220, 273, 9, 9);
    //
    ellipse(233, 273, 9, 9);
    //
    ellipse(246, 273, 9, 9);
    //
    ellipse(258, 273, 9, 9);
    //
    ellipse(271, 273, 9, 9);
    //
    ellipse(284, 273, 9, 9);
    //
    ellipse(297, 273, 9, 9);
    //
    ellipse(309, 273, 9, 9);
    //
    ellipse(322, 273, 9, 9);
    //
    ellipse(373, 273, 9, 9);
    //
    ellipse(386, 273, 9, 9);
    //
    ellipse(399, 273, 9, 9);
    //
    ellipse(411, 273, 9, 9);
    //
    ellipse(424, 273, 9, 9);
    //
    ellipse(437, 273, 9, 9);
    //
    ellipse(450, 273, 9, 9);
    //
    ellipse(501, 273, 9, 9);
    //
    ellipse(513, 273, 9, 9);
    //
    ellipse(526, 273, 9, 9);
    //
    ellipse(603, 273, 9, 9);
    //
    ellipse(615, 273, 9, 9);
    //
    ellipse(628, 273, 9, 9);
    //
    ellipse(641, 273, 9, 9);
    //
    ellipse(654, 273, 9, 9);
    //
    ellipse(666, 273, 9, 9);
    //
    ellipse(679, 273, 9, 9);
    //
    ellipse(692, 273, 9, 9);
    //
    ellipse(705, 273, 9, 9);
    //
    ellipse(717, 273, 9, 9);
    //
    ellipse(768, 273, 9, 9);
    //
    ellipse(781, 273, 9, 9);
    //
    ellipse(794, 273, 9, 9);
    //
    ellipse(807, 273, 9, 9);
    //
    ellipse(845, 273, 9, 9);
    //
    ellipse(896, 273, 9, 9);
    //
    ellipse(909, 273, 9, 9);
    //
    ellipse(921, 273, 9, 9);
    //
    ellipse(934, 273, 9, 9);
    //
    ellipse(947, 273, 9, 9);
    //
    ellipse(960, 273, 9, 9);
    //
    ellipse(972, 273, 9, 9);
    //
    ellipse(985, 273, 9, 9);
    //
    ellipse(641, 285, 9, 9);
    //
    ellipse(654, 285, 9, 9);
    //
    ellipse(666, 285, 9, 9);
    //
    ellipse(679, 285, 9, 9);
    //
    ellipse(692, 285, 9, 9);
    //
    ellipse(705, 285, 9, 9);
    //
    ellipse(717, 285, 9, 9);
    //
    ellipse(768, 285, 9, 9);
    //
    ellipse(781, 285, 9, 9);
    //
    ellipse(794, 285, 9, 9);
    //
    ellipse(807, 285, 9, 9);
    //
    ellipse(845, 285, 9, 9);
    //
    ellipse(896, 285, 9, 9);
    //
    ellipse(909, 285, 9, 9);
    //
    ellipse(921, 285, 9, 9);
    //
    ellipse(934, 285, 9, 9);
    //
    ellipse(947, 285, 9, 9);
    //
    ellipse(960, 285, 9, 9);
    //
    ellipse(972, 285, 9, 9);
    //
    ellipse(985, 285, 9, 9);
    //
    ellipse(80, 285, 9, 9);
    //
    ellipse(93, 285, 9, 9);
    //
    ellipse(105, 285, 9, 9);
    //
    ellipse(118, 285, 9, 9);
    //
    ellipse(131, 285, 9, 9);
    //
    ellipse(182, 285, 9, 9);
    //
    ellipse(195, 285, 9, 9);
    //
    ellipse(207, 285, 9, 9);
    //
    ellipse(220, 285, 9, 9);
    //
    ellipse(233, 285, 9, 9);
    //
    ellipse(246, 285, 9, 9);
    //
    ellipse(258, 285, 9, 9);
    //
    ellipse(271, 285, 9, 9);
    //
    ellipse(284, 285, 9, 9);
    //
    ellipse(297, 285, 9, 9);
    //
    ellipse(309, 285, 9, 9);
    //
    ellipse(322, 285, 9, 9);
    //
    ellipse(603, 285, 9, 9);
    //
    ellipse(615, 285, 9, 9);
    //
    ellipse(628, 285, 9, 9);
    //
    ellipse(29, 285, 9, 9);
    //
    ellipse(42, 285, 9, 9);
    //
    ellipse(54, 285, 9, 9);
    //
    ellipse(67, 285, 9, 9);
    //
    ellipse(29, 298, 9, 9);
    //
    ellipse(42, 298, 9, 9);
    //
    ellipse(54, 298, 9, 9);
    //
    ellipse(67, 298, 9, 9);
    //
    ellipse(80, 298, 9, 9);
    //
    ellipse(93, 298, 9, 9);
    //
    ellipse(105, 298, 9, 9);
    //
    ellipse(118, 298, 9, 9);
    //
    ellipse(131, 298, 9, 9);
    //
    ellipse(182, 298, 9, 9);
    //
    ellipse(195, 298, 9, 9);
    //
    ellipse(207, 298, 9, 9);
    //
    ellipse(220, 298, 9, 9);
    //
    ellipse(233, 298, 9, 9);
    //
    ellipse(246, 298, 9, 9);
    //
    ellipse(258, 298, 9, 9);
    //
    ellipse(271, 298, 9, 9);
    //
    ellipse(284, 298, 9, 9);
    //
    ellipse(297, 298, 9, 9);
    //
    ellipse(603, 298, 9, 9);
    //
    ellipse(615, 298, 9, 9);
    //
    ellipse(628, 298, 9, 9);
    //
    ellipse(641, 298, 9, 9);
    //
    ellipse(654, 298, 9, 9);
    //
    ellipse(666, 298, 9, 9);
    //
    ellipse(679, 298, 9, 9);
    //
    ellipse(692, 298, 9, 9);
    //
    ellipse(768, 298, 9, 9);
    //
    ellipse(781, 298, 9, 9);
    //
    ellipse(845, 298, 9, 9);
    //
    ellipse(896, 298, 9, 9);
    //
    ellipse(909, 298, 9, 9);
    //
    ellipse(921, 298, 9, 9);
    //
    ellipse(934, 298, 9, 9);
    //
    ellipse(947, 298, 9, 9);
    //
    ellipse(960, 298, 9, 9);
    //
    ellipse(972, 298, 9, 9);
    //
    ellipse(985, 298, 9, 9);
    //
    ellipse(641, 310, 9, 9);
    //
    ellipse(654, 310, 9, 9);
    //
    ellipse(666, 310, 9, 9);
    //
    ellipse(679, 310, 9, 9);
    //
    ellipse(768, 310, 9, 9);
    //
    ellipse(781, 310, 9, 9);
    //
    ellipse(845, 310, 9, 9);
    //
    ellipse(896, 310, 9, 9);
    //
    ellipse(909, 310, 9, 9);
    //
    ellipse(921, 310, 9, 9);
    //
    ellipse(934, 310, 9, 9);
    //
    ellipse(947, 310, 9, 9);
    //
    ellipse(960, 310, 9, 9);
    //
    ellipse(972, 310, 9, 9);
    //
    ellipse(985, 310, 9, 9);
    //
    ellipse(42, 310, 9, 9);
    //
    ellipse(54, 310, 9, 9);
    //
    ellipse(67, 310, 9, 9);
    //
    ellipse(80, 310, 9, 9);
    //
    ellipse(93, 310, 9, 9);
    //
    ellipse(105, 310, 9, 9);
    //
    ellipse(118, 310, 9, 9);
    //
    ellipse(131, 310, 9, 9);
    //
    ellipse(182, 310, 9, 9);
    //
    ellipse(195, 310, 9, 9);
    //
    ellipse(207, 310, 9, 9);
    //
    ellipse(220, 310, 9, 9);
    //
    ellipse(233, 310, 9, 9);
    //
    ellipse(246, 310, 9, 9);
    //
    ellipse(258, 310, 9, 9);
    //
    ellipse(271, 310, 9, 9);
    //
    ellipse(284, 310, 9, 9);
    //
    ellipse(603, 310, 9, 9);
    //
    ellipse(615, 310, 9, 9);
    //
    ellipse(628, 310, 9, 9);
    //
    ellipse(29, 310, 9, 9);
    //
    ellipse(29, 323, 9, 9);
    //
    ellipse(42, 323, 9, 9);
    //
    ellipse(54, 323, 9, 9);
    //
    ellipse(67, 323, 9, 9);
    //
    ellipse(80, 323, 9, 9);
    //
    ellipse(93, 323, 9, 9);
    //
    ellipse(105, 323, 9, 9);
    //
    ellipse(118, 323, 9, 9);
    //
    ellipse(131, 323, 9, 9);
    //
    ellipse(182, 323, 9, 9);
    //
    ellipse(195, 323, 9, 9);
    //
    ellipse(207, 323, 9, 9);
    //
    ellipse(220, 323, 9, 9);
    //
    ellipse(233, 323, 9, 9);
    //
    ellipse(246, 323, 9, 9);
    //
    ellipse(258, 323, 9, 9);
    //
    ellipse(271, 323, 9, 9);
    //
    ellipse(284, 323, 9, 9);
    //
    ellipse(297, 323, 9, 9);
    //
    ellipse(309, 323, 9, 9);
    //
    ellipse(322, 323, 9, 9);
    //
    ellipse(386, 323, 9, 9);
    //
    ellipse(399, 323, 9, 9);
    //
    ellipse(411, 323, 9, 9);
    //
    ellipse(424, 323, 9, 9);
    //
    ellipse(437, 323, 9, 9);
    //
    ellipse(450, 323, 9, 9);
    //
    ellipse(501, 323, 9, 9);
    //
    ellipse(513, 323, 9, 9);
    //
    ellipse(526, 323, 9, 9);
    //
    ellipse(603, 323, 9, 9);
    //
    ellipse(615, 323, 9, 9);
    //
    ellipse(628, 323, 9, 9);
    //
    ellipse(641, 323, 9, 9);
    //
    ellipse(654, 323, 9, 9);
    //
    ellipse(666, 323, 9, 9);
    //
    ellipse(679, 323, 9, 9);
    //
    ellipse(692, 323, 9, 9);
    //
    ellipse(705, 323, 9, 9);
    //
    ellipse(717, 323, 9, 9);
    //
    ellipse(768, 323, 9, 9);
    //
    ellipse(781, 323, 9, 9);
    //
    ellipse(794, 323, 9, 9);
    //
    ellipse(807, 323, 9, 9);
    //
    ellipse(845, 323, 9, 9);
    //
    ellipse(896, 323, 9, 9);
    //
    ellipse(909, 323, 9, 9);
    //
    ellipse(921, 323, 9, 9);
    //
    ellipse(934, 323, 9, 9);
    //
    ellipse(947, 323, 9, 9);
    //
    ellipse(960, 323, 9, 9);
    //
    ellipse(972, 323, 9, 9);
    //
    ellipse(985, 323, 9, 9);
    //
    ellipse(921, 335, 9, 9);
    //
    ellipse(934, 335, 9, 9);
    //
    ellipse(947, 335, 9, 9);
    //
    ellipse(960, 335, 9, 9);
    //
    ellipse(972, 335, 9, 9);
    //
    ellipse(985, 335, 9, 9);
    //
    ellipse(501, 335, 9, 9);
    //
    ellipse(513, 335, 9, 9);
    //
    ellipse(526, 335, 9, 9);
    //
    ellipse(603, 335, 9, 9);
    //
    ellipse(615, 335, 9, 9);
    //
    ellipse(628, 335, 9, 9);
    //
    ellipse(641, 335, 9, 9);
    //
    ellipse(654, 335, 9, 9);
    //
    ellipse(666, 335, 9, 9);
    //
    ellipse(679, 335, 9, 9);
    //
    ellipse(692, 335, 9, 9);
    //
    ellipse(705, 335, 9, 9);
    //
    ellipse(717, 335, 9, 9);
    //
    ellipse(768, 335, 9, 9);
    //
    ellipse(781, 335, 9, 9);
    //
    ellipse(794, 335, 9, 9);
    //
    ellipse(807, 335, 9, 9);
    //
    ellipse(845, 335, 9, 9);
    //
    ellipse(896, 335, 9, 9);
    //
    ellipse(909, 335, 9, 9);
    //
    ellipse(182, 335, 9, 9);
    //
    ellipse(195, 335, 9, 9);
    //
    ellipse(207, 335, 9, 9);
    //
    ellipse(220, 335, 9, 9);
    //
    ellipse(233, 335, 9, 9);
    //
    ellipse(246, 335, 9, 9);
    //
    ellipse(258, 335, 9, 9);
    //
    ellipse(271, 335, 9, 9);
    //
    ellipse(284, 335, 9, 9);
    //
    ellipse(297, 335, 9, 9);
    //
    ellipse(309, 335, 9, 9);
    //
    ellipse(322, 335, 9, 9);
    //
    ellipse(386, 335, 9, 9);
    //
    ellipse(399, 335, 9, 9);
    //
    ellipse(411, 335, 9, 9);
    //
    ellipse(424, 335, 9, 9);
    //
    ellipse(437, 335, 9, 9);
    //
    ellipse(450, 335, 9, 9);
    //
    ellipse(29, 335, 9, 9);
    //
    ellipse(42, 335, 9, 9);
    //
    ellipse(54, 335, 9, 9);
    //
    ellipse(67, 335, 9, 9);
    //
    ellipse(80, 335, 9, 9);
    //
    ellipse(93, 335, 9, 9);
    //
    ellipse(105, 335, 9, 9);
    //
    ellipse(118, 335, 9, 9);
    //
    ellipse(131, 335, 9, 9);
    //
    ellipse(29, 348, 9, 9);
    //
    ellipse(42, 348, 9, 9);
    //
    ellipse(54, 348, 9, 9);
    //
    ellipse(67, 348, 9, 9);
    //
    ellipse(80, 348, 9, 9);
    //
    ellipse(93, 348, 9, 9);
    //
    ellipse(105, 348, 9, 9);
    //
    ellipse(118, 348, 9, 9);
    //
    ellipse(131, 348, 9, 9);
    //
    ellipse(297, 348, 9, 9);
    //
    ellipse(309, 348, 9, 9);
    //
    ellipse(322, 348, 9, 9);
    //
    ellipse(386, 348, 9, 9);
    //
    ellipse(399, 348, 9, 9);
    //
    ellipse(411, 348, 9, 9);
    //
    ellipse(424, 348, 9, 9);
    //
    ellipse(437, 348, 9, 9);
    //
    ellipse(450, 348, 9, 9);
    //
    ellipse(501, 348, 9, 9);
    //
    ellipse(513, 348, 9, 9);
    //
    ellipse(526, 348, 9, 9);
    //
    ellipse(692, 348, 9, 9);
    //
    ellipse(705, 348, 9, 9);
    //
    ellipse(717, 348, 9, 9);
    //
    ellipse(768, 348, 9, 9);
    //
    ellipse(781, 348, 9, 9);
    //
    ellipse(794, 348, 9, 9);
    //
    ellipse(807, 348, 9, 9);
    //
    ellipse(845, 348, 9, 9);
    //
    ellipse(896, 348, 9, 9);
    //
    ellipse(909, 348, 9, 9);
    //
    ellipse(921, 348, 9, 9);
    //
    ellipse(934, 348, 9, 9);
    //
    ellipse(947, 348, 9, 9);
    //
    ellipse(960, 348, 9, 9);
    //
    ellipse(972, 348, 9, 9);
    //
    ellipse(985, 348, 9, 9);
    //
    ellipse(807, 360, 9, 9);
    //
    ellipse(819, 360, 9, 9);
    //
    ellipse(832, 360, 9, 9);
    //
    ellipse(845, 360, 9, 9);
    //
    ellipse(896, 360, 9, 9);
    //
    ellipse(909, 360, 9, 9);
    //
    ellipse(921, 360, 9, 9);
    //
    ellipse(934, 360, 9, 9);
    //
    ellipse(947, 360, 9, 9);
    //
    ellipse(960, 360, 9, 9);
    //
    ellipse(972, 360, 9, 9);
    //
    ellipse(985, 360, 9, 9);
    //
    ellipse(297, 360, 9, 9);
    //
    ellipse(309, 360, 9, 9);
    //
    ellipse(322, 360, 9, 9);
    //
    ellipse(386, 360, 9, 9);
    //
    ellipse(399, 360, 9, 9);
    //
    ellipse(411, 360, 9, 9);
    //
    ellipse(424, 360, 9, 9);
    //
    ellipse(437, 360, 9, 9);
    //
    ellipse(450, 360, 9, 9);
    //
    ellipse(501, 360, 9, 9);
    //
    ellipse(513, 360, 9, 9);
    //
    ellipse(526, 360, 9, 9);
    //
    ellipse(539, 360, 9, 9);
    //
    ellipse(692, 360, 9, 9);
    //
    ellipse(705, 360, 9, 9);
    //
    ellipse(717, 360, 9, 9);
    //
    ellipse(768, 360, 9, 9);
    //
    ellipse(781, 360, 9, 9);
    //
    ellipse(794, 360, 9, 9);
    //
    ellipse(29, 360, 9, 9);
    //
    ellipse(42, 360, 9, 9);
    //
    ellipse(54, 360, 9, 9);
    //
    ellipse(67, 360, 9, 9);
    //
    ellipse(80, 360, 9, 9);
    //
    ellipse(93, 360, 9, 9);
    //
    ellipse(105, 360, 9, 9);
    //
    ellipse(118, 360, 9, 9);
    //
    ellipse(131, 360, 9, 9);
    //
    ellipse(144, 360, 9, 9);
    //
    ellipse(29, 373, 9, 9);
    //
    ellipse(42, 373, 9, 9);
    //
    ellipse(54, 373, 9, 9);
    //
    ellipse(67, 373, 9, 9);
    //
    ellipse(80, 373, 9, 9);
    //
    ellipse(93, 373, 9, 9);
    //
    ellipse(105, 373, 9, 9);
    //
    ellipse(118, 373, 9, 9);
    //
    ellipse(131, 373, 9, 9);
    //
    ellipse(144, 373, 9, 9);
    //
    ellipse(156, 373, 9, 9);
    //
    ellipse(297, 373, 9, 9);
    //
    ellipse(309, 373, 9, 9);
    //
    ellipse(322, 373, 9, 9);
    //
    ellipse(386, 373, 9, 9);
    //
    ellipse(399, 373, 9, 9);
    //
    ellipse(411, 373, 9, 9);
    //
    ellipse(424, 373, 9, 9);
    //
    ellipse(437, 373, 9, 9);
    //
    ellipse(450, 373, 9, 9);
    //
    ellipse(501, 373, 9, 9);
    //
    ellipse(513, 373, 9, 9);
    //
    ellipse(526, 373, 9, 9);
    //
    ellipse(539, 373, 9, 9);
    //
    ellipse(692, 373, 9, 9);
    //
    ellipse(705, 373, 9, 9);
    //
    ellipse(717, 373, 9, 9);
    //
    ellipse(768, 373, 9, 9);
    //
    ellipse(781, 373, 9, 9);
    //
    ellipse(794, 373, 9, 9);
    //
    ellipse(807, 373, 9, 9);
    //
    ellipse(819, 373, 9, 9);
    //
    ellipse(832, 373, 9, 9);
    //
    ellipse(845, 373, 9, 9);
    //
    ellipse(896, 373, 9, 9);
    //
    ellipse(909, 373, 9, 9);
    //
    ellipse(921, 373, 9, 9);
    //
    ellipse(934, 373, 9, 9);
    //
    ellipse(947, 373, 9, 9);
    //
    ellipse(960, 373, 9, 9);
    //
    ellipse(972, 373, 9, 9);
    //
    ellipse(985, 373, 9, 9);
    //
    ellipse(909, 385, 9, 9);
    //
    ellipse(921, 385, 9, 9);
    //
    ellipse(934, 385, 9, 9);
    //
    ellipse(947, 385, 9, 9);
    //
    ellipse(960, 385, 9, 9);
    //
    ellipse(972, 385, 9, 9);
    //
    ellipse(985, 385, 9, 9);
    //
    ellipse(654, 385, 9, 9);
    //
    ellipse(666, 385, 9, 9);
    //
    ellipse(679, 385, 9, 9);
    //
    ellipse(692, 385, 9, 9);
    //
    ellipse(705, 385, 9, 9);
    //
    ellipse(717, 385, 9, 9);
    //
    ellipse(730, 385, 9, 9);
    //
    ellipse(743, 385, 9, 9);
    //
    ellipse(756, 385, 9, 9);
    //
    ellipse(768, 385, 9, 9);
    //
    ellipse(781, 385, 9, 9);
    //
    ellipse(794, 385, 9, 9);
    //
    ellipse(807, 385, 9, 9);
    //
    ellipse(819, 385, 9, 9);
    //
    ellipse(832, 385, 9, 9);
    //
    ellipse(845, 385, 9, 9);
    //
    ellipse(858, 385, 9, 9);
    //
    ellipse(870, 385, 9, 9);
    //
    ellipse(883, 385, 9, 9);
    //
    ellipse(896, 385, 9, 9);
    //
    ellipse(322, 385, 9, 9);
    //
    ellipse(335, 385, 9, 9);
    //
    ellipse(348, 385, 9, 9);
    //
    ellipse(360, 385, 9, 9);
    //
    ellipse(373, 385, 9, 9);
    //
    ellipse(386, 385, 9, 9);
    //
    ellipse(399, 385, 9, 9);
    //
    ellipse(450, 385, 9, 9);
    //
    ellipse(462, 385, 9, 9);
    //
    ellipse(475, 385, 9, 9);
    //
    ellipse(488, 385, 9, 9);
    //
    ellipse(501, 385, 9, 9);
    //
    ellipse(552, 385, 9, 9);
    //
    ellipse(564, 385, 9, 9);
    //
    ellipse(577, 385, 9, 9);
    //
    ellipse(590, 385, 9, 9);
    //
    ellipse(603, 385, 9, 9);
    //
    ellipse(615, 385, 9, 9);
    //
    ellipse(628, 385, 9, 9);
    //
    ellipse(641, 385, 9, 9);
    //
    ellipse(93, 385, 9, 9);
    //
    ellipse(105, 385, 9, 9);
    //
    ellipse(118, 385, 9, 9);
    //
    ellipse(131, 385, 9, 9);
    //
    ellipse(144, 385, 9, 9);
    //
    ellipse(156, 385, 9, 9);
    //
    ellipse(169, 385, 9, 9);
    //
    ellipse(182, 385, 9, 9);
    //
    ellipse(195, 385, 9, 9);
    //
    ellipse(207, 385, 9, 9);
    //
    ellipse(220, 385, 9, 9);
    //
    ellipse(233, 385, 9, 9);
    //
    ellipse(246, 385, 9, 9);
    //
    ellipse(258, 385, 9, 9);
    //
    ellipse(271, 385, 9, 9);
    //
    ellipse(284, 385, 9, 9);
    //
    ellipse(297, 385, 9, 9);
    //
    ellipse(309, 385, 9, 9);
    //
    ellipse(29, 385, 9, 9);
    //
    ellipse(42, 385, 9, 9);
    //
    ellipse(54, 385, 9, 9);
    //
    ellipse(67, 385, 9, 9);
    //
    ellipse(80, 385, 9, 9);
    //
    ellipse(29, 398, 9, 9);
    //
    ellipse(42, 398, 9, 9);
    //
    ellipse(54, 398, 9, 9);
    //
    ellipse(67, 398, 9, 9);
    //
    ellipse(80, 398, 9, 9);
    //
    ellipse(93, 398, 9, 9);
    //
    ellipse(105, 398, 9, 9);
    //
    ellipse(118, 398, 9, 9);
    //
    ellipse(131, 398, 9, 9);
    //
    ellipse(144, 398, 9, 9);
    //
    ellipse(156, 398, 9, 9);
    //
    ellipse(169, 398, 9, 9);
    //
    ellipse(182, 398, 9, 9);
    //
    ellipse(195, 398, 9, 9);
    //
    ellipse(207, 398, 9, 9);
    //
    ellipse(654, 398, 9, 9);
    //
    ellipse(666, 398, 9, 9);
    //
    ellipse(679, 398, 9, 9);
    //
    ellipse(692, 398, 9, 9);
    //
    ellipse(705, 398, 9, 9);
    //
    ellipse(717, 398, 9, 9);
    //
    ellipse(730, 398, 9, 9);
    //
    ellipse(743, 398, 9, 9);
    //
    ellipse(756, 398, 9, 9);
    //
    ellipse(768, 398, 9, 9);
    //
    ellipse(781, 398, 9, 9);
    //
    ellipse(794, 398, 9, 9);
    //
    ellipse(807, 398, 9, 9);
    //
    ellipse(819, 398, 9, 9);
    //
    ellipse(832, 398, 9, 9);
    //
    ellipse(845, 398, 9, 9);
    //
    ellipse(858, 398, 9, 9);
    //
    ellipse(870, 398, 9, 9);
    //
    ellipse(883, 398, 9, 9);
    //
    ellipse(896, 398, 9, 9);
    //
    ellipse(909, 398, 9, 9);
    //
    ellipse(921, 398, 9, 9);
    //
    ellipse(934, 398, 9, 9);
    //
    ellipse(947, 398, 9, 9);
    //
    ellipse(960, 398, 9, 9);
    //
    ellipse(972, 398, 9, 9);
    //
    ellipse(985, 398, 9, 9);
    //
    ellipse(29, 410, 9, 9);
    //
    ellipse(42, 410, 9, 9);
    //
    ellipse(54, 410, 9, 9);
    //
    ellipse(67, 410, 9, 9);
    //
    ellipse(80, 410, 9, 9);
    //
    ellipse(93, 410, 9, 9);
    //
    ellipse(105, 410, 9, 9);
    //
    ellipse(118, 410, 9, 9);
    //
    ellipse(131, 410, 9, 9);
    //
    ellipse(144, 410, 9, 9);
    //
    ellipse(156, 410, 9, 9);
    //
    ellipse(169, 410, 9, 9);
    //
    ellipse(182, 410, 9, 9);
    //
    ellipse(195, 410, 9, 9);
    //
    ellipse(207, 410, 9, 9);
    //
    ellipse(220, 410, 9, 9);
    //
    ellipse(233, 410, 9, 9);
    //
    ellipse(246, 410, 9, 9);
    //
    ellipse(258, 410, 9, 9);
    //
    ellipse(271, 410, 9, 9);
    //
    ellipse(284, 410, 9, 9);
    //
    ellipse(297, 410, 9, 9);
    //
    ellipse(309, 410, 9, 9);
    //
    ellipse(322, 410, 9, 9);
    //
    ellipse(335, 410, 9, 9);
    //
    ellipse(348, 410, 9, 9);
    //
    ellipse(603, 410, 9, 9);
    //
    ellipse(615, 410, 9, 9);
    //
    ellipse(628, 410, 9, 9);
    //
    ellipse(641, 410, 9, 9);
    //
    ellipse(654, 410, 9, 9);
    //
    ellipse(666, 410, 9, 9);
    //
    ellipse(679, 410, 9, 9);
    //
    ellipse(692, 410, 9, 9);
    //
    ellipse(705, 410, 9, 9);
    //
    ellipse(717, 410, 9, 9);
    //
    ellipse(730, 410, 9, 9);
    //
    ellipse(743, 410, 9, 9);
    //
    ellipse(756, 410, 9, 9);
    //
    ellipse(768, 410, 9, 9);
    //
    ellipse(781, 410, 9, 9);
    //
    ellipse(794, 410, 9, 9);
    //
    ellipse(807, 410, 9, 9);
    //
    ellipse(819, 410, 9, 9);
    //
    ellipse(832, 410, 9, 9);
    //
    ellipse(845, 410, 9, 9);
    //
    ellipse(858, 410, 9, 9);
    //
    ellipse(870, 410, 9, 9);
    //
    ellipse(883, 410, 9, 9);
    //
    ellipse(896, 410, 9, 9);
    //
    ellipse(909, 410, 9, 9);
    //
    ellipse(921, 410, 9, 9);
    //
    ellipse(934, 410, 9, 9);
    //
    ellipse(947, 410, 9, 9);
    //
    ellipse(960, 410, 9, 9);
    //
    ellipse(972, 410, 9, 9);
    //
    ellipse(985, 410, 9, 9);
    //
    ellipse(29, 423, 9, 9);
    //
    ellipse(42, 423, 9, 9);
    //
    ellipse(54, 423, 9, 9);
    //
    ellipse(67, 423, 9, 9);
    //
    ellipse(80, 423, 9, 9);
    //
    ellipse(93, 423, 9, 9);
    //
    ellipse(105, 423, 9, 9);
    //
    ellipse(118, 423, 9, 9);
    //
    ellipse(131, 423, 9, 9);
    //
    ellipse(144, 423, 9, 9);
    //
    ellipse(156, 423, 9, 9);
    //
    ellipse(169, 423, 9, 9);
    //
    ellipse(182, 423, 9, 9);
    //
    ellipse(195, 423, 9, 9);
    //
    ellipse(207, 423, 9, 9);
    //
    ellipse(220, 423, 9, 9);
    //
    ellipse(233, 423, 9, 9);
    //
    ellipse(246, 423, 9, 9);
    //
    ellipse(258, 423, 9, 9);
    //
    ellipse(271, 423, 9, 9);
    //
    ellipse(284, 423, 9, 9);
    //
    ellipse(297, 423, 9, 9);
    //
    ellipse(309, 423, 9, 9);
    //
    ellipse(322, 423, 9, 9);
    //
    ellipse(335, 423, 9, 9);
    //
    ellipse(603, 423, 9, 9);
    //
    ellipse(615, 423, 9, 9);
    //
    ellipse(628, 423, 9, 9);
    //
    ellipse(641, 423, 9, 9);
    //
    ellipse(654, 423, 9, 9);
    //
    ellipse(666, 423, 9, 9);
    //
    ellipse(679, 423, 9, 9);
    //
    ellipse(692, 423, 9, 9);
    //
    ellipse(705, 423, 9, 9);
    //
    ellipse(717, 423, 9, 9);
    //
    ellipse(730, 423, 9, 9);
    //
    ellipse(743, 423, 9, 9);
    //
    ellipse(756, 423, 9, 9);
    //
    ellipse(768, 423, 9, 9);
    //
    ellipse(781, 423, 9, 9);
    //
    ellipse(794, 423, 9, 9);
    //
    ellipse(807, 423, 9, 9);
    //
    ellipse(819, 423, 9, 9);
    //
    ellipse(832, 423, 9, 9);
    //
    ellipse(845, 423, 9, 9);
    //
    ellipse(858, 423, 9, 9);
    //
    ellipse(870, 423, 9, 9);
    //
    ellipse(883, 423, 9, 9);
    //
    ellipse(896, 423, 9, 9);
    //
    ellipse(909, 423, 9, 9);
    //
    ellipse(921, 423, 9, 9);
    //
    ellipse(934, 423, 9, 9);
    //
    ellipse(947, 423, 9, 9);
    //
    ellipse(960, 423, 9, 9);
    //
    ellipse(972, 423, 9, 9);
    //
    ellipse(985, 423, 9, 9);
    //
    ellipse(768, 435, 9, 9);
    //
    ellipse(781, 435, 9, 9);
    //
    ellipse(794, 435, 9, 9);
    //
    ellipse(807, 435, 9, 9);
    //
    ellipse(819, 435, 9, 9);
    //
    ellipse(832, 435, 9, 9);
    //
    ellipse(845, 435, 9, 9);
    //
    ellipse(858, 435, 9, 9);
    //
    ellipse(870, 435, 9, 9);
    //
    ellipse(883, 435, 9, 9);
    //
    ellipse(896, 435, 9, 9);
    //
    ellipse(909, 435, 9, 9);
    //
    ellipse(921, 435, 9, 9);
    //
    ellipse(934, 435, 9, 9);
    //
    ellipse(947, 435, 9, 9);
    //
    ellipse(960, 435, 9, 9);
    //
    ellipse(972, 435, 9, 9);
    //
    ellipse(985, 435, 9, 9);
    //
    ellipse(513, 435, 9, 9);
    //
    ellipse(526, 435, 9, 9);
    //
    ellipse(539, 435, 9, 9);
    //
    ellipse(552, 435, 9, 9);
    //
    ellipse(564, 435, 9, 9);
    //
    ellipse(577, 435, 9, 9);
    //
    ellipse(590, 435, 9, 9);
    //
    ellipse(603, 435, 9, 9);
    //
    ellipse(615, 435, 9, 9);
    //
    ellipse(628, 435, 9, 9);
    //
    ellipse(641, 435, 9, 9);
    //
    ellipse(654, 435, 9, 9);
    //
    ellipse(666, 435, 9, 9);
    //
    ellipse(679, 435, 9, 9);
    //
    ellipse(692, 435, 9, 9);
    //
    ellipse(705, 435, 9, 9);
    //
    ellipse(717, 435, 9, 9);
    //
    ellipse(730, 435, 9, 9);
    //
    ellipse(743, 435, 9, 9);
    //
    ellipse(756, 435, 9, 9);
    //
    ellipse(258, 435, 9, 9);
    //
    ellipse(271, 435, 9, 9);
    //
    ellipse(284, 435, 9, 9);
    //
    ellipse(297, 435, 9, 9);
    //
    ellipse(309, 435, 9, 9);
    //
    ellipse(322, 435, 9, 9);
    //
    ellipse(335, 435, 9, 9);
    //
    ellipse(348, 435, 9, 9);
    //
    ellipse(360, 435, 9, 9);
    //
    ellipse(373, 435, 9, 9);
    //
    ellipse(386, 435, 9, 9);
    //
    ellipse(399, 435, 9, 9);
    //
    ellipse(411, 435, 9, 9);
    //
    ellipse(424, 435, 9, 9);
    //
    ellipse(437, 435, 9, 9);
    //
    ellipse(450, 435, 9, 9);
    //
    ellipse(462, 435, 9, 9);
    //
    ellipse(475, 435, 9, 9);
    //
    ellipse(488, 435, 9, 9);
    //
    ellipse(501, 435, 9, 9);
    //
    ellipse(29, 435, 9, 9);
    //
    ellipse(42, 435, 9, 9);
    //
    ellipse(54, 435, 9, 9);
    //
    ellipse(67, 435, 9, 9);
    //
    ellipse(80, 435, 9, 9);
    //
    ellipse(93, 435, 9, 9);
    //
    ellipse(105, 435, 9, 9);
    //
    ellipse(118, 435, 9, 9);
    //
    ellipse(131, 435, 9, 9);
    //
    ellipse(144, 435, 9, 9);
    //
    ellipse(156, 435, 9, 9);
    //
    ellipse(169, 435, 9, 9);
    //
    ellipse(182, 435, 9, 9);
    //
    ellipse(195, 435, 9, 9);
    //
    ellipse(207, 435, 9, 9);
    //
    ellipse(220, 435, 9, 9);
    //
    ellipse(233, 435, 9, 9);
    //
    ellipse(246, 435, 9, 9);
    //
    ellipse(29, 448, 9, 9);
    //
    ellipse(42, 448, 9, 9);
    //
    ellipse(54, 448, 9, 9);
    //
    ellipse(67, 448, 9, 9);
    //
    ellipse(80, 448, 9, 9);
    //
    ellipse(93, 448, 9, 9);
    //
    ellipse(105, 448, 9, 9);
    //
    ellipse(118, 448, 9, 9);
    //
    ellipse(131, 448, 9, 9);
    //
    ellipse(144, 448, 9, 9);
    //
    ellipse(156, 448, 9, 9);
    //
    ellipse(169, 448, 9, 9);
    //
    ellipse(182, 448, 9, 9);
    //
    ellipse(195, 448, 9, 9);
    //
    ellipse(207, 448, 9, 9);
    //
    ellipse(220, 448, 9, 9);
    //
    ellipse(233, 448, 9, 9);
    //
    ellipse(246, 448, 9, 9);
    //
    ellipse(258, 448, 9, 9);
    //
    ellipse(271, 448, 9, 9);
    //
    ellipse(284, 448, 9, 9);
    //
    ellipse(297, 448, 9, 9);
    //
    ellipse(309, 448, 9, 9);
    //
    ellipse(322, 448, 9, 9);
    //
    ellipse(335, 448, 9, 9);
    //
    ellipse(348, 448, 9, 9);
    //
    ellipse(360, 448, 9, 9);
    //
    ellipse(373, 448, 9, 9);
    //
    ellipse(386, 448, 9, 9);
    //
    ellipse(399, 448, 9, 9);
    //
    ellipse(411, 448, 9, 9);
    //
    ellipse(424, 448, 9, 9);
    //
    ellipse(437, 448, 9, 9);
    //
    ellipse(450, 448, 9, 9);
    //
    ellipse(462, 448, 9, 9);
    //
    ellipse(475, 448, 9, 9);
    //
    ellipse(488, 448, 9, 9);
    //
    ellipse(501, 448, 9, 9);
    //
    ellipse(513, 448, 9, 9);
    //
    ellipse(526, 448, 9, 9);
    //
    ellipse(539, 448, 9, 9);
    //
    ellipse(552, 448, 9, 9);
    //
    ellipse(564, 448, 9, 9);
    //
    ellipse(577, 448, 9, 9);
    //
    ellipse(590, 448, 9, 9);
    //
    ellipse(603, 448, 9, 9);
    //
    ellipse(615, 448, 9, 9);
    //
    ellipse(628, 448, 9, 9);
    //
    ellipse(641, 448, 9, 9);
    //
    ellipse(654, 448, 9, 9);
    //
    ellipse(666, 448, 9, 9);
    //
    ellipse(679, 448, 9, 9);
    //
    ellipse(692, 448, 9, 9);
    //
    ellipse(705, 448, 9, 9);
    //
    ellipse(717, 448, 9, 9);
    //
    ellipse(730, 448, 9, 9);
    //
    ellipse(743, 448, 9, 9);
    //
    ellipse(756, 448, 9, 9);
    //
    ellipse(768, 448, 9, 9);
    //
    ellipse(781, 448, 9, 9);
    //
    ellipse(794, 448, 9, 9);
    //
    ellipse(807, 448, 9, 9);
    //
    ellipse(819, 448, 9, 9);
    //
    ellipse(832, 448, 9, 9);
    //
    ellipse(845, 448, 9, 9);
    //
    ellipse(858, 448, 9, 9);
    //
    ellipse(870, 448, 9, 9);
    //
    ellipse(883, 448, 9, 9);
    //
    ellipse(896, 448, 9, 9);
    //
    ellipse(909, 448, 9, 9);
    //
    ellipse(921, 448, 9, 9);
    //
    ellipse(934, 448, 9, 9);
    //
    ellipse(947, 448, 9, 9);
    //
    ellipse(960, 448, 9, 9);
    //
    ellipse(972, 448, 9, 9);
    //
    ellipse(985, 448, 9, 9);
    //
    ellipse(921, 460, 9, 9);
    //
    ellipse(934, 460, 9, 9);
    //
    ellipse(947, 460, 9, 9);
    //
    ellipse(960, 460, 9, 9);
    //
    ellipse(972, 460, 9, 9);
    //
    ellipse(985, 460, 9, 9);
    //
    ellipse(666, 460, 9, 9);
    //
    ellipse(679, 460, 9, 9);
    //
    ellipse(692, 460, 9, 9);
    //
    ellipse(705, 460, 9, 9);
    //
    ellipse(717, 460, 9, 9);
    //
    ellipse(730, 460, 9, 9);
    //
    ellipse(743, 460, 9, 9);
    //
    ellipse(756, 460, 9, 9);
    //
    ellipse(768, 460, 9, 9);
    //
    ellipse(781, 460, 9, 9);
    //
    ellipse(794, 460, 9, 9);
    //
    ellipse(807, 460, 9, 9);
    //
    ellipse(819, 460, 9, 9);
    //
    ellipse(832, 460, 9, 9);
    //
    ellipse(845, 460, 9, 9);
    //
    ellipse(858, 460, 9, 9);
    //
    ellipse(870, 460, 9, 9);
    //
    ellipse(883, 460, 9, 9);
    //
    ellipse(896, 460, 9, 9);
    //
    ellipse(909, 460, 9, 9);
    //
    ellipse(156, 460, 9, 9);
    //
    ellipse(169, 460, 9, 9);
    //
    ellipse(182, 460, 9, 9);
    //
    ellipse(195, 460, 9, 9);
    //
    ellipse(207, 460, 9, 9);
    //
    ellipse(220, 460, 9, 9);
    //
    ellipse(233, 460, 9, 9);
    //
    ellipse(246, 460, 9, 9);
    //
    ellipse(258, 460, 9, 9);
    //
    ellipse(271, 460, 9, 9);
    //
    ellipse(284, 460, 9, 9);
    //
    ellipse(297, 460, 9, 9);
    //
    ellipse(309, 460, 9, 9);
    //
    ellipse(322, 460, 9, 9);
    //
    ellipse(335, 460, 9, 9);
    //
    ellipse(603, 460, 9, 9);
    //
    ellipse(615, 460, 9, 9);
    //
    ellipse(628, 460, 9, 9);
    //
    ellipse(641, 460, 9, 9);
    //
    ellipse(654, 460, 9, 9);
    //
    ellipse(29, 460, 9, 9);
    //
    ellipse(42, 460, 9, 9);
    //
    ellipse(54, 460, 9, 9);
    //
    ellipse(67, 460, 9, 9);
    //
    ellipse(80, 460, 9, 9);
    //
    ellipse(93, 460, 9, 9);
    //
    ellipse(105, 460, 9, 9);
    //
    ellipse(118, 460, 9, 9);
    //
    ellipse(131, 460, 9, 9);
    //
    ellipse(144, 460, 9, 9);
    //
    ellipse(29, 473, 9, 9);
    //
    ellipse(42, 473, 9, 9);
    //
    ellipse(54, 473, 9, 9);
    //
    ellipse(67, 473, 9, 9);
    //
    ellipse(80, 473, 9, 9);
    //
    ellipse(93, 473, 9, 9);
    //
    ellipse(105, 473, 9, 9);
    //
    ellipse(118, 473, 9, 9);
    //
    ellipse(131, 473, 9, 9);
    //
    ellipse(144, 473, 9, 9);
    //
    ellipse(156, 473, 9, 9);
    //
    ellipse(169, 473, 9, 9);
    //
    ellipse(182, 473, 9, 9);
    //
    ellipse(195, 473, 9, 9);
    //
    ellipse(207, 473, 9, 9);
    //
    ellipse(220, 473, 9, 9);
    //
    ellipse(233, 473, 9, 9);
    //
    ellipse(246, 473, 9, 9);
    //
    ellipse(258, 473, 9, 9);
    //
    ellipse(271, 473, 9, 9);
    //
    ellipse(284, 473, 9, 9);
    //
    ellipse(297, 473, 9, 9);
    //
    ellipse(309, 473, 9, 9);
    //
    ellipse(322, 473, 9, 9);
    //
    ellipse(335, 473, 9, 9);
    //
    ellipse(603, 473, 9, 9);
    //
    ellipse(615, 473, 9, 9);
    //
    ellipse(628, 473, 9, 9);
    //
    ellipse(641, 473, 9, 9);
    //
    ellipse(654, 473, 9, 9);
    //
    ellipse(666, 473, 9, 9);
    //
    ellipse(679, 473, 9, 9);
    //
    ellipse(692, 473, 9, 9);
    //
    ellipse(705, 473, 9, 9);
    //
    ellipse(717, 473, 9, 9);
    //
    ellipse(730, 473, 9, 9);
    //
    ellipse(743, 473, 9, 9);
    //
    ellipse(756, 473, 9, 9);
    //
    ellipse(768, 473, 9, 9);
    //
    ellipse(781, 473, 9, 9);
    //
    ellipse(794, 473, 9, 9);
    //
    ellipse(807, 473, 9, 9);
    //
    ellipse(819, 473, 9, 9);
    //
    ellipse(832, 473, 9, 9);
    //
    ellipse(845, 473, 9, 9);
    //
    ellipse(858, 473, 9, 9);
    //
    ellipse(870, 473, 9, 9);
    //
    ellipse(883, 473, 9, 9);
    //
    ellipse(896, 473, 9, 9);
    //
    ellipse(909, 473, 9, 9);
    //
    ellipse(921, 473, 9, 9);
    //
    ellipse(934, 473, 9, 9);
    //
    ellipse(947, 473, 9, 9);
    //
    ellipse(960, 473, 9, 9);
    //
    ellipse(972, 473, 9, 9);
    //
    ellipse(985, 473, 9, 9);
    //
    ellipse(819, 485, 9, 9);
    //
    ellipse(832, 485, 9, 9);
    //
    ellipse(845, 485, 9, 9);
    //
    ellipse(858, 485, 9, 9);
    //
    ellipse(870, 485, 9, 9);
    //
    ellipse(883, 485, 9, 9);
    //
    ellipse(896, 485, 9, 9);
    //
    ellipse(909, 485, 9, 9);
    //
    ellipse(921, 485, 9, 9);
    //
    ellipse(934, 485, 9, 9);
    //
    ellipse(947, 485, 9, 9);
    //
    ellipse(960, 485, 9, 9);
    //
    ellipse(972, 485, 9, 9);
    //
    ellipse(985, 485, 9, 9);
    //
    ellipse(603, 485, 9, 9);
    //
    ellipse(615, 485, 9, 9);
    //
    ellipse(628, 485, 9, 9);
    //
    ellipse(641, 485, 9, 9);
    //
    ellipse(654, 485, 9, 9);
    //
    ellipse(666, 485, 9, 9);
    //
    ellipse(679, 485, 9, 9);
    //
    ellipse(692, 485, 9, 9);
    //
    ellipse(705, 485, 9, 9);
    //
    ellipse(717, 485, 9, 9);
    //
    ellipse(730, 485, 9, 9);
    //
    ellipse(743, 485, 9, 9);
    //
    ellipse(756, 485, 9, 9);
    //
    ellipse(768, 485, 9, 9);
    //
    ellipse(781, 485, 9, 9);
    //
    ellipse(794, 485, 9, 9);
    //
    ellipse(807, 485, 9, 9);
    //
    ellipse(93, 485, 9, 9);
    //
    ellipse(105, 485, 9, 9);
    //
    ellipse(118, 485, 9, 9);
    //
    ellipse(131, 485, 9, 9);
    //
    ellipse(144, 485, 9, 9);
    //
    ellipse(156, 485, 9, 9);
    //
    ellipse(169, 485, 9, 9);
    //
    ellipse(182, 485, 9, 9);
    //
    ellipse(195, 485, 9, 9);
    //
    ellipse(207, 485, 9, 9);
    //
    ellipse(220, 485, 9, 9);
    //
    ellipse(233, 485, 9, 9);
    //
    ellipse(246, 485, 9, 9);
    //
    ellipse(258, 485, 9, 9);
    //
    ellipse(271, 485, 9, 9);
    //
    ellipse(284, 485, 9, 9);
    //
    ellipse(297, 485, 9, 9);
    //
    ellipse(309, 485, 9, 9);
    //
    ellipse(322, 485, 9, 9);
    //
    ellipse(335, 485, 9, 9);
    //
    ellipse(29, 485, 9, 9);
    //
    ellipse(42, 485, 9, 9);
    //
    ellipse(54, 485, 9, 9);
    //
    ellipse(67, 485, 9, 9);
    //
    ellipse(80, 485, 9, 9);
    //
    ellipse(29, 498, 9, 9);
    //
    ellipse(42, 498, 9, 9);
    //
    ellipse(54, 498, 9, 9);
    //
    ellipse(67, 498, 9, 9);
    //
    ellipse(80, 498, 9, 9);
    //
    ellipse(93, 498, 9, 9);
    //
    ellipse(105, 498, 9, 9);
    //
    ellipse(118, 498, 9, 9);
    //
    ellipse(131, 498, 9, 9);
    //
    ellipse(144, 498, 9, 9);
    //
    ellipse(156, 498, 9, 9);
    //
    ellipse(169, 498, 9, 9);
    //
    ellipse(182, 498, 9, 9);
    //
    ellipse(195, 498, 9, 9);
    //
    ellipse(207, 498, 9, 9);
    //
    ellipse(220, 498, 9, 9);
    //
    ellipse(233, 498, 9, 9);
    //
    ellipse(246, 498, 9, 9);
    //
    ellipse(258, 498, 9, 9);
    //
    ellipse(271, 498, 9, 9);
    //
    ellipse(284, 498, 9, 9);
    //
    ellipse(297, 498, 9, 9);
    //
    ellipse(309, 498, 9, 9);
    //
    ellipse(322, 498, 9, 9);
    //
    ellipse(335, 498, 9, 9);
    //
    ellipse(386, 498, 9, 9);
    //
    ellipse(399, 498, 9, 9);
    //
    ellipse(411, 498, 9, 9);
    //
    ellipse(424, 498, 9, 9);
    //
    ellipse(437, 498, 9, 9);
    //
    ellipse(501, 498, 9, 9);
    //
    ellipse(513, 498, 9, 9);
    //
    ellipse(526, 498, 9, 9);
    //
    ellipse(539, 498, 9, 9);
    //
    ellipse(552, 498, 9, 9);
    //
    ellipse(564, 498, 9, 9);
    //
    ellipse(577, 498, 9, 9);
    //
    ellipse(590, 498, 9, 9);
    //
    ellipse(603, 498, 9, 9);
    //
    ellipse(615, 498, 9, 9);
    //
    ellipse(628, 498, 9, 9);
    //
    ellipse(641, 498, 9, 9);
    //
    ellipse(654, 498, 9, 9);
    //
    ellipse(666, 498, 9, 9);
    //
    ellipse(679, 498, 9, 9);
    //
    ellipse(692, 498, 9, 9);
    //
    ellipse(705, 498, 9, 9);
    //
    ellipse(717, 498, 9, 9);
    //
    ellipse(730, 498, 9, 9);
    //
    ellipse(743, 498, 9, 9);
    //
    ellipse(756, 498, 9, 9);
    //
    ellipse(768, 498, 9, 9);
    //
    ellipse(781, 498, 9, 9);
    //
    ellipse(794, 498, 9, 9);
    //
    ellipse(807, 498, 9, 9);
    //
    ellipse(819, 498, 9, 9);
    //
    ellipse(832, 498, 9, 9);
    //
    ellipse(845, 498, 9, 9);
    //
    ellipse(858, 498, 9, 9);
    //
    ellipse(870, 498, 9, 9);
    //
    ellipse(883, 498, 9, 9);
    //
    ellipse(896, 498, 9, 9);
    //
    ellipse(909, 498, 9, 9);
    //
    ellipse(921, 498, 9, 9);
    //
    ellipse(934, 498, 9, 9);
    //
    ellipse(947, 498, 9, 9);
    //
    ellipse(960, 498, 9, 9);
    //
    ellipse(972, 498, 9, 9);
    //
    ellipse(985, 498, 9, 9);
    //
    ellipse(921, 510, 9, 9);
    //
    ellipse(934, 510, 9, 9);
    //
    ellipse(947, 510, 9, 9);
    //
    ellipse(960, 510, 9, 9);
    //
    ellipse(972, 510, 9, 9);
    //
    ellipse(985, 510, 9, 9);
    //
    ellipse(692, 510, 9, 9);
    //
    ellipse(705, 510, 9, 9);
    //
    ellipse(717, 510, 9, 9);
    //
    ellipse(730, 510, 9, 9);
    //
    ellipse(743, 510, 9, 9);
    //
    ellipse(756, 510, 9, 9);
    //
    ellipse(768, 510, 9, 9);
    //
    ellipse(781, 510, 9, 9);
    //
    ellipse(794, 510, 9, 9);
    //
    ellipse(807, 510, 9, 9);
    //
    ellipse(819, 510, 9, 9);
    //
    ellipse(832, 510, 9, 9);
    //
    ellipse(845, 510, 9, 9);
    //
    ellipse(858, 510, 9, 9);
    //
    ellipse(870, 510, 9, 9);
    //
    ellipse(883, 510, 9, 9);
    //
    ellipse(896, 510, 9, 9);
    //
    ellipse(909, 510, 9, 9);
    //
    ellipse(386, 510, 9, 9);
    //
    ellipse(399, 510, 9, 9);
    //
    ellipse(411, 510, 9, 9);
    //
    ellipse(424, 510, 9, 9);
    //
    ellipse(437, 510, 9, 9);
    //
    ellipse(501, 510, 9, 9);
    //
    ellipse(513, 510, 9, 9);
    //
    ellipse(526, 510, 9, 9);
    //
    ellipse(539, 510, 9, 9);
    //
    ellipse(552, 510, 9, 9);
    //
    ellipse(564, 510, 9, 9);
    //
    ellipse(577, 510, 9, 9);
    //
    ellipse(590, 510, 9, 9);
    //
    ellipse(603, 510, 9, 9);
    //
    ellipse(615, 510, 9, 9);
    //
    ellipse(628, 510, 9, 9);
    //
    ellipse(641, 510, 9, 9);
    //
    ellipse(654, 510, 9, 9);
    //
    ellipse(666, 510, 9, 9);
    //
    ellipse(679, 510, 9, 9);
    //
    ellipse(105, 510, 9, 9);
    //
    ellipse(118, 510, 9, 9);
    //
    ellipse(131, 510, 9, 9);
    //
    ellipse(144, 510, 9, 9);
    //
    ellipse(156, 510, 9, 9);
    //
    ellipse(169, 510, 9, 9);
    //
    ellipse(182, 510, 9, 9);
    //
    ellipse(195, 510, 9, 9);
    //
    ellipse(207, 510, 9, 9);
    //
    ellipse(220, 510, 9, 9);
    //
    ellipse(233, 510, 9, 9);
    //
    ellipse(246, 510, 9, 9);
    //
    ellipse(258, 510, 9, 9);
    //
    ellipse(271, 510, 9, 9);
    //
    ellipse(284, 510, 9, 9);
    //
    ellipse(297, 510, 9, 9);
    //
    ellipse(309, 510, 9, 9);
    //
    ellipse(322, 510, 9, 9);
    //
    ellipse(335, 510, 9, 9);
    //
    ellipse(29, 510, 9, 9);
    //
    ellipse(42, 510, 9, 9);
    //
    ellipse(54, 510, 9, 9);
    //
    ellipse(67, 510, 9, 9);
    //
    ellipse(80, 510, 9, 9);
    //
    ellipse(93, 510, 9, 9);
    //
    ellipse(29, 523, 9, 9);
    //
    ellipse(42, 523, 9, 9);
    //
    ellipse(54, 523, 9, 9);
    //
    ellipse(67, 523, 9, 9);
    //
    ellipse(80, 523, 9, 9);
    //
    ellipse(93, 523, 9, 9);
    //
    ellipse(105, 523, 9, 9);
    //
    ellipse(118, 523, 9, 9);
    //
    ellipse(131, 523, 9, 9);
    //
    ellipse(144, 523, 9, 9);
    //
    ellipse(156, 523, 9, 9);
    //
    ellipse(169, 523, 9, 9);
    //
    ellipse(182, 523, 9, 9);
    //
    ellipse(195, 523, 9, 9);
    //
    ellipse(207, 523, 9, 9);
    //
    ellipse(220, 523, 9, 9);
    //
    ellipse(233, 523, 9, 9);
    //
    ellipse(246, 523, 9, 9);
    //
    ellipse(258, 523, 9, 9);
    //
    ellipse(271, 523, 9, 9);
    //
    ellipse(284, 523, 9, 9);
    //
    ellipse(297, 523, 9, 9);
    //
    ellipse(309, 523, 9, 9);
    //
    ellipse(322, 523, 9, 9);
    //
    ellipse(335, 523, 9, 9);
    //
    ellipse(386, 523, 9, 9);
    //
    ellipse(399, 523, 9, 9);
    //
    ellipse(411, 523, 9, 9);
    //
    ellipse(424, 523, 9, 9);
    //
    ellipse(437, 523, 9, 9);
    //
    ellipse(501, 523, 9, 9);
    //
    ellipse(513, 523, 9, 9);
    //
    ellipse(526, 523, 9, 9);
    //
    ellipse(539, 523, 9, 9);
    //
    ellipse(552, 523, 9, 9);
    //
    ellipse(564, 523, 9, 9);
    //
    ellipse(577, 523, 9, 9);
    //
    ellipse(590, 523, 9, 9);
    //
    ellipse(603, 523, 9, 9);
    //
    ellipse(615, 523, 9, 9);
    //
    ellipse(628, 523, 9, 9);
    //
    ellipse(641, 523, 9, 9);
    //
    ellipse(654, 523, 9, 9);
    //
    ellipse(666, 523, 9, 9);
    //
    ellipse(679, 523, 9, 9);
    //
    ellipse(692, 523, 9, 9);
    //
    ellipse(705, 523, 9, 9);
    //
    ellipse(717, 523, 9, 9);
    //
    ellipse(730, 523, 9, 9);
    //
    ellipse(743, 523, 9, 9);
    //
    ellipse(756, 523, 9, 9);
    //
    ellipse(768, 523, 9, 9);
    //
    ellipse(781, 523, 9, 9);
    //
    ellipse(794, 523, 9, 9);
    //
    ellipse(807, 523, 9, 9);
    //
    ellipse(819, 523, 9, 9);
    //
    ellipse(832, 523, 9, 9);
    //
    ellipse(845, 523, 9, 9);
    //
    ellipse(858, 523, 9, 9);
    //
    ellipse(870, 523, 9, 9);
    //
    ellipse(883, 523, 9, 9);
    //
    ellipse(896, 523, 9, 9);
    //
    ellipse(909, 523, 9, 9);
    //
    ellipse(921, 523, 9, 9);
    //
    ellipse(934, 523, 9, 9);
    //
    ellipse(947, 523, 9, 9);
    //
    ellipse(960, 523, 9, 9);
    //
    ellipse(972, 523, 9, 9);
    //
    ellipse(985, 523, 9, 9);
    //
    ellipse(934, 535, 9, 9);
    //
    ellipse(947, 535, 9, 9);
    //
    ellipse(960, 535, 9, 9);
    //
    ellipse(972, 535, 9, 9);
    //
    ellipse(985, 535, 9, 9);
    //
    ellipse(603, 535, 9, 9);
    //
    ellipse(615, 535, 9, 9);
    //
    ellipse(654, 535, 9, 9);
    //
    ellipse(692, 535, 9, 9);
    //
    ellipse(730, 535, 9, 9);
    //
    ellipse(743, 535, 9, 9);
    //
    ellipse(756, 535, 9, 9);
    //
    ellipse(768, 535, 9, 9);
    //
    ellipse(781, 535, 9, 9);
    //
    ellipse(794, 535, 9, 9);
    //
    ellipse(807, 535, 9, 9);
    //
    ellipse(819, 535, 9, 9);
    //
    ellipse(832, 535, 9, 9);
    //
    ellipse(845, 535, 9, 9);
    //
    ellipse(858, 535, 9, 9);
    //
    ellipse(870, 535, 9, 9);
    //
    ellipse(883, 535, 9, 9);
    //
    ellipse(896, 535, 9, 9);
    //
    ellipse(909, 535, 9, 9);
    //
    ellipse(921, 535, 9, 9);
    //
    ellipse(93, 535, 9, 9);
    //
    ellipse(105, 535, 9, 9);
    //
    ellipse(118, 535, 9, 9);
    //
    ellipse(131, 535, 9, 9);
    //
    ellipse(144, 535, 9, 9);
    //
    ellipse(156, 535, 9, 9);
    //
    ellipse(169, 535, 9, 9);
    //
    ellipse(182, 535, 9, 9);
    //
    ellipse(195, 535, 9, 9);
    //
    ellipse(207, 535, 9, 9);
    //
    ellipse(220, 535, 9, 9);
    //
    ellipse(233, 535, 9, 9);
    //
    ellipse(246, 535, 9, 9);
    //
    ellipse(258, 535, 9, 9);
    //
    ellipse(271, 535, 9, 9);
    //
    ellipse(284, 535, 9, 9);
    //
    ellipse(297, 535, 9, 9);
    //
    ellipse(309, 535, 9, 9);
    //
    ellipse(322, 535, 9, 9);
    //
    ellipse(335, 535, 9, 9);
    //
    ellipse(29, 535, 9, 9);
    //
    ellipse(42, 535, 9, 9);
    //
    ellipse(54, 535, 9, 9);
    //
    ellipse(67, 535, 9, 9);
    //
    ellipse(80, 535, 9, 9);
    //
    ellipse(29, 548, 9, 9);
    //
    ellipse(42, 548, 9, 9);
    //
    ellipse(54, 548, 9, 9);
    //
    ellipse(67, 548, 9, 9);
    //
    ellipse(80, 548, 9, 9);
    //
    ellipse(93, 548, 9, 9);
    //
    ellipse(105, 548, 9, 9);
    //
    ellipse(118, 548, 9, 9);
    //
    ellipse(131, 548, 9, 9);
    //
    ellipse(144, 548, 9, 9);
    //
    ellipse(156, 548, 9, 9);
    //
    ellipse(169, 548, 9, 9);
    //
    ellipse(182, 548, 9, 9);
    //
    ellipse(195, 548, 9, 9);
    //
    ellipse(207, 548, 9, 9);
    //
    ellipse(220, 548, 9, 9);
    //
    ellipse(233, 548, 9, 9);
    //
    ellipse(246, 548, 9, 9);
    //
    ellipse(258, 548, 9, 9);
    //
    ellipse(271, 548, 9, 9);
    //
    ellipse(284, 548, 9, 9);
    //
    ellipse(297, 548, 9, 9);
    //
    ellipse(309, 548, 9, 9);
    //
    ellipse(322, 548, 9, 9);
    //
    ellipse(335, 548, 9, 9);
    //
    ellipse(603, 548, 9, 9);
    //
    ellipse(615, 548, 9, 9);
    //
    ellipse(654, 548, 9, 9);
    //
    ellipse(692, 548, 9, 9);
    //
    ellipse(730, 548, 9, 9);
    //
    ellipse(743, 548, 9, 9);
    //
    ellipse(756, 548, 9, 9);
    //
    ellipse(768, 548, 9, 9);
    //
    ellipse(781, 548, 9, 9);
    //
    ellipse(794, 548, 9, 9);
    //
    ellipse(807, 548, 9, 9);
    //
    ellipse(819, 548, 9, 9);
    //
    ellipse(832, 548, 9, 9);
    //
    ellipse(845, 548, 9, 9);
    //
    ellipse(858, 548, 9, 9);
    //
    ellipse(870, 548, 9, 9);
    //
    ellipse(883, 548, 9, 9);
    //
    ellipse(896, 548, 9, 9);
    //
    ellipse(909, 548, 9, 9);
    //
    ellipse(921, 548, 9, 9);
    //
    ellipse(934, 548, 9, 9);
    //
    ellipse(947, 548, 9, 9);
    //
    ellipse(960, 548, 9, 9);
    //
    ellipse(972, 548, 9, 9);
    //
    ellipse(985, 548, 9, 9);
    //
    ellipse(743, 560, 9, 9);
    //
    ellipse(756, 560, 9, 9);
    //
    ellipse(768, 560, 9, 9);
    //
    ellipse(781, 560, 9, 9);
    //
    ellipse(794, 560, 9, 9);
    //
    ellipse(807, 560, 9, 9);
    //
    ellipse(819, 560, 9, 9);
    //
    ellipse(832, 560, 9, 9);
    //
    ellipse(845, 560, 9, 9);
    //
    ellipse(858, 560, 9, 9);
    //
    ellipse(870, 560, 9, 9);
    //
    ellipse(883, 560, 9, 9);
    //
    ellipse(896, 560, 9, 9);
    //
    ellipse(909, 560, 9, 9);
    //
    ellipse(921, 560, 9, 9);
    //
    ellipse(934, 560, 9, 9);
    //
    ellipse(947, 560, 9, 9);
    //
    ellipse(960, 560, 9, 9);
    //
    ellipse(972, 560, 9, 9);
    //
    ellipse(985, 560, 9, 9);
    //
    ellipse(488, 560, 9, 9);
    //
    ellipse(501, 560, 9, 9);
    //
    ellipse(513, 560, 9, 9);
    //
    ellipse(526, 560, 9, 9);
    //
    ellipse(539, 560, 9, 9);
    //
    ellipse(552, 560, 9, 9);
    //
    ellipse(564, 560, 9, 9);
    //
    ellipse(577, 560, 9, 9);
    //
    ellipse(590, 560, 9, 9);
    //
    ellipse(603, 560, 9, 9);
    //
    ellipse(615, 560, 9, 9);
    //
    ellipse(628, 560, 9, 9);
    //
    ellipse(641, 560, 9, 9);
    //
    ellipse(654, 560, 9, 9);
    //
    ellipse(666, 560, 9, 9);
    //
    ellipse(679, 560, 9, 9);
    //
    ellipse(692, 560, 9, 9);
    //
    ellipse(705, 560, 9, 9);
    //
    ellipse(717, 560, 9, 9);
    //
    ellipse(730, 560, 9, 9);
    //
    ellipse(233, 560, 9, 9);
    //
    ellipse(246, 560, 9, 9);
    //
    ellipse(258, 560, 9, 9);
    //
    ellipse(271, 560, 9, 9);
    //
    ellipse(284, 560, 9, 9);
    //
    ellipse(297, 560, 9, 9);
    //
    ellipse(309, 560, 9, 9);
    //
    ellipse(322, 560, 9, 9);
    //
    ellipse(335, 560, 9, 9);
    //
    ellipse(348, 560, 9, 9);
    //
    ellipse(360, 560, 9, 9);
    //
    ellipse(373, 560, 9, 9);
    //
    ellipse(386, 560, 9, 9);
    //
    ellipse(399, 560, 9, 9);
    //
    ellipse(411, 560, 9, 9);
    //
    ellipse(424, 560, 9, 9);
    //
    ellipse(437, 560, 9, 9);
    //
    ellipse(450, 560, 9, 9);
    //
    ellipse(462, 560, 9, 9);
    //
    ellipse(475, 560, 9, 9);
    //
    ellipse(29, 560, 9, 9);
    //
    ellipse(42, 560, 9, 9);
    //
    ellipse(54, 560, 9, 9);
    //
    ellipse(67, 560, 9, 9);
    //
    ellipse(80, 560, 9, 9);
    //
    ellipse(93, 560, 9, 9);
    //
    ellipse(105, 560, 9, 9);
    //
    ellipse(118, 560, 9, 9);
    //
    ellipse(131, 560, 9, 9);
    //
    ellipse(144, 560, 9, 9);
    //
    ellipse(156, 560, 9, 9);
    //
    ellipse(169, 560, 9, 9);
    //
    ellipse(182, 560, 9, 9);
    //
    ellipse(195, 560, 9, 9);
    //
    ellipse(207, 560, 9, 9);
    //
    ellipse(220, 560, 9, 9);
    //
    ellipse(29, 573, 9, 9);
    //
    ellipse(42, 573, 9, 9);
    //
    ellipse(54, 573, 9, 9);
    //
    ellipse(67, 573, 9, 9);
    //
    ellipse(80, 573, 9, 9);
    //
    ellipse(93, 573, 9, 9);
    //
    ellipse(105, 573, 9, 9);
    //
    ellipse(118, 573, 9, 9);
    //
    ellipse(131, 573, 9, 9);
    //
    ellipse(144, 573, 9, 9);
    //
    ellipse(156, 573, 9, 9);
    //
    ellipse(169, 573, 9, 9);
    //
    ellipse(182, 573, 9, 9);
    //
    ellipse(195, 573, 9, 9);
    //
    ellipse(207, 573, 9, 9);
    //
    ellipse(220, 573, 9, 9);
    //
    ellipse(233, 573, 9, 9);
    //
    ellipse(246, 573, 9, 9);
    //
    ellipse(258, 573, 9, 9);
    //
    ellipse(271, 573, 9, 9);
    //
    ellipse(284, 573, 9, 9);
    //
    ellipse(297, 573, 9, 9);
    //
    ellipse(309, 573, 9, 9);
    //
    ellipse(322, 573, 9, 9);
    //
    ellipse(335, 573, 9, 9);
    //
    ellipse(348, 573, 9, 9);
    //
    ellipse(360, 573, 9, 9);
    //
    ellipse(373, 573, 9, 9);
    //
    ellipse(386, 573, 9, 9);
    //
    ellipse(399, 573, 9, 9);
    //
    ellipse(411, 573, 9, 9);
    //
    ellipse(424, 573, 9, 9);
    //
    ellipse(437, 573, 9, 9);
    //
    ellipse(450, 573, 9, 9);
    //
    ellipse(462, 573, 9, 9);
    //
    ellipse(475, 573, 9, 9);
    //
    ellipse(488, 573, 9, 9);
    //
    ellipse(501, 573, 9, 9);
    //
    ellipse(513, 573, 9, 9);
    //
    ellipse(526, 573, 9, 9);
    //
    ellipse(539, 573, 9, 9);
    //
    ellipse(552, 573, 9, 9);
    //
    ellipse(564, 573, 9, 9);
    //
    ellipse(577, 573, 9, 9);
    //
    ellipse(590, 573, 9, 9);
    //
    ellipse(603, 573, 9, 9);
    //
    ellipse(615, 573, 9, 9);
    //
    ellipse(628, 573, 9, 9);
    //
    ellipse(641, 573, 9, 9);
    //
    ellipse(654, 573, 9, 9);
    //
    ellipse(666, 573, 9, 9);
    //
    ellipse(679, 573, 9, 9);
    //
    ellipse(692, 573, 9, 9);
    //
    ellipse(705, 573, 9, 9);
    //
    ellipse(717, 573, 9, 9);
    //
    ellipse(730, 573, 9, 9);
    //
    ellipse(743, 573, 9, 9);
    //
    ellipse(756, 573, 9, 9);
    //
    ellipse(768, 573, 9, 9);
    //
    ellipse(781, 573, 9, 9);
    //
    ellipse(794, 573, 9, 9);
    //
    ellipse(807, 573, 9, 9);
    //
    ellipse(819, 573, 9, 9);
    //
    ellipse(832, 573, 9, 9);
    //
    ellipse(845, 573, 9, 9);
    //
    ellipse(858, 573, 9, 9);
    //
    ellipse(870, 573, 9, 9);
    //
    ellipse(883, 573, 9, 9);
    //
    ellipse(896, 573, 9, 9);
    //
    ellipse(909, 573, 9, 9);
    //
    ellipse(921, 573, 9, 9);
    //
    ellipse(934, 573, 9, 9);
    //
    ellipse(947, 573, 9, 9);
    //
    ellipse(960, 573, 9, 9);
    //
    ellipse(972, 573, 9, 9);
    //
    ellipse(985, 573, 9, 9);
    //
    ellipse(921, 585, 9, 9);
    //
    ellipse(934, 585, 9, 9);
    //
    ellipse(947, 585, 9, 9);
    //
    ellipse(960, 585, 9, 9);
    //
    ellipse(972, 585, 9, 9);
    //
    ellipse(985, 585, 9, 9);
    //
    ellipse(666, 585, 9, 9);
    //
    ellipse(679, 585, 9, 9);
    //
    ellipse(692, 585, 9, 9);
    //
    ellipse(705, 585, 9, 9);
    //
    ellipse(717, 585, 9, 9);
    //
    ellipse(730, 585, 9, 9);
    //
    ellipse(743, 585, 9, 9);
    //
    ellipse(756, 585, 9, 9);
    //
    ellipse(768, 585, 9, 9);
    //
    ellipse(781, 585, 9, 9);
    //
    ellipse(794, 585, 9, 9);
    //
    ellipse(807, 585, 9, 9);
    //
    ellipse(819, 585, 9, 9);
    //
    ellipse(832, 585, 9, 9);
    //
    ellipse(845, 585, 9, 9);
    //
    ellipse(858, 585, 9, 9);
    //
    ellipse(870, 585, 9, 9);
    //
    ellipse(883, 585, 9, 9);
    //
    ellipse(896, 585, 9, 9);
    //
    ellipse(909, 585, 9, 9);
    //
    ellipse(424, 585, 9, 9);
    //
    ellipse(437, 585, 9, 9);
    //
    ellipse(450, 585, 9, 9);
    //
    ellipse(462, 585, 9, 9);
    //
    ellipse(475, 585, 9, 9);
    //
    ellipse(488, 585, 9, 9);
    //
    ellipse(501, 585, 9, 9);
    //
    ellipse(513, 585, 9, 9);
    //
    ellipse(526, 585, 9, 9);
    //
    ellipse(539, 585, 9, 9);
    //
    ellipse(552, 585, 9, 9);
    //
    ellipse(564, 585, 9, 9);
    //
    ellipse(577, 585, 9, 9);
    //
    ellipse(590, 585, 9, 9);
    //
    ellipse(603, 585, 9, 9);
    //
    ellipse(615, 585, 9, 9);
    //
    ellipse(628, 585, 9, 9);
    //
    ellipse(641, 585, 9, 9);
    //
    ellipse(654, 585, 9, 9);
    //
    ellipse(169, 585, 9, 9);
    //
    ellipse(182, 585, 9, 9);
    //
    ellipse(195, 585, 9, 9);
    //
    ellipse(207, 585, 9, 9);
    //
    ellipse(220, 585, 9, 9);
    //
    ellipse(233, 585, 9, 9);
    //
    ellipse(246, 585, 9, 9);
    //
    ellipse(258, 585, 9, 9);
    //
    ellipse(271, 585, 9, 9);
    //
    ellipse(284, 585, 9, 9);
    //
    ellipse(297, 585, 9, 9);
    //
    ellipse(309, 585, 9, 9);
    //
    ellipse(322, 585, 9, 9);
    //
    ellipse(335, 585, 9, 9);
    //
    ellipse(348, 585, 9, 9);
    //
    ellipse(360, 585, 9, 9);
    //
    ellipse(373, 585, 9, 9);
    //
    ellipse(386, 585, 9, 9);
    //
    ellipse(399, 585, 9, 9);
    //
    ellipse(411, 585, 9, 9);
    //
    ellipse(29, 585, 9, 9);
    //
    ellipse(42, 585, 9, 9);
    //
    ellipse(54, 585, 9, 9);
    //
    ellipse(67, 585, 9, 9);
    //
    ellipse(80, 585, 9, 9);
    //
    ellipse(93, 585, 9, 9);
    //
    ellipse(105, 585, 9, 9);
    //
    ellipse(118, 585, 9, 9);
    //
    ellipse(131, 585, 9, 9);
    //
    ellipse(144, 585, 9, 9);
    //
    ellipse(156, 585, 9, 9);
    //
    ellipse(29, 598, 9, 9);
    //
    ellipse(42, 598, 9, 9);
    //
    ellipse(54, 598, 9, 9);
    //
    ellipse(67, 598, 9, 9);
    //
    ellipse(80, 598, 9, 9);
    //
    ellipse(93, 598, 9, 9);
    //
    ellipse(105, 598, 9, 9);
    //
    ellipse(118, 598, 9, 9);
    //
    ellipse(131, 598, 9, 9);
    //
    ellipse(144, 598, 9, 9);
    //
    ellipse(156, 598, 9, 9);
    //
    ellipse(169, 598, 9, 9);
    //
    ellipse(182, 598, 9, 9);
    //
    ellipse(195, 598, 9, 9);
    //
    ellipse(207, 598, 9, 9);
    //
    ellipse(220, 598, 9, 9);
    //
    ellipse(233, 598, 9, 9);
    //
    ellipse(246, 598, 9, 9);
    //
    ellipse(258, 598, 9, 9);
    //
    ellipse(271, 598, 9, 9);
    //
    ellipse(284, 598, 9, 9);
    //
    ellipse(297, 598, 9, 9);
    //
    ellipse(309, 598, 9, 9);
    //
    ellipse(322, 598, 9, 9);
    //
    ellipse(335, 598, 9, 9);
    //
    ellipse(348, 598, 9, 9);
    //
    ellipse(360, 598, 9, 9);
    //
    ellipse(373, 598, 9, 9);
    //
    ellipse(386, 598, 9, 9);
    //
    ellipse(399, 598, 9, 9);
    //
    ellipse(411, 598, 9, 9);
    //
    ellipse(424, 598, 9, 9);
    //
    ellipse(437, 598, 9, 9);
    //
    ellipse(450, 598, 9, 9);
    //
    ellipse(462, 598, 9, 9);
    //
    ellipse(475, 598, 9, 9);
    //
    ellipse(488, 598, 9, 9);
    //
    ellipse(501, 598, 9, 9);
    //
    ellipse(513, 598, 9, 9);
    //
    ellipse(526, 598, 9, 9);
    //
    ellipse(539, 598, 9, 9);
    //
    ellipse(552, 598, 9, 9);
    //
    ellipse(564, 598, 9, 9);
    //
    ellipse(577, 598, 9, 9);
    //
    ellipse(590, 598, 9, 9);
    //
    ellipse(603, 598, 9, 9);
    //
    ellipse(615, 598, 9, 9);
    //
    ellipse(628, 598, 9, 9);
    //
    ellipse(641, 598, 9, 9);
    //
    ellipse(654, 598, 9, 9);
    //
    ellipse(666, 598, 9, 9);
    //
    ellipse(679, 598, 9, 9);
    //
    ellipse(692, 598, 9, 9);
    //
    ellipse(705, 598, 9, 9);
    //
    ellipse(717, 598, 9, 9);
    //
    ellipse(730, 598, 9, 9);
    //
    ellipse(743, 598, 9, 9);
    //
    ellipse(756, 598, 9, 9);
    //
    ellipse(768, 598, 9, 9);
    //
    ellipse(781, 598, 9, 9);
    //
    ellipse(794, 598, 9, 9);
    //
    ellipse(807, 598, 9, 9);
    //
    ellipse(819, 598, 9, 9);
    //
    ellipse(233, 398, 9, 9);
    //
    ellipse(246, 398, 9, 9);
    //
    ellipse(258, 398, 9, 9);
    //
    ellipse(271, 398, 9, 9);
    //
    ellipse(284, 398, 9, 9);
    //
    ellipse(297, 398, 9, 9);
    //
    ellipse(309, 398, 9, 9);
    //
    ellipse(322, 398, 9, 9);
    //
    ellipse(335, 398, 9, 9);
    //
    ellipse(348, 398, 9, 9);
    //
    ellipse(360, 398, 9, 9);
    //
    ellipse(373, 398, 9, 9);
    //
    ellipse(386, 398, 9, 9);
    //
    ellipse(399, 398, 9, 9);
    //
    ellipse(590, 398, 9, 9);
    //
    ellipse(603, 398, 9, 9);
    //
    ellipse(615, 398, 9, 9);
    //
    ellipse(628, 398, 9, 9);
    //
    ellipse(641, 398, 9, 9);
    //
    ellipse(654, 398, 9, 9);
    //
    ellipse(220, 398, 9, 9);
    //
    ellipse(832, 598, 9, 9);
    //
    ellipse(845, 598, 9, 9);
    //
    ellipse(858, 598, 9, 9);
    //
    ellipse(870, 598, 9, 9);
    //
    ellipse(883, 598, 9, 9);
    //
    ellipse(896, 598, 9, 9);
    //
    ellipse(909, 598, 9, 9);
    //
    ellipse(921, 598, 9, 9);
    //
    ellipse(934, 598, 9, 9);
    //
    ellipse(947, 598, 9, 9);
    //
    ellipse(960, 598, 9, 9);
    //
    ellipse(972, 598, 9, 9);
    //
    ellipse(985, 598, 9, 9);

    //------------------------------------------------------------------------

    ellipse(909, 610, 9, 9);
    //
    ellipse(921, 610, 9, 9);
    //
    ellipse(934, 610, 9, 9);
    //
    ellipse(947, 610, 9, 9);
    //
    ellipse(960, 610, 9, 9);
    //
    ellipse(972, 610, 9, 9);
    //
    ellipse(985, 610, 9, 9);
    //
    ellipse(679, 610, 9, 9);
    //
    ellipse(692, 610, 9, 9);
    //
    ellipse(705, 610, 9, 9);
    //
    ellipse(717, 610, 9, 9);
    //
    ellipse(730, 610, 9, 9);
    //
    ellipse(743, 610, 9, 9);
    //
    ellipse(756, 610, 9, 9);
    //
    ellipse(768, 610, 9, 9);
    //
    ellipse(781, 610, 9, 9);
    //
    ellipse(794, 610, 9, 9);
    //
    ellipse(807, 610, 9, 9);
    //
    ellipse(819, 610, 9, 9);
    //
    ellipse(832, 610, 9, 9);
    //
    ellipse(845, 610, 9, 9);
    //
    ellipse(858, 610, 9, 9);
    //
    ellipse(870, 610, 9, 9);
    //
    ellipse(883, 610, 9, 9);
    //
    ellipse(896, 610, 9, 9);
    //
    ellipse(424, 610, 9, 9);
    //
    ellipse(437, 610, 9, 9);
    //
    ellipse(450, 610, 9, 9);
    //
    ellipse(462, 610, 9, 9);
    //
    ellipse(475, 610, 9, 9);
    //
    ellipse(488, 610, 9, 9);
    //
    ellipse(501, 610, 9, 9);
    //
    ellipse(513, 610, 9, 9);
    //
    ellipse(526, 610, 9, 9);
    //
    ellipse(539, 610, 9, 9);
    //
    ellipse(552, 610, 9, 9);
    //
    ellipse(564, 610, 9, 9);
    //
    ellipse(577, 610, 9, 9);
    //
    ellipse(590, 610, 9, 9);
    //
    ellipse(603, 610, 9, 9);
    //
    ellipse(615, 610, 9, 9);
    //
    ellipse(628, 610, 9, 9);
    //
    ellipse(641, 610, 9, 9);
    //
    ellipse(654, 610, 9, 9);
    //
    ellipse(666, 610, 9, 9);
    //
    ellipse(169, 610, 9, 9);
    //
    ellipse(182, 610, 9, 9);
    //
    ellipse(195, 610, 9, 9);
    //
    ellipse(207, 610, 9, 9);
    //
    ellipse(220, 610, 9, 9);
    //
    ellipse(233, 610, 9, 9);
    //
    ellipse(246, 610, 9, 9);
    //
    ellipse(258, 610, 9, 9);
    //
    ellipse(271, 610, 9, 9);
    //
    ellipse(284, 610, 9, 9);
    //
    ellipse(297, 610, 9, 9);
    //
    ellipse(309, 610, 9, 9);
    //
    ellipse(322, 610, 9, 9);
    //
    ellipse(335, 610, 9, 9);
    //
    ellipse(348, 610, 9, 9);
    //
    ellipse(360, 610, 9, 9);
    //
    ellipse(373, 610, 9, 9);
    //
    ellipse(386, 610, 9, 9);
    //
    ellipse(399, 610, 9, 9);
    //
    ellipse(411, 610, 9, 9);
    //
    ellipse(29, 610, 9, 9);
    //
    ellipse(42, 610, 9, 9);
    //
    ellipse(54, 610, 9, 9);
    //
    ellipse(67, 610, 9, 9);
    //
    ellipse(80, 610, 9, 9);
    //
    ellipse(93, 610, 9, 9);
    //
    ellipse(105, 610, 9, 9);
    //
    ellipse(118, 610, 9, 9);
    //
    ellipse(131, 610, 9, 9);
    //
    ellipse(144, 610, 9, 9);
    //
    ellipse(156, 610, 9, 9);
    //
    ellipse(29, 623, 9, 9);
    //
    ellipse(42, 623, 9, 9);
    //
    ellipse(54, 623, 9, 9);
    //
    ellipse(67, 623, 9, 9);
    //
    ellipse(80, 623, 9, 9);
    //
    ellipse(93, 623, 9, 9);
    //
    ellipse(105, 623, 9, 9);
    //
    ellipse(118, 623, 9, 9);
    //
    ellipse(131, 623, 9, 9);
    //
    ellipse(144, 623, 9, 9);
    //
    ellipse(156, 623, 9, 9);
    //
    ellipse(169, 623, 9, 9);
    //
    ellipse(182, 623, 9, 9);
    //
    ellipse(195, 623, 9, 9);
    //
    ellipse(207, 623, 9, 9);
    //
    ellipse(220, 623, 9, 9);
    //
    ellipse(233, 623, 9, 9);
    //
    ellipse(246, 623, 9, 9);
    //
    ellipse(258, 623, 9, 9);
    //
    ellipse(271, 623, 9, 9);
    //
    ellipse(284, 623, 9, 9);
    //
    ellipse(297, 623, 9, 9);
    //
    ellipse(309, 623, 9, 9);
    //
    ellipse(322, 623, 9, 9);
    //
    ellipse(335, 623, 9, 9);
    //
    ellipse(348, 623, 9, 9);
    //
    ellipse(360, 623, 9, 9);
    //
    ellipse(373, 623, 9, 9);
    //
    ellipse(386, 623, 9, 9);
    //
    ellipse(399, 623, 9, 9);
    //
    ellipse(411, 623, 9, 9);
    //
    ellipse(424, 623, 9, 9);
    //
    ellipse(437, 623, 9, 9);
    //
    ellipse(450, 623, 9, 9);
    //
    ellipse(462, 623, 9, 9);
    //
    ellipse(475, 623, 9, 9);
    //
    ellipse(488, 623, 9, 9);
    //
    ellipse(501, 623, 9, 9);
    //
    ellipse(513, 623, 9, 9);
    //
    ellipse(526, 623, 9, 9);
    //
    ellipse(539, 623, 9, 9);
    //
    ellipse(552, 623, 9, 9);
    //
    ellipse(564, 623, 9, 9);
    //
    ellipse(577, 623, 9, 9);
    //
    ellipse(590, 623, 9, 9);
    //
    ellipse(603, 623, 9, 9);
    //
    ellipse(615, 623, 9, 9);
    //
    ellipse(628, 623, 9, 9);
    //
    ellipse(641, 623, 9, 9);
    //
    ellipse(654, 623, 9, 9);
    //
    ellipse(666, 623, 9, 9);
    //
    ellipse(679, 623, 9, 9);
    //
    ellipse(692, 623, 9, 9);
    //
    ellipse(705, 623, 9, 9);
    //
    ellipse(717, 623, 9, 9);
    //
    ellipse(730, 623, 9, 9);
    //
    ellipse(743, 623, 9, 9);
    //
    ellipse(756, 623, 9, 9);
    //
    ellipse(768, 623, 9, 9);
    //
    ellipse(781, 623, 9, 9);
    //
    ellipse(794, 623, 9, 9);
    //
    ellipse(807, 623, 9, 9);
    //
    ellipse(819, 623, 9, 9);
    //
    ellipse(832, 623, 9, 9);
    //
    ellipse(845, 623, 9, 9);
    //
    ellipse(858, 623, 9, 9);
    //
    ellipse(870, 623, 9, 9);
    //
    ellipse(883, 623, 9, 9);
    //
    ellipse(896, 623, 9, 9);
    //
    ellipse(909, 623, 9, 9);
    //
    ellipse(921, 623, 9, 9);
    //
    ellipse(934, 623, 9, 9);
    //
    ellipse(947, 623, 9, 9);
    //
    ellipse(960, 623, 9, 9);
    //
    ellipse(972, 623, 9, 9);
    //
    ellipse(985, 623, 9, 9);
    //
    ellipse(858, 635, 9, 9);
    //
    ellipse(870, 635, 9, 9);
    //
    ellipse(883, 635, 9, 9);
    //
    ellipse(896, 635, 9, 9);
    //
    ellipse(909, 635, 9, 9);
    //
    ellipse(921, 635, 9, 9);
    //
    ellipse(934, 635, 9, 9);
    //
    ellipse(947, 635, 9, 9);
    //
    ellipse(960, 635, 9, 9);
    //
    ellipse(972, 635, 9, 9);
    //
    ellipse(985, 635, 9, 9);
    //
    ellipse(603, 635, 9, 9);
    //
    ellipse(615, 635, 9, 9);
    //
    ellipse(628, 635, 9, 9);
    //
    ellipse(641, 635, 9, 9);
    //
    ellipse(654, 635, 9, 9);
    //
    ellipse(666, 635, 9, 9);
    //
    ellipse(679, 635, 9, 9);
    //
    ellipse(692, 635, 9, 9);
    //
    ellipse(705, 635, 9, 9);
    //
    ellipse(717, 635, 9, 9);
    //
    ellipse(730, 635, 9, 9);
    //
    ellipse(743, 635, 9, 9);
    //
    ellipse(756, 635, 9, 9);
    //
    ellipse(768, 635, 9, 9);
    //
    ellipse(781, 635, 9, 9);
    //
    ellipse(794, 635, 9, 9);
    //
    ellipse(807, 635, 9, 9);
    //
    ellipse(819, 635, 9, 9);
    //
    ellipse(832, 635, 9, 9);
    //
    ellipse(845, 635, 9, 9);
    //
    ellipse(348, 635, 9, 9);
    //
    ellipse(360, 635, 9, 9);
    //
    ellipse(373, 635, 9, 9);
    //
    ellipse(386, 635, 9, 9);
    //
    ellipse(399, 635, 9, 9);
    //
    ellipse(411, 635, 9, 9);
    //
    ellipse(424, 635, 9, 9);
    //
    ellipse(437, 635, 9, 9);
    //
    ellipse(450, 635, 9, 9);
    //
    ellipse(462, 635, 9, 9);
    //
    ellipse(475, 635, 9, 9);
    //
    ellipse(488, 635, 9, 9);
    //
    ellipse(501, 635, 9, 9);
    //
    ellipse(513, 635, 9, 9);
    //
    ellipse(526, 635, 9, 9);
    //
    ellipse(539, 635, 9, 9);
    //
    ellipse(552, 635, 9, 9);
    //
    ellipse(564, 635, 9, 9);
    //
    ellipse(577, 635, 9, 9);
    //
    ellipse(590, 635, 9, 9);
    //
    ellipse(93, 635, 9, 9);
    //
    ellipse(105, 635, 9, 9);
    //
    ellipse(118, 635, 9, 9);
    //
    ellipse(131, 635, 9, 9);
    //
    ellipse(144, 635, 9, 9);
    //
    ellipse(156, 635, 9, 9);
    //
    ellipse(169, 635, 9, 9);
    //
    ellipse(182, 635, 9, 9);
    //
    ellipse(195, 635, 9, 9);
    //
    ellipse(207, 635, 9, 9);
    //
    ellipse(220, 635, 9, 9);
    //
    ellipse(233, 635, 9, 9);
    //
    ellipse(246, 635, 9, 9);
    //
    ellipse(258, 635, 9, 9);
    //
    ellipse(271, 635, 9, 9);
    //
    ellipse(284, 635, 9, 9);
    //
    ellipse(297, 635, 9, 9);
    //
    ellipse(309, 635, 9, 9);
    //
    ellipse(322, 635, 9, 9);
    //
    ellipse(335, 635, 9, 9);
    //
    ellipse(29, 635, 9, 9);
    //
    ellipse(42, 635, 9, 9);
    //
    ellipse(54, 635, 9, 9);
    //
    ellipse(67, 635, 9, 9);
    //
    ellipse(80, 635, 9, 9);
    //
    ellipse(29, 648, 9, 9);
    //
    ellipse(42, 648, 9, 9);
    //
    ellipse(54, 648, 9, 9);
    //
    ellipse(67, 648, 9, 9);
    //
    ellipse(80, 648, 9, 9);
    //
    ellipse(93, 648, 9, 9);
    //
    ellipse(105, 648, 9, 9);
    //
    ellipse(118, 648, 9, 9);
    //
    ellipse(131, 648, 9, 9);
    //
    ellipse(144, 648, 9, 9);
    //
    ellipse(156, 648, 9, 9);
    //
    ellipse(169, 648, 9, 9);
    //
    ellipse(182, 648, 9, 9);
    //
    ellipse(195, 648, 9, 9);
    //
    ellipse(207, 648, 9, 9);
    //
    ellipse(220, 648, 9, 9);
    //
    ellipse(233, 648, 9, 9);
    //
    ellipse(246, 648, 9, 9);
    //
    ellipse(258, 648, 9, 9);
    //
    ellipse(271, 648, 9, 9);
    //
    ellipse(284, 648, 9, 9);
    //
    ellipse(297, 648, 9, 9);
    //
    ellipse(309, 648, 9, 9);
    //
    ellipse(322, 648, 9, 9);
    //
    ellipse(335, 648, 9, 9);
    //
    ellipse(348, 648, 9, 9);
    //
    ellipse(360, 648, 9, 9);
    //
    ellipse(373, 648, 9, 9);
    //
    ellipse(386, 648, 9, 9);
    //
    ellipse(399, 648, 9, 9);
    //
    ellipse(411, 648, 9, 9);
    //
    ellipse(424, 648, 9, 9);
    //
    ellipse(437, 648, 9, 9);
    //
    ellipse(450, 648, 9, 9);
    //
    ellipse(462, 648, 9, 9);
    //
    ellipse(475, 648, 9, 9);
    //
    ellipse(488, 648, 9, 9);
    //
    ellipse(501, 648, 9, 9);
    //
    ellipse(513, 648, 9, 9);
    //
    ellipse(526, 648, 9, 9);
    //
    ellipse(539, 648, 9, 9);
    //
    ellipse(552, 648, 9, 9);
    //
    ellipse(564, 648, 9, 9);
    //
    ellipse(577, 648, 9, 9);
    //
    ellipse(590, 648, 9, 9);
    //
    ellipse(603, 648, 9, 9);
    //
    ellipse(615, 648, 9, 9);
    //
    ellipse(628, 648, 9, 9);
    //
    ellipse(641, 648, 9, 9);
    //
    ellipse(654, 648, 9, 9);
    //
    ellipse(666, 648, 9, 9);
    //
    ellipse(679, 648, 9, 9);
    //
    ellipse(692, 648, 9, 9);
    //
    ellipse(705, 648, 9, 9);

    ellipse(717, 648, 9, 9);

    ellipse(730, 648, 9, 9);

    ellipse(743, 648, 9, 9);

    ellipse(756, 648, 9, 9);

    ellipse(768, 648, 9, 9);

    ellipse(781, 648, 9, 9);

    ellipse(794, 648, 9, 9);

    ellipse(807, 648, 9, 9);

    ellipse(819, 648, 9, 9);

    ellipse(832, 648, 9, 9);

    ellipse(845, 648, 9, 9);

    ellipse(858, 648, 9, 9);

    ellipse(870, 648, 9, 9);

    ellipse(883, 648, 9, 9);

    ellipse(896, 648, 9, 9);

    ellipse(909, 648, 9, 9);

    ellipse(921, 648, 9, 9);

    ellipse(934, 648, 9, 9);

    ellipse(947, 648, 9, 9);

    ellipse(960, 648, 9, 9);

    ellipse(972, 648, 9, 9);

    ellipse(985, 648, 9, 9);

    ellipse(768, 660, 9, 9);

    ellipse(781, 660, 9, 9);

    ellipse(794, 660, 9, 9);

    ellipse(807, 660, 9, 9);

    ellipse(819, 660, 9, 9);

    ellipse(832, 660, 9, 9);

    ellipse(845, 660, 9, 9);

    ellipse(858, 660, 9, 9);

    ellipse(870, 660, 9, 9);

    ellipse(883, 660, 9, 9);

    ellipse(896, 660, 9, 9);

    ellipse(909, 660, 9, 9);

    ellipse(921, 660, 9, 9);

    ellipse(934, 660, 9, 9);

    ellipse(947, 660, 9, 9);

    ellipse(960, 660, 9, 9);

    ellipse(972, 660, 9, 9);

    ellipse(985, 660, 9, 9);

    ellipse(513, 660, 9, 9);

    ellipse(526, 660, 9, 9);

    ellipse(539, 660, 9, 9);

    ellipse(552, 660, 9, 9);

    ellipse(564, 660, 9, 9);

    ellipse(577, 660, 9, 9);

    ellipse(590, 660, 9, 9);

    ellipse(603, 660, 9, 9);

    ellipse(615, 660, 9, 9);

    ellipse(628, 660, 9, 9);

    ellipse(641, 660, 9, 9);

    ellipse(654, 660, 9, 9);

    ellipse(666, 660, 9, 9);

    ellipse(679, 660, 9, 9);

    ellipse(692, 660, 9, 9);

    ellipse(705, 660, 9, 9);

    ellipse(717, 660, 9, 9);

    ellipse(730, 660, 9, 9);

    ellipse(743, 660, 9, 9);

    ellipse(756, 660, 9, 9);

    ellipse(297, 660, 9, 9);

    ellipse(309, 660, 9, 9);

    ellipse(322, 660, 9, 9);

    ellipse(335, 660, 9, 9);

    ellipse(348, 660, 9, 9);

    ellipse(360, 660, 9, 9);

    ellipse(373, 660, 9, 9);

    ellipse(386, 660, 9, 9);

    ellipse(399, 660, 9, 9);

    ellipse(411, 660, 9, 9);

    ellipse(424, 660, 9, 9);

    ellipse(437, 660, 9, 9);

    ellipse(450, 660, 9, 9);

    ellipse(462, 660, 9, 9);

    ellipse(475, 660, 9, 9);

    ellipse(488, 660, 9, 9);

    ellipse(501, 660, 9, 9);

    ellipse(54, 660, 9, 9);

    ellipse(67, 660, 9, 9);

    ellipse(80, 660, 9, 9);

    ellipse(93, 660, 9, 9);

    ellipse(105, 660, 9, 9);

    ellipse(118, 660, 9, 9);

    ellipse(131, 660, 9, 9);

    ellipse(144, 660, 9, 9);

    ellipse(156, 660, 9, 9);

    ellipse(169, 660, 9, 9);

    ellipse(182, 660, 9, 9);

    ellipse(195, 660, 9, 9);

    ellipse(207, 660, 9, 9);

    ellipse(220, 660, 9, 9);

    ellipse(233, 660, 9, 9);

    ellipse(246, 660, 9, 9);

    ellipse(258, 660, 9, 9);

    ellipse(271, 660, 9, 9);

    ellipse(284, 660, 9, 9);

    ellipse(29, 660, 9, 9);

    ellipse(42, 660, 9, 9);

    ellipse(29, 673, 9, 9);

    ellipse(42, 673, 9, 9);

    ellipse(54, 673, 9, 9);

    ellipse(67, 673, 9, 9);

    ellipse(80, 673, 9, 9);

    ellipse(93, 673, 9, 9);

    ellipse(105, 673, 9, 9);

    ellipse(118, 673, 9, 9);

    ellipse(131, 673, 9, 9);

    ellipse(144, 673, 9, 9);

    ellipse(156, 673, 9, 9);

    ellipse(169, 673, 9, 9);

    ellipse(182, 673, 9, 9);

    ellipse(195, 673, 9, 9);

    ellipse(207, 673, 9, 9);

    ellipse(220, 673, 9, 9);

    ellipse(233, 673, 9, 9);

    ellipse(246, 673, 9, 9);

    ellipse(258, 673, 9, 9);

    ellipse(271, 673, 9, 9);

    ellipse(284, 673, 9, 9);

    ellipse(297, 673, 9, 9);

    ellipse(309, 673, 9, 9);

    ellipse(322, 673, 9, 9);

    ellipse(335, 673, 9, 9);

    ellipse(348, 673, 9, 9);

    ellipse(360, 673, 9, 9);

    ellipse(373, 673, 9, 9);

    ellipse(386, 673, 9, 9);

    ellipse(399, 673, 9, 9);

    ellipse(411, 673, 9, 9);

    ellipse(424, 673, 9, 9);

    ellipse(437, 673, 9, 9);

    ellipse(450, 673, 9, 9);

    ellipse(462, 673, 9, 9);

    ellipse(475, 673, 9, 9);

    ellipse(488, 673, 9, 9);

    ellipse(501, 673, 9, 9);

    ellipse(513, 673, 9, 9);

    ellipse(526, 673, 9, 9);

    ellipse(539, 673, 9, 9);

    ellipse(552, 673, 9, 9);

    ellipse(564, 673, 9, 9);

    ellipse(577, 673, 9, 9);

    ellipse(590, 673, 9, 9);

    ellipse(603, 673, 9, 9);

    ellipse(615, 673, 9, 9);

    ellipse(628, 673, 9, 9);

    ellipse(641, 673, 9, 9);

    ellipse(654, 673, 9, 9);

    ellipse(666, 673, 9, 9);

    ellipse(679, 673, 9, 9);

    ellipse(692, 673, 9, 9);

    ellipse(705, 673, 9, 9);

    ellipse(717, 673, 9, 9);

    ellipse(730, 673, 9, 9);

    ellipse(743, 673, 9, 9);

    ellipse(756, 673, 9, 9);

    ellipse(768, 673, 9, 9);

    ellipse(781, 673, 9, 9);

    ellipse(794, 673, 9, 9);

    ellipse(807, 673, 9, 9);

    ellipse(819, 673, 9, 9);

    ellipse(832, 673, 9, 9);

    ellipse(845, 673, 9, 9);

    ellipse(858, 673, 9, 9);

    ellipse(870, 673, 9, 9);

    ellipse(883, 673, 9, 9);

    ellipse(896, 673, 9, 9);

    ellipse(909, 673, 9, 9);

    ellipse(921, 673, 9, 9);

    ellipse(934, 673, 9, 9);

    ellipse(947, 673, 9, 9);

    ellipse(960, 673, 9, 9);

    ellipse(972, 673, 9, 9);

    ellipse(985, 673, 9, 9);
    //----------------------------원 위치수정차 매트릭스 이용---------------------------
    pushMatrix();
    translate(0, 62);
    //
    ellipse(29, 35, 9, 9);
    //
    ellipse(42, 35, 9, 9);
    //
    ellipse(54, 35, 9, 9);
    //
    ellipse(67, 35, 9, 9);
    //
    ellipse(80, 35, 9, 9);
    //
    ellipse(93, 35, 9, 9);
    //
    ellipse(105, 35, 9, 9);
    //
    ellipse(118, 35, 9, 9);
    //
    ellipse(131, 35, 9, 9);
    //
    ellipse(144, 35, 9, 9);
    //
    ellipse(156, 35, 9, 9);
    //
    ellipse(169, 35, 9, 9);
    //
    ellipse(182, 35, 9, 9);
    //
    ellipse(195, 35, 9, 9);
    //
    ellipse(207, 35, 9, 9);
    //
    ellipse(220, 35, 9, 9);
    //
    ellipse(233, 35, 9, 9);
    //
    ellipse(246, 35, 9, 9);
    //
    ellipse(258, 35, 9, 9);
    //
    ellipse(271, 35, 9, 9);
    //
    ellipse(284, 35, 9, 9);
    //
    ellipse(297, 35, 9, 9);
    //
    ellipse(309, 35, 9, 9);
    //
    ellipse(322, 35, 9, 9);
    //
    ellipse(335, 35, 9, 9);
    //
    ellipse(348, 35, 9, 9);
    //
    ellipse(360, 35, 9, 9);
    //
    ellipse(373, 35, 9, 9);
    //
    ellipse(386, 35, 9, 9);
    //
    ellipse(399, 35, 9, 9);
    //
    ellipse(411, 35, 9, 9);
    //
    ellipse(424, 35, 9, 9);
    //
    ellipse(437, 35, 9, 9);
    //
    ellipse(450, 35, 9, 9);
    //
    ellipse(462, 35, 9, 9);
    //
    ellipse(475, 35, 9, 9);
    //
    ellipse(488, 35, 9, 9);
    //
    ellipse(501, 35, 9, 9);
    //
    ellipse(513, 35, 9, 9);
    //
    ellipse(526, 35, 9, 9);
    //
    ellipse(539, 35, 9, 9);
    //
    ellipse(552, 35, 9, 9);
    //
    ellipse(564, 35, 9, 9);
    //
    ellipse(577, 35, 9, 9);
    //
    ellipse(590, 35, 9, 9);
    //
    ellipse(603, 35, 9, 9);
    //
    ellipse(615, 35, 9, 9);
    //
    ellipse(628, 35, 9, 9);
    //
    ellipse(641, 35, 9, 9);
    //
    ellipse(654, 35, 9, 9);
    //
    ellipse(666, 35, 9, 9);
    //
    ellipse(679, 35, 9, 9);
    //
    ellipse(692, 35, 9, 9);
    //
    ellipse(705, 35, 9, 9);
    //
    ellipse(717, 35, 9, 9);
    //
    ellipse(730, 35, 9, 9);
    //
    ellipse(743, 35, 9, 9);
    //
    ellipse(756, 35, 9, 9);
    //
    ellipse(768, 35, 9, 9);
    //
    ellipse(781, 35, 9, 9);
    //
    ellipse(794, 35, 9, 9);
    //
    ellipse(807, 35, 9, 9);
    //
    ellipse(819, 35, 9, 9);
    //
    ellipse(832, 35, 9, 9);
    //
    ellipse(845, 35, 9, 9);
    //
    ellipse(858, 35, 9, 9);
    //
    ellipse(870, 35, 9, 9);
    //
    ellipse(883, 35, 9, 9);
    //
    ellipse(896, 35, 9, 9);
    //
    ellipse(909, 35, 9, 9);
    //
    ellipse(921, 35, 9, 9);
    //
    ellipse(934, 35, 9, 9);
    //
    ellipse(947, 35, 9, 9);
    //
    ellipse(960, 35, 9, 9);
    //
    ellipse(972, 35, 9, 9);
    //
    ellipse(985, 35, 9, 9);
    //
    ellipse(29, 48, 9, 9);
    //
    ellipse(42, 48, 9, 9);
    //
    ellipse(54, 48, 9, 9);
    //
    ellipse(67, 48, 9, 9);
    //
    ellipse(80, 48, 9, 9);
    //
    ellipse(93, 48, 9, 9);
    //
    ellipse(105, 48, 9, 9);
    //
    ellipse(118, 48, 9, 9);
    //
    ellipse(131, 48, 9, 9);
    //
    ellipse(144, 48, 9, 9);
    //
    ellipse(156, 48, 9, 9);
    //
    ellipse(169, 48, 9, 9);
    //
    ellipse(182, 48, 9, 9);
    //
    ellipse(195, 48, 9, 9);
    //
    ellipse(207, 48, 9, 9);
    //
    ellipse(220, 48, 9, 9);
    //
    ellipse(233, 48, 9, 9);
    //
    ellipse(246, 48, 9, 9);
    //
    ellipse(258, 48, 9, 9);
    //
    ellipse(271, 48, 9, 9);
    //
    ellipse(284, 48, 9, 9);
    //
    ellipse(297, 48, 9, 9);
    //
    ellipse(309, 48, 9, 9);
    //
    ellipse(322, 48, 9, 9);
    //
    ellipse(335, 48, 9, 9);
    //
    ellipse(348, 48, 9, 9);
    //
    ellipse(360, 48, 9, 9);
    //
    ellipse(373, 48, 9, 9);
    //
    ellipse(386, 48, 9, 9);
    //
    ellipse(399, 48, 9, 9);
    //
    ellipse(411, 48, 9, 9);
    //
    ellipse(424, 48, 9, 9);
    //
    ellipse(437, 48, 9, 9);
    //
    ellipse(450, 48, 9, 9);
    //
    ellipse(462, 48, 9, 9);
    //
    ellipse(475, 48, 9, 9);
    //
    ellipse(488, 48, 9, 9);
    //
    ellipse(501, 48, 9, 9);
    //
    ellipse(513, 48, 9, 9);
    //
    ellipse(526, 48, 9, 9);
    //
    ellipse(539, 48, 9, 9);
    //
    ellipse(552, 48, 9, 9);
    //
    ellipse(564, 48, 9, 9);
    //
    ellipse(577, 48, 9, 9);
    //
    ellipse(590, 48, 9, 9);
    //
    ellipse(603, 48, 9, 9);
    //
    ellipse(615, 48, 9, 9);
    //
    ellipse(628, 48, 9, 9);
    //
    ellipse(641, 48, 9, 9);
    //
    ellipse(654, 48, 9, 9);
    //
    ellipse(666, 48, 9, 9);
    //
    ellipse(679, 48, 9, 9);
    //
    ellipse(692, 48, 9, 9);
    //
    ellipse(705, 48, 9, 9);
    //
    ellipse(717, 48, 9, 9);
    //
    ellipse(730, 48, 9, 9);
    //
    ellipse(743, 48, 9, 9);
    //
    ellipse(756, 48, 9, 9);
    //
    ellipse(768, 48, 9, 9);
    //
    ellipse(781, 48, 9, 9);
    //
    ellipse(794, 48, 9, 9);
    //
    ellipse(807, 48, 9, 9);
    //
    ellipse(819, 48, 9, 9);
    //
    ellipse(832, 48, 9, 9);
    //
    ellipse(845, 48, 9, 9);
    //
    ellipse(858, 48, 9, 9);
    //
    ellipse(870, 48, 9, 9);
    //
    ellipse(883, 48, 9, 9);
    //
    ellipse(896, 48, 9, 9);
    //
    ellipse(909, 48, 9, 9);
    //
    ellipse(921, 48, 9, 9);
    //
    ellipse(934, 48, 9, 9);
    //
    ellipse(947, 48, 9, 9);
    //
    ellipse(960, 48, 9, 9);
    //
    ellipse(972, 48, 9, 9);
    //
    ellipse(985, 48, 9, 9);
    //
    ellipse(29, 60, 9, 9);
    //
    ellipse(42, 60, 9, 9);
    //
    ellipse(54, 60, 9, 9);
    //
    ellipse(67, 60, 9, 9);
    //
    ellipse(80, 60, 9, 9);
    //
    ellipse(93, 60, 9, 9);
    //
    ellipse(105, 60, 9, 9);
    //
    ellipse(118, 60, 9, 9);
    //
    ellipse(131, 60, 9, 9);
    //
    ellipse(144, 60, 9, 9);
    //
    ellipse(156, 60, 9, 9);
    //
    ellipse(169, 60, 9, 9);
    //
    ellipse(182, 60, 9, 9);
    //
    ellipse(195, 60, 9, 9);
    //
    ellipse(207, 60, 9, 9);
    //
    ellipse(220, 60, 9, 9);
    //
    ellipse(233, 60, 9, 9);
    //
    ellipse(246, 60, 9, 9);
    //
    ellipse(258, 60, 9, 9);
    //
    ellipse(271, 60, 9, 9);
    //
    ellipse(284, 60, 9, 9);
    //
    ellipse(297, 60, 9, 9);
    //
    ellipse(309, 60, 9, 9);
    //
    ellipse(322, 60, 9, 9);
    //
    ellipse(335, 60, 9, 9);
    //
    ellipse(348, 60, 9, 9);
    //
    ellipse(360, 60, 9, 9);
    //
    ellipse(373, 60, 9, 9);
    //
    ellipse(386, 60, 9, 9);
    //
    ellipse(399, 60, 9, 9);
    //
    ellipse(411, 60, 9, 9);

    ellipse(424, 60, 9, 9);

    ellipse(437, 60, 9, 9);

    ellipse(450, 60, 9, 9);

    ellipse(462, 60, 9, 9);

    ellipse(475, 60, 9, 9);

    ellipse(488, 60, 9, 9);

    ellipse(501, 60, 9, 9);

    ellipse(513, 60, 9, 9);

    ellipse(526, 60, 9, 9);

    ellipse(539, 60, 9, 9);

    ellipse(552, 60, 9, 9);

    ellipse(564, 60, 9, 9);

    ellipse(577, 60, 9, 9);

    ellipse(590, 60, 9, 9);

    ellipse(603, 60, 9, 9);

    ellipse(615, 60, 9, 9);

    ellipse(628, 60, 9, 9);

    ellipse(641, 60, 9, 9);

    ellipse(654, 60, 9, 9);

    ellipse(666, 60, 9, 9);

    ellipse(679, 60, 9, 9);

    ellipse(692, 60, 9, 9);

    ellipse(705, 60, 9, 9);

    ellipse(717, 60, 9, 9);

    ellipse(730, 60, 9, 9);

    ellipse(743, 60, 9, 9);

    ellipse(756, 60, 9, 9);

    ellipse(768, 60, 9, 9);

    ellipse(781, 60, 9, 9);

    ellipse(794, 60, 9, 9);

    ellipse(807, 60, 9, 9);

    ellipse(819, 60, 9, 9);

    ellipse(832, 60, 9, 9);

    ellipse(845, 60, 9, 9);

    ellipse(858, 60, 9, 9);

    ellipse(870, 60, 9, 9);

    ellipse(883, 60, 9, 9);

    ellipse(896, 60, 9, 9);

    ellipse(909, 60, 9, 9);

    ellipse(921, 60, 9, 9);

    ellipse(934, 60, 9, 9);

    ellipse(947, 60, 9, 9);

    ellipse(960, 60, 9, 9);

    ellipse(972, 60, 9, 9);

    ellipse(985, 60, 9, 9);

    ellipse(845, 73, 9, 9);

    ellipse(858, 73, 9, 9);

    ellipse(870, 73, 9, 9);

    ellipse(883, 73, 9, 9);

    ellipse(896, 73, 9, 9);

    ellipse(909, 73, 9, 9);

    ellipse(921, 73, 9, 9);

    ellipse(934, 73, 9, 9);

    ellipse(947, 73, 9, 9);

    ellipse(960, 73, 9, 9);

    ellipse(972, 73, 9, 9);

    ellipse(985, 73, 9, 9);

    ellipse(628, 73, 9, 9);

    ellipse(641, 73, 9, 9);

    ellipse(654, 73, 9, 9);

    ellipse(666, 73, 9, 9);

    ellipse(679, 73, 9, 9);

    ellipse(692, 73, 9, 9);

    ellipse(705, 73, 9, 9);

    ellipse(717, 73, 9, 9);

    ellipse(730, 73, 9, 9);

    ellipse(743, 73, 9, 9);

    ellipse(756, 73, 9, 9);

    ellipse(768, 73, 9, 9);

    ellipse(781, 73, 9, 9);

    ellipse(794, 73, 9, 9);

    ellipse(807, 73, 9, 9);

    ellipse(819, 73, 9, 9);

    ellipse(832, 73, 9, 9);

    ellipse(411, 73, 9, 9);

    ellipse(424, 73, 9, 9);

    ellipse(437, 73, 9, 9);

    ellipse(450, 73, 9, 9);

    ellipse(462, 73, 9, 9);

    ellipse(475, 73, 9, 9);

    ellipse(488, 73, 9, 9);

    ellipse(501, 73, 9, 9);

    ellipse(513, 73, 9, 9);

    ellipse(526, 73, 9, 9);

    ellipse(539, 73, 9, 9);

    ellipse(552, 73, 9, 9);

    ellipse(564, 73, 9, 9);

    ellipse(577, 73, 9, 9);

    ellipse(590, 73, 9, 9);

    ellipse(603, 73, 9, 9);

    ellipse(615, 73, 9, 9);

    ellipse(156, 73, 9, 9);

    ellipse(169, 73, 9, 9);

    ellipse(182, 73, 9, 9);

    ellipse(195, 73, 9, 9);

    ellipse(207, 73, 9, 9);

    ellipse(220, 73, 9, 9);

    ellipse(233, 73, 9, 9);

    ellipse(246, 73, 9, 9);

    ellipse(258, 73, 9, 9);

    ellipse(271, 73, 9, 9);

    ellipse(284, 73, 9, 9);

    ellipse(297, 73, 9, 9);

    ellipse(309, 73, 9, 9);

    ellipse(322, 73, 9, 9);

    ellipse(335, 73, 9, 9);

    ellipse(348, 73, 9, 9);

    ellipse(360, 73, 9, 9);

    ellipse(373, 73, 9, 9);

    ellipse(386, 73, 9, 9);

    ellipse(399, 73, 9, 9);

    ellipse(29, 73, 9, 9);

    ellipse(42, 73, 9, 9);

    ellipse(54, 73, 9, 9);

    ellipse(67, 73, 9, 9);

    ellipse(80, 73, 9, 9);

    ellipse(93, 73, 9, 9);

    ellipse(105, 73, 9, 9);

    ellipse(118, 73, 9, 9);

    ellipse(131, 73, 9, 9);

    ellipse(144, 73, 9, 9);

    ellipse(29, 85, 9, 9);

    ellipse(42, 85, 9, 9);

    ellipse(54, 85, 9, 9);

    ellipse(67, 85, 9, 9);

    ellipse(80, 85, 9, 9);

    ellipse(93, 85, 9, 9);

    ellipse(105, 85, 9, 9);

    ellipse(118, 85, 9, 9);

    ellipse(131, 85, 9, 9);

    ellipse(144, 85, 9, 9);

    ellipse(156, 85, 9, 9);

    ellipse(169, 85, 9, 9);

    ellipse(182, 85, 9, 9);

    ellipse(195, 85, 9, 9);

    ellipse(207, 85, 9, 9);

    ellipse(220, 85, 9, 9);

    ellipse(233, 85, 9, 9);

    ellipse(246, 85, 9, 9);

    ellipse(258, 85, 9, 9);

    ellipse(271, 85, 9, 9);

    ellipse(284, 85, 9, 9);

    ellipse(297, 85, 9, 9);

    ellipse(309, 85, 9, 9);

    ellipse(322, 85, 9, 9);

    ellipse(335, 85, 9, 9);

    ellipse(348, 85, 9, 9);

    ellipse(360, 85, 9, 9);

    ellipse(373, 85, 9, 9);

    ellipse(386, 85, 9, 9);

    ellipse(399, 85, 9, 9);

    ellipse(411, 85, 9, 9);

    ellipse(424, 85, 9, 9);

    ellipse(437, 85, 9, 9);

    ellipse(450, 85, 9, 9);

    ellipse(462, 85, 9, 9);

    ellipse(475, 85, 9, 9);

    ellipse(488, 85, 9, 9);

    ellipse(501, 85, 9, 9);

    ellipse(513, 85, 9, 9);

    ellipse(526, 85, 9, 9);

    ellipse(539, 85, 9, 9);

    ellipse(552, 85, 9, 9);

    ellipse(564, 85, 9, 9);

    ellipse(577, 85, 9, 9);

    ellipse(590, 85, 9, 9);

    ellipse(603, 85, 9, 9);

    ellipse(615, 85, 9, 9);

    ellipse(628, 85, 9, 9);

    ellipse(641, 85, 9, 9);

    ellipse(654, 85, 9, 9);

    ellipse(666, 85, 9, 9);

    ellipse(679, 85, 9, 9);

    ellipse(692, 85, 9, 9);

    ellipse(705, 85, 9, 9);

    ellipse(717, 85, 9, 9);

    ellipse(730, 85, 9, 9);

    ellipse(743, 85, 9, 9);

    ellipse(756, 85, 9, 9);

    ellipse(768, 85, 9, 9);

    ellipse(781, 85, 9, 9);

    ellipse(794, 85, 9, 9);

    ellipse(807, 85, 9, 9);

    ellipse(819, 85, 9, 9);

    ellipse(832, 85, 9, 9);

    ellipse(845, 85, 9, 9);

    ellipse(858, 85, 9, 9);

    ellipse(870, 85, 9, 9);

    ellipse(883, 85, 9, 9);

    ellipse(896, 85, 9, 9);

    ellipse(909, 85, 9, 9);

    ellipse(921, 85, 9, 9);

    ellipse(934, 85, 9, 9);

    ellipse(947, 85, 9, 9);

    ellipse(960, 85, 9, 9);

    ellipse(972, 85, 9, 9);

    ellipse(985, 85, 9, 9);
    
    for(int i=0; i<76; i++){
      ellipse(29+i*12.75, 98, 9, 9);
    }

//    ellipse(819, 98, 9, 9);
//
//    ellipse(832, 98, 9, 9);
//
//    ellipse(845, 98, 9, 9);
//
//    ellipse(858, 98, 9, 9);
//
//    ellipse(870, 98, 9, 9);
//
//    ellipse(883, 98, 9, 9);
//
//    ellipse(896, 98, 9, 9);
//
//    ellipse(909, 98, 9, 9);
//
//    ellipse(921, 98, 9, 9);
//
//    ellipse(934, 98, 9, 9);
//
//    ellipse(947, 98, 9, 9);
//
//    ellipse(960, 98, 9, 9);
//
//    ellipse(972, 98, 9, 9);
//
//    ellipse(985, 98, 9, 9);
//
//    ellipse(577, 98, 9, 9);
//
//    ellipse(590, 98, 9, 9);
//
//    ellipse(603, 98, 9, 9);
//
//    ellipse(615, 98, 9, 9);
//
//    ellipse(628, 98, 9, 9);
//
//    ellipse(641, 98, 9, 9);
//
//    ellipse(654, 98, 9, 9);
//
//    ellipse(666, 98, 9, 9);
//
//    ellipse(679, 98, 9, 9);
//
//    ellipse(692, 98, 9, 9);
//
//    ellipse(705, 98, 9, 9);
//
//    ellipse(717, 98, 9, 9);
//
//    ellipse(730, 98, 9, 9);
//
//    ellipse(743, 98, 9, 9);
//
//    ellipse(756, 98, 9, 9);
//
//    ellipse(768, 98, 9, 9);
//
//    ellipse(781, 98, 9, 9);
//
//    ellipse(794, 98, 9, 9);
//
//    ellipse(807, 98, 9, 9);
//
//    ellipse(322, 98, 9, 9);
//
//    ellipse(335, 98, 9, 9);
//
//    ellipse(348, 98, 9, 9);
//
//    ellipse(360, 98, 9, 9);
//
//    ellipse(373, 98, 9, 9);
//
//    ellipse(386, 98, 9, 9);
//
//    ellipse(399, 98, 9, 9);
//
//    ellipse(411, 98, 9, 9);
//
//    ellipse(424, 98, 9, 9);
//
//    ellipse(437, 98, 9, 9);
//
//    ellipse(450, 98, 9, 9);
//
//    ellipse(462, 98, 9, 9);
//
//    ellipse(475, 98, 9, 9);
//
//    ellipse(488, 98, 9, 9);
//
//    ellipse(501, 98, 9, 9);
//
//    ellipse(513, 98, 9, 9);
//
//    ellipse(526, 98, 9, 9);
//
//    ellipse(539, 98, 9, 9);
//
//    ellipse(552, 98, 9, 9);
//
//    ellipse(564, 98, 9, 9);
//
//    ellipse(105, 98, 9, 9);
//
//    ellipse(118, 98, 9, 9);
//
//    ellipse(131, 98, 9, 9);
//
//    ellipse(144, 98, 9, 9);
//
//    ellipse(156, 98, 9, 9);
//
//    ellipse(169, 98, 9, 9);
//
//    ellipse(182, 98, 9, 9);
//
//    ellipse(195, 98, 9, 9);
//
//    ellipse(207, 98, 9, 9);
//
//    ellipse(220, 98, 9, 9);
//
//    ellipse(233, 98, 9, 9);
//
//    ellipse(246, 98, 9, 9);
//
//    ellipse(258, 98, 9, 9);
//
//    ellipse(271, 98, 9, 9);
//
//    ellipse(284, 98, 9, 9);
//
//    ellipse(297, 98, 9, 9);
//
//    ellipse(309, 98, 9, 9);
//
//    ellipse(29, 98, 9, 9);
//
//    ellipse(42, 98, 9, 9);
//
//    ellipse(54, 98, 9, 9);
//
//    ellipse(67, 98, 9, 9);
//
//    ellipse(80, 98, 9, 9);
//
//    ellipse(93, 98, 9, 9);
    popMatrix();
    //count > 70 -> 이미지 로드
    if (count > 55 ) lt1 += 100;
    if (count < 55 ) lt1 -= 40;
    if ( lt1 < 0 ) lt1= 0;
    if ( lt1 > 10) image(img, 0, 0);
    fill(255, 0, 0);
    if ( lt1 > 10) rect(0, 560, 1024, 300);

    popMatrix();

    pushMatrix();
    if ( count < 10 && lt1 < 10) image(img1, 29, 55);
    //sount gage
    fill(col1);
    if ( count > 10) fill(255, z, y);
    if ( count > 10) y -=2;
    if ( y < 100 ) y = 100;
    if ( count > 25) fill(255, 180, 70);
    if ( z < 180) z = 180;
    if ( count > 25) z -=2;
    if ( count > 35) fill(x, 0, 0);
    if ( count == 0) y = 255;
    if ( count == 0) z = 255;
    if ( lt1 < 10 ) rect( 29, 693, 0+count*18, 15);
    popMatrix();
    popMatrix();
    pushMatrix();
    masterUI();
    popMatrix();
  }

  void sceneZero() {
    background(255, 0, 0);
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
    stroke(0, 0, 30, 255);
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

