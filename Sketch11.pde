class Sketch11 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;
  /*---------------------------------------
   Lee Sungho (20101632)
   Class_TypeAndMedia.
   
   'ㅎㅐㅇ ㅅㅓㅇ'
   
   In Korean letter, it can be devided three steps. the first is most important and
   strong. use it, make a planet. And use second, make a mass of it. Make a Line.
   And use third, make a moon. So they are devided like a planet with moons.
   
   
   I write Korean 'ㅎㅐㅇ ㅅㅓㅇ' using my type. in usually I used FloatList. There are
   some interation about 'UP', 'DOWN', 'LEFT', RIGHT'. I want to use it like a toy.
   Split scene third step, make introPage-sceneZero / 'ㅎㅐㅇ'-sceneOne / 'ㅅㅓㅇ' -
   sceneTwo. You can see the next scene using spacebar.
   
   After read this, I want you to can read may letter 'ㅎㅐㅇ' 'ㅅㅓㅇ'.
   ---------------------------------------*/



  FloatList xs = new FloatList();
  FloatList ys = new FloatList();
  //for ieong

  FloatList xp = new FloatList();
  FloatList yp = new FloatList();
  //for planet

    FloatList xps = new FloatList();
  FloatList yps = new FloatList();
  //for planet

    FloatList xm2 = new FloatList();
  FloatList ym2 = new FloatList();
  //for heeotRound

  FloatList xh = new FloatList();
  FloatList yh = new FloatList();
  //for heeot

    FloatList xh2 = new FloatList();
  FloatList yh2 = new FloatList();
  //for heeotHat

    FloatList xe = new FloatList();
  FloatList ye = new FloatList();
  //for heeot

    FloatList xss = new FloatList();
  FloatList yss = new FloatList();
  //for heeot


    float x, y;
  float expandX, expandY;
  float angle = 0.0;
  float offsetx = width/2, offsety = height/2;
  float scalar = 75;
  float speed = 0.03;

  float radius = 50;


  float r, r2, sr, sr2, yrAll, rIeong;
  float rSpeed, SSpeed, SSpeed2;
  float x2, y2;
  float eWide;
  float eEncrease = 0.5;

  float xEllipse, yEllipse;

  int num = 100;
  int scene = 0;
  int sceneNum = 2;

  Heeot heeot;
  HeeotRound heeotRound;
  HeeotHat heeotHat;
  Heeot2 heeot2;
  Siot siot;
  Ieong ieong;
  Moon moon;
  Planet planet;
  PlanetS planetS;
  E e;
  U u;
  Orbit orbit;

  PImage fScene;
  //PShape fScene;

  void setup() {
    size(1024, 768, P3D);
    //background(0);
    smooth();
    frameRate(10);

    fScene = loadImage("firstSceneHTW.png");

    heeot = new Heeot();
    heeotRound = new HeeotRound();
    heeotHat = new HeeotHat();
    heeot2 = new Heeot2();
    siot = new Siot();
    ieong = new Ieong();
    moon = new Moon(0, 0, 200);
    planet = new Planet();
    planetS = new PlanetS();
    e = new E();
    u = new U();
    orbit = new Orbit();

    r = 0.0;
    sr = 0.0;
    sr2 = 0.0;
    rSpeed = 0.005;
    SSpeed = 0.001;
    SSpeed2 = -0.001;
    eWide = width/4;
  }

  void draw() {
    super.draw();
    r += rSpeed;
    sr += SSpeed;
    sr2 += SSpeed2;
    eWide = width/2;

    if (scene == 0) {
      frameCount = 0;
    }

    if (scene == 0) {
      sceneZero();
    } else if (scene == 1) {
      sceneOne();
    } else if (scene == 2) {
      sceneTwo();
    }
    masterUI();
  }

  void sceneZero() {
    image(fScene, 0, 0, 1024, 768);
  }



  //////////////////////////////////////////////////////////////////////////////////////////////SCENE ONE
  void sceneOne() {
    background(0);


    pushMatrix();
    translate(width/2, height/2);
    if (scene == 1) {
      rotate(sr);
    }
    //it rotate all objects. at last, it have to be on at last.
    //Heeot rotate Right.
    rotateX(yrAll);
    //yrAll rotate whole thing UP and DOWN like 3D
    translate(-width/2, -height/2);


    //////heeot body--//////
    pushMatrix();
    //scale(1.3);

    pushMatrix();
    //scale(1.5);
    translate(0, -height/2);

    expandX = offsetx + cos(angle) * scalar;
    expandY = offsety + sin(angle) * scalar;
    angle += speed;

    for (int ih = 0; ih < xh.size (); ih+= 1) {
      float ihx = xh.get(ih);
      float ihy = yh.get(ih);

      heeot.display(ihx, ihy);
      heeot.update();
      heeot.keyPressed();
    }

    if (scene == 1 && frameCount<600) {
      //this condition is very important! drawing at own scene.
      xh.append( width/2 );
      yh.append( width/2 );
    }

    popMatrix();


    pushMatrix();
    translate(width/2, height/2);
    rotate(r);
    scale(1.5);
    x = offsetx + cos(angle) * scalar*1;
    y = offsety + sin(angle) * scalar*1;
    angle += speed;

    for (int i = 0; i < xm2.size (); i+= 1) {
      float hrx = xm2.get(i);
      float hry = ym2.get(i);
      heeotRound.display(hrx, hry);
    }

    if (angle < PI*8) {
      xm2.append( x );
      ym2.append( y );
    }
    popMatrix();
    //it's rotating line(made up of mass ellipses) upon planet. it belons to planet
    popMatrix();
    /////--heeot body/////





    pushMatrix();
    translate(width/2, 50);
    scale(0.5);

    for (int i = 0; i < xh2.size (); i+= 1) {
      float ih2x = xh2.get(i);
      float ih2y = yh2.get(i);
      heeotHat.display(ih2x, ih2y);
      heeotHat.update();
      heeotHat.keyPressed();
    }
    if (scene == 1 && frameCount<600) {
      xh2.append(height/2);
      yh2.append(height/2);
    }
    popMatrix();
    r2++;
    //it's HeeotHat. heeot's upper line. 'ㅡ'




    pushMatrix();
    translate(width/2, height/2);
    scale(0.5);
    rotate(rIeong);
    rIeong += rSpeed;
    if (rIeong >= HALF_PI) {
      rSpeed = -0.005;
    } else if (rIeong <= 0) {
      rSpeed = +0.005;
    }
    pushMatrix();
    //scale(0.5);
    translate(height/2, height/2);
    this.x = offsetx + cos(angle) * scalar*1.5;
    this.y = offsety + sin(angle) * scalar*1.5;
    this.angle += speed;
    this.scalar -= 0.1;
    //fill(255, 20);
    //speed = 0;
    //it needs limit, too!
    for (int i = 0; i < xs.size (); i+= 1) {
      float ix = xs.get(i);
      float iy = ys.get(i);
      ieong.display(ix, iy);
      ieong.update();
    }
    if (angle <= PI*15 ) {
      xs.append( x );
      ys.append( y );
    }
    //this if limit rotate of ieong's stroke. mass of ellipse.
    //PI*10 = 5 rotate. 1 PI is half rotate.
    popMatrix();
    popMatrix();
    //it's bachim 'o'. Main moon.




    pushMatrix();
    translate(width/2, height/2);
    scale(2);
    x = offsetx + cos(angle) * scalar;
    y = offsety + sin(angle) * scalar;
    angle += speed;

    for (int i = 0; i < xp.size (); i+= 1) {
      float ix = xp.get(i);
      float iy = yp.get(i);
      planet.display(ix, iy);
      planet.update();
    }
    //if (angle <= TWO_PI) {
    if (scene == 1 && frameCount<600) {
      xp.append( x );
      yp.append( y );
      xp.append(0);
      yp.append(0);
    }
    //i think, i can make many append about one floatList.
    //it can make milit of infinite ellipse.
    popMatrix();




    pushMatrix();
    translate(width/2, -130);
    //scale(2);
    for (int ie = 0; ie < xe.size (); ie+= 1) {
      float iex = xe.get(ie);
      float iey = ye.get(ie);
      e.display(iex, iey);
      e.update();
      e.keyPressed();
    }
    if (scene == 1 && frameCount<600) {
      //xe.append(width/2);
      xe.append(eWide);
      ye.append(eWide);
    }
    popMatrix();

    r2 += 0.05;

    popMatrix();
  }



  //////////////////////////////////////////////////////////////////////////////////////////////SCENE TWO
  void sceneTwo() {
    background(0);
    pushMatrix();
    translate(width/2, height/2);
    rotate(sr2);
    if (scene == 2) {
      SSpeed2 = -0.001;
    } else if (scene == 0 || scene == 1) {
      SSpeed2 = 0;
    }
    //it rotate all objects. at last, it have to be on at last.
    //Siot rotate left. Opposite with Heeot.
    rotateX(yrAll);
    //yrAll rotate whole thing UP and DOWN like 3D
    translate(-width/2, -height/2);


    //////Siot body--//////
    pushMatrix();
    translate(width/2, 0);
    scale(0.5);

    for (int i = 0; i < xss.size (); i+= 1) {
      float issx = xss.get(i);
      float issy = yss.get(i);
      siot.display(issx, issy);
      siot.update();
      siot.keyPressed();
    }
    if (scene == 2 && frameCount<1000) {
      xss.append(width/3);
      yss.append(height+height/4);
      //xss.append(width/4); 
      //yss.append(height);
    } 
    popMatrix();
    r2++;
    //it's Siot. Siot's body. outLine Stroke.

    /////--Siot body/////



    pushMatrix();
    translate(width/2, height/2);
    //scale(0.5);
    rotate(rIeong);
    rIeong += rSpeed;
    if (rIeong >= HALF_PI) {
      rSpeed = -0.005;
    } else if (rIeong <= 0) {
      rSpeed = +0.005;
    }
    //how silve it? to refine the move of moon(ieong)
    pushMatrix();
    scale(0.5);
    translate(height/2, height/2);
    this.x = offsetx + cos(angle) * scalar*1.5;
    this.y = offsety + sin(angle) * scalar*1.5;
    this.angle += speed;
    this.scalar -= 0.1;
    //speed = 0;
    //it needs limit, too!
    for (int i = 0; i < xs.size (); i+= 1) {
      float ix = xs.get(i);
      float iy = ys.get(i);
      ieong.display(ix, iy);
      ieong.update();
    }
    if (angle <= PI*15 ) {
      xs.append( x );
      ys.append( y );
    }
    //this if limit rotate of ieong's stroke. mass of ellipse.
    //PI*10 = 5 rotate. 1 PI is half rotate.
    popMatrix();
    popMatrix();
    //it's bachim 'o'. Main moon.


    pushMatrix();
    //moon.display();
    //moon.update();
    popMatrix();
    //it's a little spot, have to do!
    //later, have to solve this problem!



    pushMatrix();
    translate(width/2, height/2);
    scale(2);
    rotateX(sr2*10);
    x = offsetx + cos(angle) * scalar;
    y = offsety + sin(angle) * scalar;
    angle += speed;

    for (int i = 0; i < xps.size (); i+= 1) {
      float ix = xps.get(i);
      float iy = yps.get(i);
      //planetS.display(ix, iy);
      planetS.display(ix, iy);
      planetS.update();
    }
    if (scene == 2 && frameCount<1000) {
      xps.append( x );
      yps.append( y );
      xps.append(0);
      yps.append(0);
    }
    //it can make limit of infinite ellipse.
    popMatrix();


    pushMatrix();
    translate(width/2, -130);
    //scale(2);
    for (int ie = 0; ie < xe.size (); ie+= 1) {
      float iex = xe.get(ie);
      float iey = ye.get(ie);
      u.display(iex, iey);
      u.update();
      u.keyPressed();
    }
    if (scene == 2 && frameCount<1000) {
      xe.append(eWide);
      ye.append(eWide);
    }
    popMatrix();

    r2 += 0.05;

    popMatrix();
  }




  void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP) {
        yrAll += 0.01;
      } else if (keyCode == DOWN) {
        yrAll -= 0.01;
      } else if (keyCode == LEFT) {
        eWide += eEncrease;
      }
    }

    if (key == ' ') {
      //' 'is spacebar.
      scene ++; 
      if (scene > sceneNum) {
        scene = sceneNum - 2;
        //it makes 3spacebar go first scene.
      }
    }
  }

  //E is hangeul 'ㅐ'


  class E {

    float rotZ;
    float er, erSpeed;


    E() {
      er = 0.0;
      erSpeed = 0.005;
    }

    void display(float xep, float yep) {
      stroke(255, 50);
      noFill();
      line(xep, yep, xep, xep+30);
      line(xep, yep+10, xep+10, yep+10);
      line( xep+10, yep, xep+10, yep+30);
    }

    void update() {
      er += erSpeed; 
      rotZ = 0.0001*PI*er;

      rotateY(radians(45));
      rotateY(rotZ);
      if (er >= PI) {
        erSpeed = 0.005;
      }
    }

    void keyPressed() {
      if (key == CODED) {
        if (keyCode == LEFT) {
          erSpeed = 0;
        } else if (keyCode == RIGHT) {
          erSpeed = 0.005;
        }
      }
    }
  }

  //it's heeot's upper point.

  class Heeot {


    float x1, y1, targetX, targetY;
    float x2, y2;
    float angle = 0.0;
    float offset1 = width/2;
    float offset2 = width/2;
    float scalar = 40;
    //length of line
    float speed = 0.5;


    Heeot() {
    }

    void display(float xHeeot, float yHeeot) {
      stroke(255, 30);
      line(xHeeot, yHeeot, x1, y1);
    }

    void update() {
      x1 = offset1 + cos(angle) * scalar;
      y1 = offset1 + sin(angle) * scalar;
      angle += speed;
    }

    void limit() {
      if (angle >= PI) {
        speed = -0.5;
      } else if (angle <= 0) {
        speed = +0.5;
      }
    }
    //limit is so important for sustain this sketch. to don't go infinity.

    void keyPressed() {
      if (key == CODED) {
        if (keyCode == LEFT) {
          speed = 0;
        } else if (keyCode == RIGHT) {
          speed = 0.5;
        }
      }
    }
  }


  class Heeot2 {

    float x, y;
    float angle = 0.0;
    float offset = width/2;
    float scalar = 100;
    float speed = 0.03;

    Heeot2() {
    }

    void display(float xHeeot2, float yHeeot2) {
      stroke(255, 50);
      line(xHeeot2, yHeeot2, x, y);
    }

    void update() {
      x = offset + cos(angle) * scalar;
      y = offset + sin(angle) * scalar;
      angle += speed;
    }
  }
  class HeeotHat {

    float rotY;
    float hhr, hhrSpeed;


    HeeotHat() {
      hhr = 0.0;
      hhrSpeed = 0.005;
    }

    void display(float xHeeotHat, float yHeeotHat) {
      fill(255, 50);
      //noStroke();
      ellipse(xHeeotHat, yHeeotHat, 40, 40);
      line(xHeeotHat, yHeeotHat, 0, height/2);
    }

    void update() {
      hhr += hhrSpeed;
      rotY = 0.0001*PI*hhr;
      rotateY(radians(45));
      rotateY(rotY);
    }
    void keyPressed() {
      if (key == CODED) {
        if (keyCode == LEFT) {
          hhrSpeed = 0;
        } else if (keyCode == RIGHT) {
          hhrSpeed = 0.005;
        }
      }
    }
  }
  //Aa is a ring upon heeot's 'o'part. it makes letter more recognizable.

  class HeeotRound {


    HeeotRound() {
    }

    void display(float HRx, float HRy) {
      //noStroke();
      fill(255, 10);
      ellipse(HRx, HRy, 20, 20);
      line(HRx, HRy, 0, 0);
    }
  }
  class Orbit {
    int locx, locy;
    float radius, i=0.0, v, r;

    Orbit() {
      radius = 100;
      locy = width/2;
      locx = height/2;
      v = 0.5;
      r = 30;
    }

    void display() {
      float x = locx+radius*sin(radians(i));
      float y = locy+radius*cos(radians(i));
      noStroke();
      ellipse(x, y, r, r);
    }

    void update() {
      i=i+v;
      if (i>360)i=0;
    }
  }

  class Planet {



    Planet() {
    }

    void display(float xPlanet, float yPlanet) {
      fill(255, 10);
      noStroke();
      ellipse(xPlanet, yPlanet, 60, 60);
    }

    void update() {
      rotateY(0.005*PI*r2);
      rotateX(0.001*PI*r2);
      rotateZ(0.001*PI*r2);
    }
  }
  class PlanetS {



    PlanetS() {
    }


    void display(float xPlanet, float yPlanet) {
      fill(255, 10);
      stroke(255, 10);
      line(xPlanet, yPlanet, 0, 0);

      //arc(xPlanet, yPlanet, 60, 60, 0, HALF_PI);
    }

    void update() {
      rotateY(0.005*PI*r2);
      rotateX(0.001*PI*r2);
      rotateZ(0.001*PI*r2);
    }
  }
  //U is hangeul 'ㅓ'


  class U {

    float rotZ;
    float er, erSpeed;


    U() {
      er = 0.0;
      erSpeed = 0.005;
    }

    void display(float xep, float yep) {
      stroke(255, 50);
      noFill();
      line(xep, yep+10, xep+10, yep+10);
      line( xep+10, yep, xep+10, yep+30);
    }

    void update() {
      er += erSpeed; 
      rotZ = 0.0001*PI*er;

      rotateY(radians(45));
      rotateY(rotZ);
      if (er >= PI) {
        erSpeed = 0.005;
      }
    }

    void keyPressed() {
      if (key == CODED) {
        if (keyCode == LEFT) {
          erSpeed = 0;
        } else if (keyCode == RIGHT) {
          erSpeed = 0.005;
        }
      }
    }
  }
  /*----------------------------------------------------
   it's bachim ieong.
   rotate like a moon. the biggest planet. rotate around main planet 'ㅎ'.
   instead, it rotate just under 'ㅐ' . Cause it's bachim of this letter.
   -----------------------------------------------------*/


  class Ieong {

    float eScale = 20;
    float eOpacity, eOpDecrease;


    Ieong() {
      eOpacity = 20;
    }

    void display(float xIeong, float yIeong) {
      eOpDecrease = 0.01;
      eOpacity -= eOpDecrease;

      pushMatrix();
      fill(255, 20);
      //fill(#FAF8D1, 20);
      stroke(255, 20);
      line(xIeong, yIeong, 0, 0);
      ellipse(xIeong, yIeong, eScale, eScale);
      popMatrix();
    }

    void update() {  
      eScale = sin(frameCount/10.0) * 50;
    }
  }
  class Moon {

    int locx, locy;
    float radius, i=0.0, v, r, mr, mrSpeed;
    color c;
    Moon(int locx, int locy, float radius) {
      this.radius = radius;
      this.locy = locy;
      this.locx = locx;
      c = (color) random(#000000);
      v = random(0.5, 2);
      r = 10;
      mr = 0.0;
      mrSpeed = 0.03;
    }

    void display() {
      float x = locx+radius*sin(radians(i));
      float y = locy+radius*cos(radians(i));
      mr += mrSpeed;
      pushMatrix();
      stroke(255);
      line(x, y, x+10, y);
      popMatrix();
    }

    void update() {
      i=i+v;
      if (i>360)i=0;
    }
  }
  class Siot {

    float rotY;
    float hhr, hhrSpeed;


    Siot() {
      hhr = 0.0;
      hhrSpeed = 0.005;
    }

    void display(float xHeeotHat, float yHeeotHat) {
      fill(255, 20);
      arc(xHeeotHat, yHeeotHat, 40, 40, PI+HALF_PI, TWO_PI);
      line(xHeeotHat, yHeeotHat, 0, height/4); 
      line(xHeeotHat, yHeeotHat, 0, height/2); 
      line(xHeeotHat, yHeeotHat, 0, height - height/4);
      line(xHeeotHat, yHeeotHat, 0, height);
    }

    void update() {
      hhr += hhrSpeed;
      rotY = 0.0001*PI*hhr;
      rotateY(radians(45));
      rotateY(rotY);
    }
    void keyPressed() {
      if (key == CODED) {
        if (keyCode == LEFT) {
          hhrSpeed = 0;
        } else if (keyCode == RIGHT) {
          hhrSpeed = 0.005;
        }
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
    stroke(0, 255);
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

