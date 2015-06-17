class Sketch4 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  
  Jaum j1;
  Moum m1;
  Star [] stars;

  int add;
  int resettime= 13;
  //control reset timing here
  int num =50;
  PImage img;

  //-------------------------------------------
  void setup () {
    size(1024, 768);

    j1 = new Jaum();
    m1 = new Moum();
    stars = new Star[num];
    for (int i = 0; i<stars.length; i++ ) {
      stars[i] = new Star(random(width), random(height), random(0, 3), color(3));
    }

    img = loadImage("pressbutton01.png");
    frameRate(30);
    smooth();
  }
  //---------------------------------------------
  void draw () {
    super.draw();
    background(0);
    stroke(0, 0, 0, 0);
    strokeWeight(0);
    for (int i=0; i<stars.length; i++) {  
      stars[i].display();
      stars[i].update();
    }
    imageint(80, 1500, 0.45);
    sent1(80, -180, 1.3);
    masterUI();
  }
  //----------------------------------------------
  void imageint(float a, float b, float c) {
    pushMatrix();
    scale(c);
    translate(a, b);
    image(img, 10, 0);
    scale(0);
    popMatrix();
  }
  //----------------------------------------------
  void mousePressed() {
    if (mousePressed) { 
      add++;
    }
    if (add ==resettime) {
      add=0;
      setup();
    }
  }

  void keyPressed() {
    if (key==' ') { 
      setup();
    }
  }

  class Jaum {
    //field----------------------------------------------------------
    //---------------------------------------------------------------
    float angle, radius;
    float xwidth = 0.0;
    float yheight = 0.0;

    float opacity = 255;
    float [] starColor = new float [21] ;
    float starNoise = 0.0;
    float [] starSize = new float [21];
    float [] lineColor = new float [21];
    float [] lineDim = new float [21];


    //stars 1 --------------------------
    float [] roundX1 = new float [20];
    float [] roundY1 = new float [20];
    //stars 2 ----------------------------
    float [] roundX2 = new float [20];
    float [] roundY2 = new float [20];
    //stars 3 ----------------------------
    float [] roundX3 = new float [20];
    float [] roundY3 = new float [20];
    //stars 4 ----------------------------
    float [] roundX4 = new float [20];
    float [] roundY4 = new float [20];
    //stars 5 ----------------------------
    float [] roundX5 = new float [20];
    float [] roundY5 = new float [20];
    //stars 6 ----------------------------
    float [] roundX6 = new float [20];
    float [] roundY6 = new float [20];
    //stars 7 ----------------------------
    float [] roundX7 = new float [20];
    float [] roundY7 = new float [20];
    //stars 8 ----------------------------
    float [] roundX8 = new float [20];
    float [] roundY8 = new float [20];
    //stars 9 ----------------------------
    float [] roundX9 = new float [20];
    float [] roundY9 = new float [20];

    // constructor------------------------------------------------------
    //------------------------------------------------------------------
    Jaum() {
      xwidth = width;
      yheight = height;
      //star size-----------------------------------------------------
      for (int i = 0; i<20; i++) {
        starColor[i] = 0.0;
      }

      //color------------------------------------------------------------
      for (int i = 0; i<20; i++) {
        constrain(lineColor[i], 0, 255);
      }

      for (int i =0; i<20; i++) {
        lineDim[i]=i*100;
      }

      //randomize-------------------------------------
      for (int i =0; i<18; i++) {
        angle = random(TWO_PI);
        radius = random(5);
        roundX1 [i] = 140+20*i+cos(angle)*radius;
        roundY1 [i] = 140+20*i+sin(angle)*radius;
        radius = random(10);
        roundX2 [i] = 140+20*i+cos(angle)*radius;
        roundY2 [i] = 140+20*i+sin(angle)*radius;
        radius = random(15);
        roundX3 [i] = 140+20*i+cos(angle)*radius;
        roundY3 [i] = 140+20*i+sin(angle)*radius;
        radius = random(20);
        roundX4 [i] = 140+20*i+cos(angle)*radius;
        roundY4 [i] = 140+20*i+sin(angle)*radius;
        radius = random(25);
        roundX5 [i] = 140+20*i+cos(angle)*radius;
        roundY5 [i] = 140+20*i+sin(angle)*radius;
        radius = random(30);
        roundX6 [i] = 140+20*i+cos(angle)*radius;
        roundY6 [i] = 140+20*i+sin(angle)*radius;
        radius = random(35);
        roundX7 [i] = 140+20*i+cos(angle)*radius;
        roundY7 [i] = 140+20*i+sin(angle)*radius;
        radius = random(40);
        roundX8 [i] = 140+20*i+cos(angle)*radius;
        roundY8 [i] = 140+20*i+sin(angle)*radius;
        radius = random(45);
        roundX9 [i] = 140+20*i+cos(angle)*radius;
        roundY9 [i] = 140+20*i+sin(angle)*radius;
      }
    }
    //void series-----------------------------------------------------------
    //----------------------------------------------------------------------
    void Giyukdp(float a, float b, float c, int d) { 
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX1 [5], roundY1[5], starSize[1], starSize[1]);
      //giyuk left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [12], roundY2[6], starSize[2], starSize[2]);
      //giyuk right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX3 [12], roundY3[12], starSize[3], starSize[3]);
      //giyuk right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void Giyukup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key---------------------
      if (key=='r') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX2 [12], roundY2[6]);
        //left upper to  right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [12], roundY2[6], roundX3 [12], roundY3[12]);
        //right upper to right lower
        strokeWeight(0);
      }
      //mouse--------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;      
        line(roundX1 [5], roundY1[5], roundX2 [12], roundY2[6]);
        //left upper to  right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [12], roundY2[6], roundX3 [12], roundY3[12]);
        //right upper to right lower

        stroke(0, 0, 0, 0);
        strokeWeight(0);
      }
      popMatrix();
    }

    //====================================================================
    void Kiyukdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX4 [5], roundY4[5], starSize[1], starSize[1]);
      //kiyuk left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX5 [12], roundY5[6], starSize[2], starSize[2]);
      //kiyuk right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX6 [6], roundY6[8], starSize[3], starSize[3]);
      //kiyuk left middle
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX7 [12], roundY7[8], starSize[4], starSize[4]);
      //kiyuk right middle
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX8 [12], roundY8[12], starSize[5], starSize[5]);
      //kiyuk right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void Kiyukup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key------------------------------------
      if (key=='z') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;   
        line(roundX4 [5], roundY4[5], roundX5 [12], roundY5[6]);
        //left upper to right upper    

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX5 [12], roundY5[6], roundX7 [12], roundY7[8]);
        //right upper to right middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX7 [12], roundY7[8], roundX8 [12], roundY8[12]);
        //right middle to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [6], roundY6[8], roundX7 [12], roundY7[8]);
        //left middle to right middle

        strokeWeight(0);
      }
      //mouse------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;   
        line(roundX4 [5], roundY4[5], roundX5 [12], roundY5[6]);
        //left upper to right upper    

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX5 [12], roundY5[6], roundX7 [12], roundY7[8]);
        //right upper to right middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX7 [12], roundY7[8], roundX8 [12], roundY8[12]);
        //right middle to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [6], roundY6[8], roundX7 [12], roundY7[8]);
        //left middle to right middle

        strokeWeight(0);
      }
      popMatrix();
    }
    //===============================================================
    void GiyukDDdp (float a, float b, float c, int d) {

      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX9 [3], roundY9[4], starSize[6], starSize[6]);
      //giyuk left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX8 [8], roundY8[4], starSize[7], starSize[7]);
      //giyuk middle upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX7 [13], roundY7[4], starSize[8], starSize[8]);
      //giyuk right upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX6 [8], roundY6[11], starSize[9], starSize[9]);
      //giyuk middle lower
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX5 [13], roundY5[11], starSize[10], starSize[10]);
      //giyuk right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void GiyukDDup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key------------------------------
      if (key=='R') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX9 [3], roundY9[4], roundX8 [8], roundY8[4]);
        //left upper to middle upper    

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX8 [8], roundY8[4], roundX7 [13], roundY7[4]);
        //middle upper ro  right upper   

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX7 [13], roundY7[4], roundX5 [13], roundY5[11]  );
        //right upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [8], roundY8[4], roundX6 [8], roundY6[11]);
        //middle upper to middle lower
        strokeWeight(0);
      }
      //mouse--------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX9 [3], roundY9[4], roundX8 [8], roundY8[4]);
        //left upper to middle upper    

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX8 [8], roundY8[4], roundX7 [13], roundY7[4]);
        //middle upper ro  right upper   

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX7 [13], roundY7[4], roundX5 [13], roundY5[11]  );
        //right upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [8], roundY8[4], roundX6 [8], roundY6[11]);
        //middle upper to middle lower
        strokeWeight(0);
      }
      popMatrix();
    }
    //==============================================================
    //==============================================================
    //nien lines
    void Niendp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[9], opacity);
      starNoise+=0.01;
      starColor[9] = noise(starNoise/100*9)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      ellipse(roundX1 [5], roundY1[5], starSize[10], starSize[01]);
      //nien left upper
      fill(starColor[10], opacity);
      starColor[10] = noise(starNoise/100*10)*255;
      ellipse(roundX2 [5], roundY1[11], starSize[11], starSize[11]);
      //nien left lower
      fill(starColor[11], opacity);
      starColor[11] = noise(starNoise/100*11)*255;
      ellipse(roundX1 [11], roundY2[11], starSize[12], starSize[12]);
      //nien right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void Nienup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key-------------------
      if (key=='s') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX2 [5], roundY1[11]);
        //left upper to left lower
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [5], roundY1[11], roundX1 [11], roundY2[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      //mouse------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX2 [5], roundY1[11]);
        //left upper to left lower
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [5], roundY1[11], roundX1 [11], roundY2[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      popMatrix();
    }

    //===============================================================
    void Digutdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX2 [5], roundY2[5], starSize[13], starSize[13]);
      //digut left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX3 [11], roundY3[5], starSize[14], starSize[14]);
      //digut right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX4 [5], roundY4[11], starSize[15], starSize[15]);
      //digut left lower
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX5 [11], roundY5[11], starSize[16], starSize[16]);
      //digut right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void Digutup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key-------------------------------------------------
      if (key=='e') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [5], roundY2[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [5], roundY2[5], roundX4 [5], roundY4[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [5], roundY4[11], roundX5 [11], roundY5[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      //mouse-------------------------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [5], roundY2[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [5], roundY2[5], roundX4 [5], roundY4[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [5], roundY4[11], roundX5 [11], roundY5[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      popMatrix();
    }

    //=================================================================================================
    void Rieldp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX6 [5], roundY6[5], starSize[17], starSize[17]);
      //riel left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX7 [11], roundY7[5], starSize[18], starSize[18]);
      //riel right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX8 [5], roundY8[8], starSize[19], starSize[19]);
      //riel left middle
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX9 [11], roundY9[8], starSize[1], starSize[1]);
      //riel right middle
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX1 [5], roundY1[11], starSize[2], starSize[2]);
      //riel left lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX2 [11], roundY2[11], starSize[3], starSize[3]);
      //riel right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void Rielup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key----------------------------------------------
      if (key=='f') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX6 [5], roundY6[5], roundX7 [11], roundY7[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX7 [11], roundY7[5], roundX9 [11], roundY9[8]);
        //right upper to right middle 

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX9 [11], roundY9[8], roundX8 [5], roundY8[8]);
        //right middle to left middle  

        stroke(255, 255, 255, lineColor[1]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [5], roundY8[8], roundX1 [5], roundY1[11]);
        //left middle to  left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX1 [5], roundY1[11], roundX2 [11], roundY2[11]);
        //left lower to right lower 

        strokeWeight(0);
      }
      //mouse----------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX6 [5], roundY6[5], roundX7 [11], roundY7[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX7 [11], roundY7[5], roundX9 [11], roundY9[8]);
        //right upper to right middle 

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX9 [11], roundY9[8], roundX8 [5], roundY8[8]);
        //right middle to left middle  

        stroke(255, 255, 255, lineColor[1]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [5], roundY8[8], roundX1 [5], roundY1[11]);
        //left middle to  left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX1 [5], roundY1[11], roundX2 [11], roundY2[11]);
        //left lower to right lower 

        strokeWeight(0);
      }
      popMatrix();
    }

    //=============================================================
    void Tigutdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX3 [5], roundY3[5], starSize[4], starSize[4]);
      //tigut left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX4 [11], roundY4[5], starSize[5], starSize[5]);
      //tigut right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX5 [5], roundY5[8], starSize[6], starSize[6]);
      //tigut left middle
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX6 [11], roundY6[8], starSize[7], starSize[7]);
      //tigut right middle
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX7 [5], roundY7[11], starSize[8], starSize[8]);
      //tigut left lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX8 [11], roundY8[11], starSize[9], starSize[9]);
      //tigut right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //...........................................................................................
    void Tigutup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key---------------------------------------------
      if (key=='x') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX3 [5], roundY3[5], roundX4 [11], roundY4[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX3 [5], roundY3[5], roundX5 [5], roundY5[8]);
        //left upper to left left middle 

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [11], roundY6[8], roundX5 [5], roundY5[8]);
        //right middle to left middle    

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX5 [5], roundY5[8], roundX7 [5], roundY7[11]);
        //left middle to left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX7 [5], roundY7[11], roundX8 [11], roundY8[11]);
        //left lower to right lower 

        strokeWeight(0);
      }
      //mouse---------------------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX3 [5], roundY3[5], roundX4 [11], roundY4[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX3 [5], roundY3[5], roundX5 [5], roundY5[8]);
        //left upper to left left middle 

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [11], roundY6[8], roundX5 [5], roundY5[8]);
        //right middle to left middle    

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX5 [5], roundY5[8], roundX7 [5], roundY7[11]);
        //left middle to left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX7 [5], roundY7[11], roundX8 [11], roundY8[11]);
        //left lower to right lower 

        strokeWeight(0);
      }
      popMatrix();
    }

    //=====================================================================
    void DigutDDdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [3], roundY1[4], starSize[10], starSize[10]);
      //DigutDD left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [8], roundY2[4], starSize[11], starSize[11]);
      //DigutDD middle upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX3 [13], roundY3[4], starSize[12], starSize[12]);
      //DigutDD right upper

      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX7 [3], roundY7[11], starSize[13], starSize[13]);
      //DigutDD left lower
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX8 [8], roundY8[11], starSize[14], starSize[14]);
      //DigutDD middle lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX9 [13], roundY9[11], starSize[15], starSize[15]);
      //DigutDD right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //......................................................................
    void DigutDDup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //key------------------------------------------------------------
      if (key=='E') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [3], roundY1[4], roundX2 [8], roundY2[4]);
        //left upper to middle upper  

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [8], roundY2[4], roundX3 [13], roundY3[4]);
        //middle upper ro right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX1 [3], roundY1[4], roundX7 [3], roundY7[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX2 [8], roundY2[4], roundX8 [8], roundY8[11]);
        //middle upper to middle lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX7 [3], roundY7[11], roundX8 [8], roundY8[11]);
        //left lower to middle lower

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;    
        line(roundX8 [8], roundY8[11], roundX9 [13], roundY9[11]);
        //middle lower ro right lower

        strokeWeight(0);
      }
      //mouse--------------------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [3], roundY1[4], roundX2 [8], roundY2[4]);
        //left upper to middle upper  

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX2 [8], roundY2[4], roundX3 [13], roundY3[4]);
        //middle upper ro right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX1 [3], roundY1[4], roundX7 [3], roundY7[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX2 [8], roundY2[4], roundX8 [8], roundY8[11]);
        //middle upper to middle lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX7 [3], roundY7[11], roundX8 [8], roundY8[11]);
        //left lower to middle lower

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;    
        line(roundX8 [8], roundY8[11], roundX9 [13], roundY9[11]);
        //middle lower ro right lower
        strokeWeight(0);
      }
      popMatrix();
    }
    //==================================================================
    //==================================================================
    void Miemdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [5], roundY1[5], starSize[16], starSize[16]);
      //miem left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX3 [11], roundY3[5], starSize[17], starSize[17]);
      //miem right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX5 [5], roundY5[11], starSize[18], starSize[18]);
      //miem left lower
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX7 [11], roundY7[11], starSize[19], starSize[19]);
      //miem right lower
      stroke(0, 0, 0, 0);
      popMatrix();
      //......................................................................
    }
    void Miemup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //--------------------------------------------
      if (key=='a') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX5 [5], roundY5[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX3 [11], roundY3[5], roundX7 [11], roundY7[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX5 [5], roundY5[11], roundX7 [11], roundY7[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      //---------------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX5 [5], roundY5[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX3 [11], roundY3[5], roundX7 [11], roundY7[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX5 [5], roundY5[11], roundX7 [11], roundY7[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      popMatrix();
    }
    //==============================================================================
    void Biebdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX2 [5], roundY2[3], starSize[1], starSize[1]);
      //bieb left highest
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX4 [11], roundY4[3], starSize[2], starSize[2]);
      //bieb right highest

      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX6 [5], roundY6[5], starSize[3], starSize[3]);
      //bieb left upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX8 [11], roundY8[5], starSize[4], starSize[4]);
      //bieb right upper
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX9 [5], roundY9[11], starSize[5], starSize[5]);
      //bieb left lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX7 [11], roundY7[11], starSize[6], starSize[6]);
      //bieb right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //...........................................................................
    void Biebup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //---------------------------------------------------------------
      if (key=='q') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [5], roundY2[3], roundX6 [5], roundY6[5]);
        //left highest to left upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [11], roundY4[3], roundX8 [11], roundY8[5]);
        //right highest to right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [5], roundY6[5], roundX8 [11], roundY8[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [5], roundY6[5], roundX9 [5], roundY9[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX8 [11], roundY8[5], roundX7[11], roundY7[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX9 [5], roundY9[11], roundX7 [11], roundY7[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      //--------------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [5], roundY2[3], roundX6 [5], roundY6[5]);
        //left highest to left upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [11], roundY4[3], roundX8 [11], roundY8[5]);
        //right highest to right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [5], roundY6[5], roundX8 [11], roundY8[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [5], roundY6[5], roundX9 [5], roundY9[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX8 [11], roundY8[5], roundX7[11], roundY7[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX9 [5], roundY9[11], roundX7 [11], roundY7[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      popMatrix();
    }

    //===============================================================
    void Piepdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX2 [5], roundY2[5], starSize[7], starSize[7]);
      //piep left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX3 [11], roundY3[5], starSize[8], starSize[8]);
      //piep right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX5 [3], roundY5[5], starSize[9], starSize[9]);
      //piep left left upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX7 [13], roundY7[5], starSize[10], starSize[10]);
      //piep right right upper
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX1 [5], roundY1[11], starSize[11], starSize[11]);
      //piep left lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX4 [11], roundY4[11], starSize[12], starSize[12]);
      //piep right lower
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      ellipse(roundX6 [3], roundY6[11], starSize[13], starSize[13]);
      //piep left left lower
      fill(starColor[8], opacity);
      starColor[8] = noise(starNoise/100*8)*255;
      ellipse(roundX8 [13], roundY8[11], starSize[14], starSize[14]);
      //piep right right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //..................................................................................
    void Piepup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //--------------------------------------------------------------
      if (key=='v') {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX5 [3], roundY5[5], roundX2 [5], roundY2[5]);
        //left left upper to left upper 

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX7 [13], roundY7[5], roundX3 [11], roundY3[5]);
        //right right upper to right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [3], roundY6[11], roundX1 [5], roundY1[11]);
        //left left lower to left lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [13], roundY8[11], roundX4 [11], roundY4[11]);
        //right right lower to right lower 

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX2 [5], roundY2[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX2 [5], roundY2[5], roundX1 [5], roundY1[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX3 [11], roundY3[5], roundX4 [11], roundY4[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX1 [5], roundY1[11], roundX4 [11], roundY4[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      //--------------------------------------------------------
      if (mouseButton==LEFT) {

        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX5 [3], roundY5[5], roundX2 [5], roundY2[5]);
        //left left upper to left upper 

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX7 [13], roundY7[5], roundX3 [11], roundY3[5]);
        //right right upper to right upper

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX6 [3], roundY6[11], roundX1 [5], roundY1[11]);
        //left left lower to left lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [13], roundY8[11], roundX4 [11], roundY4[11]);
        //right right lower to right lower 

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX2 [5], roundY2[5], roundX3 [11], roundY3[5]);
        //left upper to right upper

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX2 [5], roundY2[5], roundX1 [5], roundY1[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX3 [11], roundY3[5], roundX4 [11], roundY4[11]);
        //right upper to right lower

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX1 [5], roundY1[11], roundX4 [11], roundY4[11]);
        //left lower to right lower

        strokeWeight(0);
      }
      popMatrix();
    }

    //================================================================================
    void BiebDDdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      //3- 5 - 8 - 10 - 13  /  3- 4 - 5 - 8 -11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [3], roundY9[3], starSize[15], starSize[15]);
      //BiebDD left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [13], roundY8[3], starSize[16], starSize[16]);
      //BiebDD right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX3 [8], roundY7[3], starSize[17], starSize[17]);
      //BiebDD middle upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX4 [3], roundY6[5], starSize[18], starSize[18]);
      //BiebDD left middle
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX5 [13], roundY5[5], starSize[19], starSize[19]);
      //BiebDD right middle
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX6 [8], roundY4[5], starSize[1], starSize[1]);
      //BiebDD middle middle
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      ellipse(roundX7 [3], roundY3[11], starSize[2], starSize[2]);
      //BiebDD left lower
      fill(starColor[8], opacity);
      starColor[8] = noise(starNoise/100*8)*255;
      ellipse(roundX8 [8], roundY2[11], starSize[3], starSize[3]);
      //BiebDD middle lower
      fill(starColor[9], opacity);
      starColor[9] = noise(starNoise/100*9)*255;
      ellipse(roundX9 [13], roundY1[11], starSize[4], starSize[4]);
      //BiebDD right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //....................................................
    void BiebDDup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //-------------------------------------------------------
      if (key=='Q') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [3], roundY9[3], roundX4 [3], roundY6[5]);
        //left upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [3], roundY6[5], roundX7 [3], roundY3[11]);
        //left middle to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [3], roundY6[5], roundX6 [8], roundY4[5]);
        //left middle to middle middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [8], roundY4[5], roundX5 [13], roundY5[5]);
        // middle middle to  right middle

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX3 [8], roundY7[3], roundX6 [8], roundY4[5]);
        //middle upper to middle middle

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX6 [8], roundY4[5], roundX8 [8], roundY2[11]);
        //middle middle to middle lower

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX7 [3], roundY3[11], roundX8 [8], roundY2[11]);
        //left lower  to lower middle

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX8 [8], roundY2[11], roundX9 [13], roundY1[11]);
        // lower middle to  right lower

        stroke(255, 255, 255, lineColor[9]);
        lineColor[9] = sin(lineColor[0]/lineDim[d*9])*500;
        line(roundX2 [13], roundY8[3], roundX5 [13], roundY5[5]);
        //right upper to right middle

        stroke(255, 255, 255, lineColor[10]);
        lineColor[10] = sin(lineColor[0]/lineDim[d*10])*500;
        line(roundX5 [13], roundY5[5], roundX9 [13], roundY1[11]);
        //right middle to right lower

        strokeWeight(0);
      }
      //-------------------------------------------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [3], roundY9[3], roundX4 [3], roundY6[5]);
        //left upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [3], roundY6[5], roundX7 [3], roundY3[11]);
        //left middle to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [3], roundY6[5], roundX6 [8], roundY4[5]);
        //left middle to middle middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [8], roundY4[5], roundX5 [13], roundY5[5]);
        // middle middle to  right middle

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX3 [8], roundY7[3], roundX6 [8], roundY4[5]);
        //middle upper to middle middle

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX6 [8], roundY4[5], roundX8 [8], roundY2[11]);
        //middle middle to middle lower

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX7 [3], roundY3[11], roundX8 [8], roundY2[11]);
        //left lower  to lower middle

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX8 [8], roundY2[11], roundX9 [13], roundY1[11]);
        // lower middle to  right lower

        stroke(255, 255, 255, lineColor[9]);
        lineColor[9] = sin(lineColor[0]/lineDim[d*9])*500;
        line(roundX2 [13], roundY8[3], roundX5 [13], roundY5[5]);
        //right upper to right middle

        stroke(255, 255, 255, lineColor[10]);
        lineColor[10] = sin(lineColor[0]/lineDim[d*10])*500;
        line(roundX5 [13], roundY5[5], roundX9 [13], roundY1[11]);
        //right middle to right lower

        strokeWeight(0);
      }
      popMatrix();
    }

    //======================================================================

    void Siotdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      // 5 - 6 - 8 -9 - 11 /  5 - 8- 11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX6 [8], roundY9[5], starSize[5], starSize[5]);
      //siot middle upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX8 [5], roundY8[11], starSize[6], starSize[6]);
      //siot left lower
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX9 [11], roundY6[11], starSize[7], starSize[7]);
      //siot right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //.....................
    void Siotup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //---------------
      if (key=='t') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX6 [8], roundY9[5], roundX8 [5], roundY8[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX6 [8], roundY9[5], roundX9 [11], roundY6[11]);
        // middle upper to right lower

        strokeWeight(0);
      }
      //--------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX6 [8], roundY9[5], roundX8 [5], roundY8[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX6 [8], roundY9[5], roundX9 [11], roundY6[11]);
        // middle upper to right lower

        strokeWeight(0);
      }
      popMatrix();
    }
    //================================================================================

    void Jietdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      // 5 - 6 - 8 -9 - 11 /  5 - 8- 11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [5], roundY1[5], starSize[8], starSize[8]);
      //jiet left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [11], roundY2[5], starSize[9], starSize[9]);
      //jiet right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX4 [8], roundY4[5], starSize[10], starSize[10]);
      //jiet middle upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX6 [5], roundY6[11], starSize[11], starSize[11]);
      //jiet left lower
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX8 [11], roundY8[11], starSize[12], starSize[12]);
      //jiet right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //.....................
    void Jietup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //--------------------
      if (key=='w') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX4 [8], roundY4[5], roundX6 [5], roundY6[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [8], roundY4[5], roundX8 [11], roundY8[11]);
        // middle upper to right lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [8], roundY4[5], roundX1 [5], roundY1[5]);
        // middle upper to left upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX4 [8], roundY4[5], roundX2 [11], roundY2[5]);
        // middle upper to right upper

        strokeWeight(0);
      }
      //----------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX4 [8], roundY4[5], roundX6 [5], roundY6[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX4 [8], roundY4[5], roundX8 [11], roundY8[11]);
        // middle upper to right lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [8], roundY4[5], roundX1 [5], roundY1[5]);
        // middle upper to left upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX4 [8], roundY4[5], roundX2 [11], roundY2[5]);
        // middle upper to right upper

        strokeWeight(0);
      }
      popMatrix();
    }
    //================================================================================
    void Chietdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      // 5 - 6 - 8 -9 - 11 /  5 - 8- 11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX2 [8], roundY2[3], starSize[13], starSize[13]);
      //chiet middle highest
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX4 [5], roundY4[5], starSize[14], starSize[14]);
      //chiet left upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX6 [11], roundY6[5], starSize[15], starSize[15]);
      //chiet right upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX8 [8], roundY8[5], starSize[16], starSize[16]);
      //chiet middle upper
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX3 [5], roundY3[11], starSize[17], starSize[17]);
      //chiet left lower
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX9 [11], roundY9[11], starSize[18], starSize[18]);
      //chiet right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //.....................
    void Chietup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //--------------------
      if (key=='c') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [8], roundY2[3], roundX8 [8], roundY8[5]);
        // middle highest to  middle upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX8 [8], roundY8[5], roundX3 [5], roundY3[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX8 [8], roundY8[5], roundX9 [11], roundY9[11]);
        // middle upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [8], roundY8[5], roundX4 [5], roundY4[5]);
        // middle upper to left upper

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX8 [8], roundY8[5], roundX6 [11], roundY6[5]);
        // middle upper to right upper

        strokeWeight(0);
      }

      //----------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [8], roundY2[3], roundX8 [8], roundY8[5]);
        // middle highest to  middle upper

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX8 [8], roundY8[5], roundX3 [5], roundY3[11]);
        // middle upper to left lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX8 [8], roundY8[5], roundX9 [11], roundY9[11]);
        // middle upper to right lower

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX8 [8], roundY8[5], roundX4 [5], roundY4[5]);
        // middle upper to left upper

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX8 [8], roundY8[5], roundX6 [11], roundY6[5]);
        // middle upper to right upper

        strokeWeight(0);
      }
      popMatrix();
    }

    //================================================================================
    void SiotDDdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      //3 - 4 - 5 - 6 - '8' - 10 -11- 12-13 / 5 - 8 - 11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [5], roundY1[5], starSize[1], starSize[1]);
      //SiotDD left upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [11], roundY2[5], starSize[2], starSize[2]);
      //SiotDD right upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX4 [8], roundY4[11], starSize[3], starSize[3]);
      //SiotDD middle lower
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX5 [3], roundY5[11], starSize[4], starSize[4]);
      //SiotDD left lower
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX7 [13], roundY7[11], starSize[5], starSize[5]);
      //SiotDD right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //.....................
    void SiotDDup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //---------------------
      if (key=='T') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX5 [3], roundY5[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX4 [8], roundY4[11]);
        //left upper to middle lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [8], roundY4[11], roundX2 [11], roundY2[5]);
        //middle lower to right upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX2 [11], roundY2[5], roundX7 [13], roundY7[11]);
        //right upper to right lower

        strokeWeight(0);
      }

      //-----------------------

      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX5 [3], roundY5[11]);
        //left upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX4 [8], roundY4[11]);
        //left upper to middle lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX4 [8], roundY4[11], roundX2 [11], roundY2[5]);
        //middle lower to right upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX2 [11], roundY2[5], roundX7 [13], roundY7[11]);
        //right upper to right lower

        strokeWeight(0);
      }

      popMatrix();
    }

    //================================================================================

    void JietDDdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      //3-'4'-5-'7'-8-'9'-11-'12'-13 / 5 -'8'-11
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX1 [5], roundY1[5], starSize[6], starSize[6]);
      //jietDD left middle upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX9 [11], roundY9[5], starSize[7], starSize[7]);
      //jietDD right middle upper

      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX2 [8], roundY2[5], starSize[8], starSize[8]);
      //jietDD middle upper
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX4 [3], roundY4[5], starSize[9], starSize[9]);
      //jietDD left upper
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX8 [13], roundY8[5], starSize[10], starSize[10]);
      //jietDD right upper

      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX3 [8], roundY3[11], starSize[11], starSize[11]);
      //jietDD middle lower
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      ellipse(roundX5 [3], roundY5[11], starSize[12], starSize[12]);
      //jietDD left lower
      fill(starColor[8], opacity);
      starColor[8] = noise(starNoise/100*8)*255;
      ellipse(roundX7 [13], roundY7[11], starSize[13], starSize[13]);
      //jietDD right lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //.....................
    void JietDDup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //----------------------
      if (key=='W') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX5 [3], roundY5[11]);
        //left middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX3 [8], roundY3[11]);
        //left middle upper to middle lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX3 [8], roundY3[11], roundX9 [11], roundY9[5]);
        //middle lower to right middle upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX9 [11], roundY9[5], roundX7 [13], roundY7[11]);
        //right middle upper to right lower


        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX4 [3], roundY4[5], roundX1 [5], roundY1[5]);
        //left upper to left upper middle

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX1 [5], roundY1[5], roundX2 [8], roundY2[5]);
        //left middle upper to middle upper

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX2 [8], roundY2[5], roundX9 [11], roundY9[5]);
        //middle upper to right middle upper

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX9 [11], roundY9[5], roundX8 [13], roundY8[5]);
        //right middle upper to right upper

        strokeWeight(0);
      }
      //---------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [5], roundY1[5], roundX5 [3], roundY5[11]);
        //left middle upper to left lower

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line(roundX1 [5], roundY1[5], roundX3 [8], roundY3[11]);
        //left middle upper to middle lower

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX3 [8], roundY3[11], roundX9 [11], roundY9[5]);
        //middle lower to right middle upper

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX9 [11], roundY9[5], roundX7 [13], roundY7[11]);
        //right middle upper to right lower


        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX4 [3], roundY4[5], roundX1 [5], roundY1[5]);
        //left upper to left upper middle

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line(roundX1 [5], roundY1[5], roundX2 [8], roundY2[5]);
        //left middle upper to middle upper

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line(roundX2 [8], roundY2[5], roundX9 [11], roundY9[5]);
        //middle upper to right middle upper

        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        line(roundX9 [11], roundY9[5], roundX8 [13], roundY8[5]);
        //right middle upper to right upper

        strokeWeight(0);
      }
      popMatrix();
    }
    //========================================================================
    //================================================================================
    void Yiengdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX2 [8], roundY9[5], starSize[1], starSize[1]);
      //yieng middle upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX4 [5], roundY7[8], starSize[2], starSize[2]);
      //yieng left middle
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX6 [11], roundY5[8], starSize[3], starSize[3]);
      //yieng right middle
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX8 [8], roundY3[11], starSize[4], starSize[4]);
      //yieng middle lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //.....................
    void Yiengup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //--------------------
      if (key=='d') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [8], roundY9[5], roundX4 [5], roundY7[8]);
        //middle upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line( roundX4 [5], roundY7[8], roundX8 [8], roundY3[11]);
        //left middle to lower middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX2 [8], roundY9[5], roundX6 [11], roundY5[8]);
        //middle upper to right middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [11], roundY5[8], roundX8 [8], roundY3[11]);
        //right middle to lower middle

        strokeWeight(0);
      }
      //--------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX2 [8], roundY9[5], roundX4 [5], roundY7[8]);
        //middle upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line( roundX4 [5], roundY7[8], roundX8 [8], roundY3[11]);
        //left middle to lower middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX2 [8], roundY9[5], roundX6 [11], roundY5[8]);
        //middle upper to right middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX6 [11], roundY5[8], roundX8 [8], roundY3[11]);
        //right middle to lower middle

        strokeWeight(0);
      }
      popMatrix();
    }

    //================================================================================
    void Hietdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.01;
      starColor[1] = noise(starNoise/100*1)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      ellipse(roundX3 [8], roundY9[3], starSize[5], starSize[5]);
      //hiet middle upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX6 [5], roundY6[5], starSize[6], starSize[6]);
      //hiet left upper
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX9 [11], roundY3[5], starSize[7], starSize[7]);
      //hiet right upper

      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX1 [8], roundY8[5], starSize[8], starSize[8]);
      //hiet middle highest
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      ellipse(roundX2 [5], roundY4[8], starSize[9], starSize[9]);
      //hiet left middle
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      ellipse(roundX4 [11], roundY2[8], starSize[10], starSize[10]);
      //hiet right middle
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      ellipse(roundX8 [8], roundY1[11], starSize[11], starSize[11]);
      //hiet middle lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //.....................
    void Hietup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      //-----------------------
      if (key=='g') {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [8], roundY8[5], roundX2 [5], roundY4[8]);
        //middle upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line( roundX2 [5], roundY4[8], roundX8 [8], roundY1[11]);
        //left middle to lower middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX1 [8], roundY8[5], roundX4 [11], roundY2[8]);
        //middle upper to right middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX4 [11], roundY2[8], roundX8 [8], roundY1[11]);
        //right middle to lower middle

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX6 [5], roundY6[5], roundX1 [8], roundY8[5]);
        //left upper to middle upper

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line (roundX1 [8], roundY8[5], roundX9 [11], roundY3[5]);
        //middle upper to right upper

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line  (roundX3 [8], roundY9[3], roundX1 [8], roundY8[5]);
        //middle highest to middle upper

        strokeWeight(0);
      }
      //-----------------------------------
      if (mouseButton==LEFT) {
        strokeWeight(1);
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        lineColor[0]+=3;
        line(roundX1 [8], roundY8[5], roundX2 [5], roundY4[8]);
        //middle upper to left middle

        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        line( roundX2 [5], roundY4[8], roundX8 [8], roundY1[11]);
        //left middle to lower middle

        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        line(roundX1 [8], roundY8[5], roundX4 [11], roundY2[8]);
        //middle upper to right middle

        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        line(roundX4 [11], roundY2[8], roundX8 [8], roundY1[11]);
        //right middle to lower middle

        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        line(roundX6 [5], roundY6[5], roundX1 [8], roundY8[5]);
        //left upper to middle upper

        stroke(255, 255, 255, lineColor[6]);
        lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
        line (roundX1 [8], roundY8[5], roundX9 [11], roundY3[5]);
        //middle upper to right upper

        stroke(255, 255, 255, lineColor[7]);
        lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
        line  (roundX3 [8], roundY9[3], roundX1 [8], roundY8[5]);
        //middle highest to middle upper

        strokeWeight(0);
      }
      popMatrix();
    }
  }

  class Moum {
    //field----------------------------------------------------------
    //---------------------------------------------------------------
    float angle, radius;
    float xwidth = 0.0;
    float yheight = 0.0;

    float opacity = 255;
    float [] starColor = new float [21] ;
    float starNoise = 0.0;
    float [] starSize = new float [21];
    float [] lineColor = new float [21];
    float [] lineDim = new float [21];

    //stars 1 --------------------------
    float [] roundX1 = new float [20];
    float [] roundY1 = new float [20];
    //stars 2 ----------------------------
    float [] roundX2 = new float [20];
    float [] roundY2 = new float [20];
    //stars 3 ----------------------------
    float [] roundX3 = new float [20];
    float [] roundY3 = new float [20];
    //stars 4 ----------------------------
    float [] roundX4 = new float [20];
    float [] roundY4 = new float [20];
    //stars 5 ----------------------------
    float [] roundX5 = new float [20];
    float [] roundY5 = new float [20];
    //stars 6 ----------------------------
    float [] roundX6 = new float [20];
    float [] roundY6 = new float [20];
    //stars 7 ----------------------------
    float [] roundX7 = new float [20];
    float [] roundY7 = new float [20];
    //stars 8 ----------------------------
    float [] roundX8 = new float [20];
    float [] roundY8 = new float [20];
    //stars 9 ----------------------------
    float [] roundX9 = new float [20];
    float [] roundY9 = new float [20];


    //constructor------------------------------------------------------
    //-----------------------------------------------------------------
    Moum () {  
      xwidth = width;
      yheight = height;
      //star size-----------------------------------------------------
      for (int i = 0; i<20; i++) {
        starColor[i] = 0.0;
      }

      //color------------------------------------------------------------
      for (int i = 0; i<20; i++) {
        constrain(lineColor[i], 0, 255);
      }

      for (int i =0; i<20; i++) {
        lineDim[i]=i*100;
      }

      //randomize-------------------------------------
      for (int i =0; i<18; i++) {
        angle = random(TWO_PI);
        radius = random(5);
        roundX1 [i] = 140+20*i+cos(angle)*radius;
        roundY1 [i] = 140+20*i+sin(angle)*radius;
        radius = random(10);
        roundX2 [i] = 140+20*i+cos(angle)*radius;
        roundY2 [i] = 140+20*i+sin(angle)*radius;
        radius = random(15);
        roundX3 [i] = 140+20*i+cos(angle)*radius;
        roundY3 [i] = 140+20*i+sin(angle)*radius;
        radius = random(20);
        roundX4 [i] = 140+20*i+cos(angle)*radius;
        roundY4 [i] = 140+20*i+sin(angle)*radius;
        radius = random(25);
        roundX5 [i] = 140+20*i+cos(angle)*radius;
        roundY5 [i] = 140+20*i+sin(angle)*radius;
        radius = random(30);
        roundX6 [i] = 140+20*i+cos(angle)*radius;
        roundY6 [i] = 140+20*i+sin(angle)*radius;
        radius = random(35);
        roundX7 [i] = 140+20*i+cos(angle)*radius;
        roundY7 [i] = 140+20*i+sin(angle)*radius;
        radius = random(40);
        roundX8 [i] = 140+20*i+cos(angle)*radius;
        roundY8 [i] = 140+20*i+sin(angle)*radius;
        radius = random(45);
        roundX9 [i] = 140+20*i+cos(angle)*radius;
        roundY9 [i] = 140+20*i+sin(angle)*radius;
      }
    }
    //void series ------------------------------------------------------
    //------------------------------------------------------------------
    //moum basic parts
    void Sero1dp1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      fill(starColor[1], opacity);

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }  //starsize num control
      ellipse(roundX1 [8], roundY1[5], starSize[1], starSize[1]);
      // upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [8], roundY2[8], starSize[2], starSize[2]);
      //middle
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*2)*255;
      ellipse(roundX3 [8], roundY3[12], starSize[3], starSize[3]);
      //lower
      fill(0, 0, 0, 0);
      popMatrix();
    }
    //.....................
    void  Sero1up1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      strokeWeight(1);
      stroke(255, 255, 255, lineColor[1]);
      lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
      lineColor[0]+=3;
      line(roundX1 [8], roundY1[5], roundX2 [8], roundY2[8]);
      // upper to middle

      stroke(255, 255, 255, lineColor[2]);
      lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
      line(roundX2 [8], roundY2[8], roundX3 [8], roundY3[12]);
      // middle to lower

      //

      popMatrix();
    }
    //----------------------------------------------------------------
    void Sero1dp2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      ellipse(roundX4 [8], roundY4[5], starSize[1], starSize[1]);
      // upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX5 [8], roundY5[8], starSize[2], starSize[2]);
      //middle
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*2)*255;
      ellipse(roundX6 [8], roundY6[12], starSize[3], starSize[3]);
      //lower

      popMatrix();
    }
    //.....................
    void  Sero1up2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      strokeWeight(1);
      stroke(255, 255, 255, lineColor[1]);
      lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
      lineColor[0]+=3;
      line(roundX4 [8], roundY4[5], roundX5 [8], roundY5[8]);
      // upper to middle

      stroke(255, 255, 255, lineColor[2]);
      lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
      line(roundX5 [8], roundY5[8], roundX6 [8], roundY6[12]);
      // middle to lower

      //

      popMatrix();
    }

    //---------------------------------------------------------------
    void Sero2dp1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      ellipse(roundX4 [8], roundY4[5], starSize[6], starSize[6]);
      // upper
      ellipse(roundX5 [8], roundY5[7], starSize[7], starSize[7]);
      //upper quarter
      ellipse(roundX6 [8], roundY6[10], starSize[8], starSize[8]);
      //lower quarter
      ellipse(roundX7 [8], roundY7[12], starSize[9], starSize[9]);
      //lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //.....................................
    void  Sero2up1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      strokeWeight(1);
      stroke(255, 255, 255, lineColor[1]);
      lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
      lineColor[0]+=3;
      line(roundX4 [8], roundY4[5], roundX5 [8], roundY5[7]);
      // upper to upper quarter
      stroke(255, 255, 255, lineColor[2]);
      lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
      line(roundX5 [8], roundY5[7], roundX6 [8], roundY6[10]);
      // upper quarter to lowerquarter
      stroke(255, 255, 255, lineColor[3]);
      lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
      line(roundX6 [8], roundY6[10], roundX7 [8], roundY7[12]);
      //lower quarter to lower
      stroke(0, 0, 0, 0);
      //
      popMatrix();
    }
    //---------------------------------------------------------------
    void Sero2dp2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      ellipse(roundX9 [8], roundY9[5], starSize[2], starSize[2]);
      // upper
      ellipse(roundX3 [8], roundY3[7], starSize[4], starSize[4]);
      //upper quarter
      ellipse(roundX2 [8], roundY2[10], starSize[6], starSize[6]);
      //lower quarter
      ellipse(roundX1 [8], roundY1[12], starSize[8], starSize[8]);
      //lower
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //.....................................
    void  Sero2up2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      strokeWeight(1);
      lineColor[1] = sin(lineColor[0]/lineDim[d])*500;
      lineColor[0]+=3;
      line(roundX9 [8], roundY9[5], roundX3 [8], roundY3[7]);
      // upper to upper quarter
      stroke(255, 255, 255, lineColor[2]);
      lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
      line(roundX3 [8], roundY3[7], roundX2 [8], roundY2[10]);
      // upper quarter to lowerquarter
      stroke(255, 255, 255, lineColor[3]);
      lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
      line(roundX2 [8], roundY2[10], roundX1 [8], roundY1[12]);
      //lower quarter to lower
      stroke(0, 0, 0, 0);
      //
      popMatrix();
    }


    //--------------------------------------------------------------------------
    void Garo1dp1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      ellipse(roundX8 [5], roundY8[8], starSize[3], starSize[3]);
      // left
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX9 [8], roundY9[8], starSize[6], starSize[6]);
      //middle
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX1 [11], roundY1[8], starSize[9], starSize[9]);
      //right
      popMatrix();
    }
    //.....................................
    void Garo1up1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      strokeWeight(1);
      lineColor[0]+=3;

      lineColor[1] = sin(lineColor[0]/lineDim[d])*500;
      line(roundX8 [5], roundY8[8], roundX9 [8], roundY9[8]);
      //left to middle
      stroke(255, 255, 255, lineColor[6]);
      lineColor[6] = sin(lineColor[0]/lineDim[d*6])*500;
      line(roundX9 [8], roundY9[8], roundX1 [11], roundY1[8]);
      //middle to right

      //
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //-------------------------------------------------
    void Garo2dp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      stroke(255, 255, 255, lineColor[1]);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX1 [5], roundY1[8], starSize[1], starSize[1]);
      // left
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX3 [7], roundY3[8], starSize[3], starSize[3]);
      // left quarter
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX5 [9], roundY5[8], starSize[5], starSize[5]);
      // right quarter
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX7 [11], roundY7[8], starSize[7], starSize[7]);
      //right 
      popMatrix();
    }
    //.....................................
    void Garo2up(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      strokeWeight(1);
      lineColor[1] = sin(lineColor[0]/lineDim[d])*500;
      lineColor[0]+=3;
      line(roundX1 [5], roundY1[8], roundX3 [7], roundY3[8]);
      //left to left quarter
      stroke(255, 255, 255, lineColor[3]);
      lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
      line(roundX3 [7], roundY3[8], roundX5 [9], roundY5[8]);
      //left quarter to right quarter
      stroke(255, 255, 255, lineColor[5]);
      lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
      line(roundX5 [9], roundY5[8], roundX7 [11], roundY7[8]);
      //right quarter toright

      //
      popMatrix();
    }
    //-------------------------------------------------
    void SeroGadp1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      stroke(255, 255, 255, lineColor[1]);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX6 [8], roundY6[5], starSize[4], starSize[4]);
      //upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX9 [8], roundY9[8], starSize[8], starSize[8]);
      //lower
      popMatrix();
    }
    //.....................................
    void SeroGaup1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      strokeWeight(1);
      lineColor[1] = sin(lineColor[0]/lineDim[d])*500;
      lineColor[0]+=3;
      line(roundX6 [8], roundY6[5], roundX9 [8], roundY9[8]);
      // upper to lower
      //
      popMatrix();
    }
    //-------------------------------------------------
    void SeroGadp2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      stroke(255, 255, 255, lineColor[1]);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX5 [8], roundY5[5], starSize[5], starSize[5]);
      //upper
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX8 [8], roundY8[8], starSize[7], starSize[7]);
      //lower
      popMatrix();
    }
    //.....................................
    void SeroGaup2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      strokeWeight(1);
      lineColor[1] = sin(lineColor[0]/lineDim[d])*500;
      lineColor[0]+=3;
      line(roundX5 [8], roundY5[5], roundX8 [8], roundY8[8]);
      // upper to lower
      //
      popMatrix();
    }


    //------------------------------------------------------
    void GaroGadp1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      stroke(255, 255, 255, lineColor[1]);

      starNoise+=0.0001;
      fill(starColor[1], opacity);
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }  //starsize num control
      ellipse(roundX2 [8], roundY2[8], starSize[2], starSize[2]);
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX5 [11], roundY7[8], starSize[6], starSize[6]);
      //right
      stroke(0, 0, 0, 0);
      popMatrix();
    }
    //.....................................
    void GaroGaup1(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      strokeWeight(1);
      stroke(255, 255, 255, lineColor[1]);
      lineColor[1] = sin(lineColor[0]/lineDim[d*4])*500;
      lineColor[0]+=3;
      line(roundX2 [8], roundY2[8], roundX5 [11], roundY7[8]);
      stroke(0, 0, 0, 0);
      popMatrix();
    }

    //------------------------------------------------------
    void GaroGadp2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      stroke(255, 255, 255, lineColor[1]);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      ellipse(roundX3 [8], roundY3[7], starSize[3], starSize[3]);
      //left upper quarter
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      ellipse(roundX2 [8], roundY2[10], starSize[4], starSize[4]);
      //left lower quarter
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      ellipse(roundX7 [11], roundY7[8], starSize[5], starSize[5]);
      //right upper quarter
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      ellipse(roundX6 [8], roundY6 [11], starSize[6], starSize[6]);
      //right lower quarter
      popMatrix();
    }
    //.....................................
    void GaroGaup2(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      strokeWeight(1);
      stroke(255, 255, 255, lineColor[7]);
      lineColor[7] = sin(lineColor[0]/lineDim[d*7])*500;
      line(roundX3 [8], roundY3[7], roundX7 [11], roundY7[8]);
      // left upper quarter to right upper quarter

      stroke(255, 255, 255, lineColor[9]);
      lineColor[9] = sin(lineColor[0]/lineDim[d*9])*500;
      line(roundX2 [8], roundY2[10], roundX6 [8], roundY6 [11]);
      // left lower quarter to right lower quarter

      //
      popMatrix();
    }


    //-------------------------------------------------------------------------------------------
    //void moum series----------------------------------------------------------------------------

    void Ahdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;

      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control
      Sero1dp1(0, 0, 1, d);
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      GaroGadp1 (0, 0, 1, d);
      stroke(0, 0, 0, 0);
      //
      popMatrix();
    }
    //............................................
    void Ahup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);

      if (key=='k') {
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        GaroGaup1 (0, 0, 1, d);
        stroke(0, 0, 0, 0);
        //
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[5]);
        lineColor[5] = sin(lineColor[0]/lineDim[d*5])*500;
        GaroGaup1 (0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      //
      popMatrix();
    }

    //-----------------------------------------------------

    void Yahdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      //starsize num control

      Sero2dp1(0, 0, 1, d);
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      GaroGadp1(0, 30, 1, d);
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      GaroGadp1(0, -20, 1, d);
      //
      popMatrix();
    }
    //..........................................
    void Yahup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='i') {
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        GaroGaup1(0, 30, 1, d);
        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        GaroGaup1(0, -20, 1, d);
        stroke(0, 0, 0, 0);
        //
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        GaroGaup1(0, 30, 1, d);
        stroke(255, 255, 255, lineColor[8]);
        lineColor[8] = sin(lineColor[0]/lineDim[d*8])*500;
        GaroGaup1(0, -20, 1, d);
        stroke(0, 0, 0, 0);
        //
      }
      popMatrix();
    }
    //-----------------------------------------------------
    void Aahdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero1dp1(0, 0, 1, d);
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      GaroGadp1(0, 0, 1, d);
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      Sero1dp2(60, 0, 1, d);
      //
      popMatrix();
    }
    //...........................................
    void Aahup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='o') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up2(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up2(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //kljioer
      }
      popMatrix();
    }
    //----------------------------------------------------
    void Yaahdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero2dp1(0, 0, 1, d);
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      GaroGadp1(0, 30, 1, d);
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      GaroGadp1(0, -20, 1, d);
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      Sero2dp2(70, 0, 1, d);

      popMatrix();
    }
    //...........................................
    void Yaahup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='O') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(0, 30, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(0, -20, 1, d);
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        Sero2up2(70, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(0, 30, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(0, -20, 1, d);
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        Sero2up2(70, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }

    //-----------------------------------------------------
    void Erhdp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero1dp1(0, 0, 1, d);
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      GaroGadp1(-60, 0, 1, d);

      popMatrix();
    }
    //.............................................
    void Erhup (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='j') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 0, 1, d);
        stroke(0, 0, 0, 0);
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //-----------------------------------------------------
    void Yerhdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero2dp1(0, 0, 1, d);
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      GaroGadp1(-60, 40, 1, d);

      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      GaroGadp1(-60, -30, 1, d);

      popMatrix();
    }
    //.....................................................
    void Yerhup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='u') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 40, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(-60, -30, 1, d);
        stroke(0, 0, 0, 0);
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 40, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(-60, -30, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //-----------------------------------------------------
    void Aerhdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero1dp1(0, 0, 1, d);
      fill(starColor[8], opacity);
      starColor[8] = noise(starNoise/100*8)*255;
      GaroGadp1(-60, 0, 1, d);
      //erh
      fill(starColor[9], opacity);
      starColor[9] = noise(starNoise/100*9)*255;
      Sero1dp1(60, 0, 1, d);
      //lee
      popMatrix();
    }
    //......................................
    void Aerhup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key =='p') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 0, 1, d);
        //erh
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up1(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //lee
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 0, 1, d);
        //erh
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        Sero1up1(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //lee
      }
      popMatrix();
    }
    //-----------------------------------------------------------
    void Yaerhdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero2dp1(0, 0, 1, d);
      fill(starColor[3], opacity);
      starColor[3] = noise(starNoise/100*3)*255;
      GaroGadp1(-60, 40, 1, d);
      fill(starColor[4], opacity);
      starColor[4] = noise(starNoise/100*4)*255;
      GaroGadp1(-60, -30, 1, d);
      //erh
      fill(starColor[5], opacity);
      starColor[5] = noise(starNoise/100*5)*255;
      Sero1dp1(60, 0, 1, d);
      //lee
      popMatrix();
    }
    //......................................
    void Yaerhup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key =='P') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 40, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(-60, -30, 1, d);  
        //yerh
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        Sero1up1(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //lee
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Sero2up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        GaroGaup1(-60, 40, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        GaroGaup1(-60, -30, 1, d);  
        //yerh
        stroke(255, 255, 255, lineColor[4]);
        lineColor[4] = sin(lineColor[0]/lineDim[d*4])*500;
        Sero1up1(60, 0, 1, d);
        stroke(0, 0, 0, 0);
        //lee
      }
      popMatrix();
    }
    //-----------------------------------------------------
    void Ohdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Garo1dp1(0, 0, 1, d);
      fill(starColor[6], opacity);
      starColor[6] = noise(starNoise/100*6)*255;
      SeroGadp1(0, 0, 1, d);
      popMatrix();
    }
    //........................................
    void Ohup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='h') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;

        SeroGaup1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;

        SeroGaup1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //-----------------------------------------------------

    void Yohdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Garo2dp(0, 0, 1, d);
      fill(starColor[7], opacity);
      starColor[7] = noise(starNoise/100*7)*255;
      SeroGadp1(-15, 0, 1, d);
      fill(starColor[8], opacity);
      starColor[8] = noise(starNoise/100*8)*255;
      SeroGadp1(15, 0, 1, d);
      popMatrix();
    }
    //....................................
    void Yohup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='y') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo2up(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(-15, 0, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        SeroGaup1(15, 0, 1, d);
        stroke(0, 0, 0, 0);
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo2up(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(-15, 0, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        SeroGaup1(15, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //-----------------------------------------------------
    void Oohdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Garo1dp1(0, 0, 1, d);

      fill(starColor[9], opacity);
      starColor[9] = noise(starNoise/100*9)*255;
      SeroGadp1(0, 60, 1, d);
      popMatrix();
    }
    //.................................
    void Oohup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='n') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Garo1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(0, 60, 1, d);
        stroke(0, 0, 0, 0);
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Garo1up1(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(0, 60, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //--------------------------------------------------------
    void Yoohdp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Garo2dp(0, 0, 1, d);
      fill(starColor[1], opacity);
      starColor[1] = noise(starNoise/100*1)*255;
      SeroGadp1(-15, 60, 1, d);
      fill(starColor[2], opacity);
      starColor[2] = noise(starNoise/100*2)*255;
      SeroGadp1(15, 60, 1, d);
      popMatrix();
    }

    //...............................
    void Yoohup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='b') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo2up(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(-15, 60, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        SeroGaup1(15, 60, 1, d);
        stroke(0, 0, 0, 0);
      }

      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;
        Garo2up(0, 0, 1, d);
        stroke(255, 255, 255, lineColor[2]);
        lineColor[2] = sin(lineColor[0]/lineDim[d*2])*500;
        SeroGaup1(-15, 60, 1, d);
        stroke(255, 255, 255, lineColor[3]);
        lineColor[3] = sin(lineColor[0]/lineDim[d*3])*500;
        SeroGaup1(15, 60, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //----------------------------------------------
    void Leedp (float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Sero1dp1(0, 0, 1, d);
      popMatrix();
    }

    //.........................................
    void Leeup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='l') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Sero1up1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Sero1up1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
    //--------------------------------------------
    void Eeedp(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      stroke(0, 0, 0, 0);
      fill(starColor[1], opacity);
      starNoise+=0.0001;
      starColor[1] = noise(starNoise/100)*255;
      for (int i = 0; i<20; i++) {
        starSize[i] = sin(starNoise/i)+1;
      }
      Garo1dp1(0, 0, 1, d);

      popMatrix();
    }
    //.....................................
    void Eeeup(float a, float b, float c, int d) {
      pushMatrix();
      translate(a, b);
      scale(c);
      if (key=='m') {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Garo1up1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      if (mouseButton==LEFT) {
        stroke(255, 255, 255, lineColor[1]);
        lineColor[1] = sin(lineColor[0]/lineDim[d*1])*500;

        Garo1up1(0, 0, 1, d);
        stroke(0, 0, 0, 0);
      }
      popMatrix();
    }
  }

  void sent1 (float a, float b, float c) {

    float [] offsetAs = new float [30];
    float [] offsetBs = new float [30];


    for (int i = 0; i<30; i++) { 
      offsetAs[i] = 27.0*i;
    }
    for (int i = 0; i<30; i++) { 
      offsetBs[i] = 27.0*i;
    }
    //-----------------------------
    pushMatrix();
    translate(a, b);
    scale(c);
    j1.Siotdp(-offsetAs[1], -offsetBs[2], 1, 0);
    m1.Erhdp(offsetAs[4], offsetBs[0], 1, 0);
    j1.Niendp(offsetAs[2], offsetBs[3], 1, 0);

    if (add == 1) {
      j1.Siotup(-offsetAs[1], -offsetBs[2], 1, 1);
      m1.Erhup(offsetAs[4], offsetBs[0], 1, 1);
      j1.Nienup(offsetAs[2], offsetBs[3], 1, 1);
    }
    //sun---------------------------

    j1.Hietdp(-offsetAs[8], -offsetBs[2], 1.4, 0);
    m1.Ahdp(offsetAs[2], offsetBs[0], 1, 0);
    j1.Miemdp(offsetAs[2], offsetBs[6], 1.2, 0);

    if (add==2) {
      j1.Hietup(-offsetAs[8], -offsetBs[2], 1.4, 1);
      m1.Ahup(offsetAs[2], offsetBs[0], 1, 1);
      j1.Miemup(offsetAs[2], offsetBs[6], 1.2, 1);
    }
    //ham-------------------------------

    j1.Yiengdp(offsetAs[5], -offsetBs[2], 1, 0);
    m1.Garo1dp1(offsetAs[4], offsetBs[3], 1, 0);
    j1.Niendp(offsetAs[6], offsetBs[8], 1, 0);

    if (add==3) {
      j1.Yiengup(offsetAs[5], -offsetBs[2], 1, 1);
      m1.Garo1up1(offsetAs[4], offsetBs[3], 1, 1);
      j1.Nienup(offsetAs[6], offsetBs[8], 1, 1);
    }
    //en-------------------------------------

    j1.Jietdp(-offsetAs[5], -offsetBs[1], 1, 0);
    m1.Ahdp(offsetAs[2], offsetBs[0], 1, 0);
    j1.Giyukdp(offsetAs[2], offsetBs[6], 1, 0);

    if (add==4) {
      j1.Jietup(-offsetAs[5], -offsetBs[1], 1, 1);
      m1.Ahup(offsetAs[2], offsetBs[0], 1, 1);
      j1.Giyukup(offsetAs[2], offsetBs[6], 1, 1);
    }
    //jack----------------------------------

    j1.Yiengdp(-offsetAs[5], offsetBs[2], 1, 0);
    m1.Garo1dp1(-offsetAs[4], offsetBs[6], 1, 0);
    j1.Rieldp(-offsetAs[3], offsetBs[9], 1, 0);

    if (add==5) {
      j1.Yiengup(-offsetAs[5], offsetBs[2], 1, 1);
      m1.Garo1up1(-offsetAs[4], offsetBs[6], 1, 1);
      j1.Rielup(-offsetAs[3], offsetBs[9], 1, 1);
    }
    //el-------------------------------------

    j1.Siotdp(offsetAs[0], offsetBs[0], 1, 0);
    m1.Oohdp(offsetAs[0], offsetBs[8], 1, 0);

    if (add==6) {
      j1.Siotup(offsetAs[0], offsetBs[0], 1, 1);
      m1.Oohup(offsetAs[0], offsetBs[8], 1, 1);
    }
    //su------------------------------

    j1.Rieldp(offsetAs[5], -offsetBs[1], 1, 0);
    m1.Ohdp(offsetAs[4], offsetBs[6], 1, 0);
    j1.Giyukdp(offsetAs[1], offsetBs[10], 1, 0);

    if (add==7) {
      j1.Rielup(offsetAs[5], -offsetBs[1], 1, 1);
      m1.Ohup(offsetAs[4], offsetBs[6], 1, 1);
      j1.Giyukup(offsetAs[1], offsetBs[10], 1, 1);
    }
    //rok----------------------------------------------

    j1.Yiengdp(-offsetAs[5], offsetBs[9], 1, 0);
    m1.Ahdp(-offsetAs[3], offsetBs[11], 1, 0);

    if (add==8) {
      j1.Yiengup(-offsetAs[5], offsetBs[9], 1, 1);
      m1.Ahup(-offsetAs[3], offsetBs[11], 1, 1);
    }
    //ah--------------------------------------------

    j1.Rieldp(offsetAs[8], -offsetBs[1], 1, 0);
    m1.Garo1dp1(offsetAs[6], offsetBs[3], 1, 0);
    j1.Miemdp(offsetAs[5], offsetBs[8], 1, 0);

    if (add==9) {
      j1.Rielup(offsetAs[8], -offsetBs[1], 1, 1);
      m1.Garo1up1(offsetAs[6], offsetBs[3], 1, 1);
      j1.Miemup(offsetAs[5], offsetBs[8], 1, 1);
    }
    //reum-----------------------------------------

    j1.Digutdp(-offsetAs[5], offsetBs[0], 1, 0);
    m1.Ahdp(offsetAs[6], offsetBs[0], 1, 0);
    j1.Biebdp(offsetAs[2], offsetBs[8], 1, 0);

    if (add==10) {
      j1.Digutup(-offsetAs[5], offsetBs[0], 1, 1);
      m1.Ahup(offsetAs[6], offsetBs[0], 1, 1);
      j1.Biebup(offsetAs[2], offsetBs[8], 1, 1);
    }
    //dap------------------------------------------

    j1.Digutdp(offsetAs[1], offsetBs[3], 1, 0);
    m1.Ahdp(offsetAs[8], offsetBs[5], 1, 0);

    if (add==11) {
      j1.Digutup(offsetAs[1], offsetBs[3], 1, 1);
      m1.Ahup(offsetAs[8], offsetBs[5], 1, 1);
    }

    //da-------------------------------------------
    if (add==12) {
      background(0);
      imageint(-97, 1907, 0.345);
    }


    popMatrix();
  }

  class Star {
    float xpos;
    float ypos;
    float starsize;
    color c;

    float circleSize = 10;
    float opacity = 0;
    float starColor;
    float starNoise;

    Star (float _x, float _y, float _z, int _c) {
      xpos = _x;
      ypos = _y;
      starsize = _z;
      c = _c;
    }  

    void display() {
      fill(c);
      strokeWeight(0);
      ellipse(xpos, ypos, starsize, starsize);
    }

    void update() {
      opacity = 255;
      starColor = noise(starNoise)*255;
      starNoise += 0.01;
      circleSize= sin(starNoise)+3;

      c=color(starColor);
    }

    void edge () {
      if (xpos > width) { 
        xpos=width/2;
      }
      if (ypos>height) {
        ypos = height/2;
      }
    }
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

