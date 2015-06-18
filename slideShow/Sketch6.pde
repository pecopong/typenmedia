class Sketch6 extends EmbeddedSketch {
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

  PShape inst;

  float x= 60;//margin
  float y= 80;

  boolean A = true;
  boolean B = true;
  boolean C = true;
  boolean D = true;
  boolean E = true;
  boolean F = true;
  boolean G = true;
  boolean H = true;
  boolean I = true;
  boolean J = true;
  boolean K = true;
  boolean L = true;
  boolean M = true;
  boolean N = true;
  boolean O = true;
  boolean P = true;
  boolean Q = true;
  boolean R = true;
  boolean S = true;
  boolean T = true;
  boolean U = true;
  boolean V = true;
  boolean W = true;
  boolean X = true;
  boolean Y = true;
  boolean Z = true;


  void setup() {

    //size(120, 160, P3D);
    size(1024, 768, P3D);
    Ani.init(this);

    inst = loadShape("inst.svg");
  }

  void draw() {
    super.draw();
    pushMatrix();
    background(0);
    stroke(255); 

    shape(inst, 520, 240);

    //rect(500,240,420,250);

    strokeWeight(4);
    strokeCap(PROJECT);

    pushMatrix();

    scale(0.65);
    translate(60, 50);

    if (A) {
      pushMatrix();
      scale(0.8);
      translate(50+x, 15+y);
      aMieum();
      popMatrix();
    }
    if (B) {
      pushMatrix();
      scale(0.8);
      translate(180+2*x, 10+y);
      bUoo();
      popMatrix();
    }
    if (C) {
      pushMatrix();
      scale(0.78);
      translate(85+3*x, -175+y);
      cChieut();
      popMatrix();
    }  

    if (D) {
      pushMatrix();
      scale(0.8);
      translate( 450+4*x, 15+y); 
      dEueng();
      popMatrix();
    }

    if (E) {
      pushMatrix();
      scale(0.8);
      translate(590+5*x, 25+y);
      eDigeut();
      popMatrix();
    } 

    if (F) {
      pushMatrix();
      scale(0.77);
      translate(530+6*x, -170+y);
      fRieul();
      popMatrix();
    } 
    if (G) {
      pushMatrix();
      scale(0.8);
      translate(840+7*x, 17+y);
      gHieut();
      popMatrix();
    } 
    if (H) {
      pushMatrix();
      scale(0.8);
      translate(950+8*x, 17+y);
      hOh();
      popMatrix();
    }   
    if (I) {
      pushMatrix();
      scale(0.8);
      translate(1120+8*x, 25+y);
      iYah();
      popMatrix();
    } 

    popMatrix();


    pushMatrix();

    scale(0.65);
    translate(60, 50+250);

    if (J) {
      pushMatrix();
      scale(0.8);
      translate(50+x, 10+y);
      jUh();
      popMatrix();
    }
    if (K) {
      pushMatrix();
      scale(0.8);
      translate(200+50+x, 10+y);
      kAh();
      popMatrix();
    }
    if (L) {
      pushMatrix();
      scale(0.8);
      translate(400+50+x, 10+y);
      lEe();
      popMatrix();
    }
    if (M) {
      pushMatrix();
      scale(0.8);
      translate(580+50+x, 10+y);
      mEuh();
      popMatrix();
    }


    popMatrix();

    pushMatrix();
    scale(0.65);
    translate(60, 50+250+250); 
    if (N) {
      pushMatrix();
      scale(0.8);
      translate(40+x, 10+y);
      nWoo();
      popMatrix();
    }
    if (O) {
      pushMatrix();
      scale(0.8);
      translate(240+x, 10+y);
      oEh();
      popMatrix();
    }
    if (P) {
      pushMatrix();
      scale(0.8);
      translate(440+x, 10+y);
      pEh();
      popMatrix();
    }
    if (Q) {
      pushMatrix();
      scale(0.77);
      translate(415+x, 10+y-185);
      qbieub();
      popMatrix();
    }

    popMatrix();

    pushMatrix();
    scale(0.65);
    translate(60, 50+250+250+250); 

    if (R) {
      pushMatrix();
      scale(0.77);
      translate(x-200, 10+y-185);
      rGieuk();
      popMatrix();
    }
    if (S) {
      pushMatrix();
      scale(0.8);
      translate(x+250, 10+y);
      sNieun();
      popMatrix();
    }
    if (T) {
      pushMatrix();
      scale(0.8);
      translate(x+440, 10+y);
      tSiot();
      popMatrix();
    }
    if (U) {
      pushMatrix();
      scale(0.87);
      translate(x+550, y);
      uYeo();
      popMatrix();
    }
    if (V) {
      pushMatrix();
      scale(0.85);
      translate(x+760, y);
      vPieup();
      popMatrix();
    }
    if (W) {
      pushMatrix();
      scale(0.85);
      translate(435+x+500, 10+y);
      wJieut();
      popMatrix();
    }  
    if (X) {
      pushMatrix();
      scale(0.83);
      translate(410+x+500, 10+y-195);
      xTieut();
      popMatrix();
    } 
    if (Y) {
      pushMatrix();
      scale(0.85);
      translate(x+1280, y+10);
      yYo();
      popMatrix();
    } 
    if (Z) {
      pushMatrix();
      scale(0.85);
      translate(x+1430, y+10);
      zKieuk();
      popMatrix();
    } 
    popMatrix();
    popMatrix();
    pageShift(6, 8);
  }

  void keyPressed() {

    if (key == 'a') {

      A=true;
      aniA= Ani.to(this, 1, "r_a", 2*-PI, Ani.SINE_OUT);
      aniA.setBegin(0);
      aniA.setPlayMode(Ani.YOYO);
      aniA.repeat();

      aniA_1= Ani.to(this, 1, "a", 90, Ani.SINE_OUT);
      aniA_1.setBegin(0);
      aniA_1.setPlayMode(Ani.YOYO);
      aniA_1.repeat();
    } else if (key == 'b') {

      B=true;
      aniB= Ani.to(this, 1, "r_b", PI, Ani.SINE_OUT);
      aniB.setBegin(0);
      aniB.setPlayMode(Ani.YOYO);
      aniB.repeat();

      aniB_1= Ani.to(this, 1, "b", 100, Ani.SINE_OUT);
      aniB_1.setBegin(0);
      aniB_1.setPlayMode(Ani.YOYO);
      aniB_1.repeat();
    } else if (key == 'c') {

      C=true;
      aniC= Ani.to(this, 1, "r_c", 4*-PI, Ani.SINE_OUT);
      aniC.setBegin(0);
      aniC.setPlayMode(Ani.YOYO);
      aniC.repeat();

      aniC_1= Ani.to(this, 1, "c", 114, Ani.SINE_OUT);
      aniC_1.setBegin(0);
      aniC_1.setPlayMode(Ani.YOYO);
      aniC_1.repeat();
    } else if (key == 'd') {

      D=true;
      aniD= Ani.to(this, 1, "r_d", 2*PI, Ani.SINE_OUT);
      aniD.setBegin(0);
      aniD.setPlayMode(Ani.YOYO);
      aniD.repeat();

      aniD_1= Ani.to(this, 1, "d", 10, Ani.SINE_OUT);
      aniD_1.setBegin(0);
      aniD_1.setPlayMode(Ani.YOYO);
      aniD_1.repeat();
    } else if (key=='e') {

      E=true;
      aniE = Ani.to(this, 1, "r_e", 2*PI, Ani.SINE_OUT);
      aniE.setBegin(0);
      aniE.setPlayMode(Ani.YOYO);
      aniE.repeat();

      aniE_1 = Ani.to(this, 1, "e", 110); 
      aniE_1.setBegin(0);
      aniE_1.setPlayMode(Ani.YOYO);
      aniE_1.repeat();
    } else if (key=='f') {

      F=true;
      aniF = Ani.to(this, 1, "r_f", 2*-PI, Ani.SINE_OUT);
      aniF.setBegin(0);
      aniF.setPlayMode(Ani.YOYO);
      aniF.repeat();

      aniF_1 = Ani.to(this, 1.5, "f", 114); 
      aniF_1.setBegin(0);
      aniF_1.setPlayMode(Ani.YOYO);
      aniF_1.repeat();
    } else if (key=='g') {

      G=true;
      aniG = Ani.to(this, 1, "r_g", 2*PI, Ani.SINE_OUT);
      aniG.setBegin(0);
      aniG.setPlayMode(Ani.YOYO);
      aniG.repeat();

      aniG_1 = Ani.to(this, 1, "g", 100, Ani.SINE_OUT); 
      aniG_1.setBegin(0);
      aniG_1.setPlayMode(Ani.YOYO);
      aniG_1.repeat();
    } else if (key=='h') {

      H=true;
      aniH = Ani.to(this, 1, "r_h", PI, Ani.SINE_OUT);
      aniH.setBegin(0);
      aniH.setPlayMode(Ani.YOYO);
      aniH.repeat();

      aniH_1 = Ani.to(this, 1, "h", 100, Ani.SINE_OUT); 
      aniH_1.setBegin(0);
      aniH_1.setPlayMode(Ani.YOYO);
      aniH_1.repeat();
    } else if (key=='i') {

      I=true;
      aniI = Ani.to(this, 0.8, "r_i", 2*PI, Ani.SINE_OUT);
      aniI.setBegin(0);
      aniI.setPlayMode(Ani.YOYO);
      aniI.repeat();

      aniI_1 = Ani.to(this, 0.8, "i", 100, Ani.SINE_OUT); 
      aniI_1.setBegin(0);
      aniI_1.setPlayMode(Ani.YOYO);
      aniI_1.repeat();
    } else if (key=='j') {

      J=true;
      aniJ = Ani.to(this, 1, "r_j", 2*PI, Ani.SINE_OUT);
      aniJ.setBegin(0);
      aniJ.setPlayMode(Ani.YOYO);
      aniJ.repeat();

      aniJ_1 = Ani.to(this, 1, "j", 100, Ani.SINE_OUT); 
      aniJ_1.setBegin(0);
      aniJ_1.setPlayMode(Ani.YOYO);
      aniJ_1.repeat();
    } else if (key=='k') {

      K = true;
      aniK = Ani.to(this, 1, "r_k", 2*PI, Ani.SINE_OUT);

      aniK.setBegin(0);
      aniK.setPlayMode(Ani.YOYO);
      aniK.repeat();

      aniK_1 = Ani.to(this, 1, "k", -80); 
      aniK_1.setBegin(0);
      aniK_1.setPlayMode(Ani.YOYO);
      aniK_1.repeat();

      aniK_2 = Ani.to(this, 1, "k_1", 46); 
      aniK_2.setBegin(0);
      aniK_2.setPlayMode(Ani.YOYO);
      aniK_2.repeat();

      aniK_3 = Ani.to(this, 1, "k_2", 100); 
      aniK_3.setBegin(0);
      aniK_3.setPlayMode(Ani.YOYO);
      aniK_3.repeat();

      aniK_4 = Ani.to(this, 1, "k_3", 90); 
      aniK_4.setBegin(0);
      aniK_4.setPlayMode(Ani.YOYO);
      aniK_4.repeat();
    } else if (key=='l') {

      L=true;
      aniL = Ani.to(this, 1, "r_l", 2*PI, Ani.SINE_OUT);
      aniL.setBegin(0);
      aniL.setPlayMode(Ani.YOYO);
      aniL.repeat();

      aniL_1 = Ani.to(this, 1, "l", 100, Ani.SINE_OUT); 
      aniL_1.setBegin(0);
      aniL_1.setPlayMode(Ani.YOYO);
      aniL_1.repeat();
    } else if (key=='m') {

      M=true;
      aniM = Ani.to(this, 1, "r_m", 2*PI, Ani.SINE_OUT);
      aniM.setBegin(0);
      aniM.setPlayMode(Ani.YOYO);
      aniM.repeat();

      aniM_1 = Ani.to(this, 1, "m", 100, Ani.SINE_OUT); 
      aniM_1.setBegin(0);
      aniM_1.setPlayMode(Ani.YOYO);
      aniM_1.repeat();
    } else if (key=='n') {

      N=true;
      aniN = Ani.to(this, 1, "r_n", 1.5*PI, Ani.SINE_OUT);
      aniN.setBegin(0);
      aniN.setPlayMode(Ani.YOYO);
      aniN.repeat();

      aniN_1 = Ani.to(this, 1, "n", 100, Ani.SINE_OUT); 
      aniN_1.setBegin(0);
      aniN_1.setPlayMode(Ani.YOYO);
      aniN_1.repeat();
    } else if (key=='o') {

      O=true;
      aniO = Ani.to(this, 1, "r_o", 2*-PI, Ani.SINE_OUT);
      aniO.setBegin(0);
      aniO.setPlayMode(Ani.YOYO);
      aniO.repeat();

      aniO_1 = Ani.to(this, 1, "o", 100, Ani.SINE_OUT); 
      aniO_1.setBegin(0);
      aniO_1.setPlayMode(Ani.YOYO);
      aniO_1.repeat();
    } else if (key=='p') {

      P=true;
      aniP = Ani.to(this, 1, "r_p", 2*PI, Ani.SINE_OUT);
      aniP.setBegin(0);
      aniP.setPlayMode(Ani.YOYO);
      aniP.repeat();

      aniP_1 = Ani.to(this, 1, "p", 100, Ani.SINE_OUT); 
      aniP_1.setBegin(0);
      aniP_1.setPlayMode(Ani.YOYO);
      aniP_1.repeat();
    } else if (key=='q') {

      Q =true;
      aniQ = Ani.to(this, 1, "r_q", 2*-PI, Ani.SINE_OUT);
      aniQ.setBegin(0);
      aniQ.setPlayMode(Ani.YOYO);
      aniQ.repeat();

      aniQ_1 = Ani.to(this, 1, "q", -73, Ani.SINE_OUT); 
      aniQ_1.setBegin(0);
      aniQ_1.setPlayMode(Ani.YOYO);
      aniQ_1.repeat();
    } else if (key=='r') {

      R =true;
      aniR = Ani.to(this, 1, "r_r", 2*PI, Ani.SINE_OUT);
      aniR.setBegin(0);
      aniR.setPlayMode(Ani.YOYO);
      aniR.repeat();

      aniR_1 = Ani.to(this, 1, "r", 114, Ani.SINE_OUT); 
      aniR_1.setBegin(0);
      aniR_1.setPlayMode(Ani.YOYO);
      aniR_1.repeat();
    } else if (key=='s') {

      S=true;
      aniS = Ani.to(this, 1, "r_s", 3*-PI, Ani.SINE_OUT);
      aniS.setBegin(0);
      aniS.setPlayMode(Ani.YOYO);
      aniS.repeat();

      aniS_1 = Ani.to(this, 1, "s", 100, Ani.SINE_OUT); 
      aniS_1.setBegin(0);
      aniS_1.setPlayMode(Ani.YOYO);
      aniS_1.repeat();
    } else if (key=='t') {

      T=true;
      aniT = Ani.to(this, 1, "r_t", 3*-PI, Ani.SINE_OUT);
      aniT.setBegin(0);
      aniT.setPlayMode(Ani.YOYO);
      aniT.repeat();

      aniT_1 = Ani.to(this, 1, "t", 100, Ani.SINE_OUT); 
      aniT_1.setBegin(0);
      aniT_1.setPlayMode(Ani.YOYO);
      aniT_1.repeat();
    } else if (key=='u') {

      U=true;
      aniU = Ani.to(this, 1, "r_u", 3*PI, Ani.SINE_OUT);
      aniU.setBegin(0);
      aniU.setPlayMode(Ani.YOYO);
      aniU.repeat();

      aniU_1 = Ani.to(this, 1, "u", 100, Ani.SINE_OUT); 
      aniU_1.setBegin(0);
      aniU_1.setPlayMode(Ani.YOYO);
      aniU_1.repeat();
    } else if (key=='v') {

      V=true;
      aniV = Ani.to(this, 1, "r_v", 2*PI, Ani.SINE_OUT);
      aniV.setBegin(0);
      aniV.setPlayMode(Ani.YOYO);
      aniV.repeat();

      aniV_1 = Ani.to(this, 1, "v", 100, Ani.SINE_OUT); 
      aniV_1.setBegin(0);
      aniV_1.setPlayMode(Ani.YOYO);
      aniV_1.repeat();
    } else if (key=='w') {

      W=true;
      aniW = Ani.to(this, 1, "r_w", 3*PI, Ani.SINE_OUT);
      aniW.setBegin(0);
      aniW.setPlayMode(Ani.YOYO);
      aniW.repeat();

      aniW_1 = Ani.to(this, 1, "w", 90, Ani.SINE_OUT);
      aniW_1.setBegin(0);
      aniW_1.setPlayMode(Ani.YOYO);
      aniW_1.repeat();
    } else if (key=='x') {

      X=true;
      aniX = Ani.to(this, 1, "r_ax", 3*PI, Ani.SINE_OUT);
      aniX.setBegin(0);
      aniX.setPlayMode(Ani.YOYO);
      aniX.repeat();

      aniX_1 = Ani.to(this, 1, "ax", 114, Ani.SINE_OUT);
      aniX_1.setBegin(0);
      aniX_1.setPlayMode(Ani.YOYO);
      aniX_1.repeat();
    } else if (key=='y') {

      Y=true;
      aniY = Ani.to(this, 1, "r_ay", 3*-PI, Ani.SINE_OUT);
      aniY.setBegin(0);
      aniY.setPlayMode(Ani.YOYO);
      aniY.repeat();

      aniY_1 = Ani.to(this, 1, "ay", 100, Ani.SINE_OUT); 
      aniY_1.setBegin(0);
      aniY_1.setPlayMode(Ani.YOYO);
      aniY_1.repeat();
    } else if (key=='z') {

      Z=true;
      aniZ = Ani.to(this, 1, "r_z", 2*PI, Ani.SINE_OUT);
      aniZ.setBegin(0);
      aniZ.setPlayMode(Ani.YOYO);
      aniZ.repeat();

      aniZ_1 = Ani.to(this, 1, "z", 100, Ani.SINE_OUT); 
      aniZ_1.setBegin(0);
      aniZ_1.setPlayMode(Ani.YOYO);
      aniZ_1.repeat();
    } else if (key==' ') {



      A=true;
      aniA= Ani.to(this, 1, "r_a", 2*-PI, Ani.SINE_OUT);
      aniA.setBegin(0);
      aniA.setPlayMode(Ani.YOYO);
      aniA.repeat(2);

      aniA_1= Ani.to(this, 1, "a", 90, Ani.SINE_OUT);
      aniA_1.setBegin(0);
      aniA_1.setPlayMode(Ani.YOYO);
      aniA_1.repeat(2);


      B=true;
      aniB= Ani.to(this, 1, "r_b", PI, Ani.SINE_OUT);
      aniB.setBegin(0);
      aniB.setPlayMode(Ani.YOYO);
      aniB.repeat(2);

      aniB_1= Ani.to(this, 1, "b", 100, Ani.SINE_OUT);
      aniB_1.setBegin(0);
      aniB_1.setPlayMode(Ani.YOYO);
      aniB_1.repeat(2);


      C=true;
      aniC= Ani.to(this, 1, "r_c", 4*-PI, Ani.SINE_OUT);
      aniC.setBegin(0);
      aniC.setPlayMode(Ani.YOYO);
      aniC.repeat(2);

      aniC_1= Ani.to(this, 1, "c", 114, Ani.SINE_OUT);
      aniC_1.setBegin(0);
      aniC_1.setPlayMode(Ani.YOYO);
      aniC_1.repeat(2);


      D=true;
      aniD= Ani.to(this, 1, "r_d", 2*PI, Ani.SINE_OUT);
      aniD.setBegin(0);
      aniD.setPlayMode(Ani.YOYO);
      aniD.repeat(2);

      aniD_1= Ani.to(this, 1, "d", 10, Ani.SINE_OUT);
      aniD_1.setBegin(0);
      aniD_1.setPlayMode(Ani.YOYO);
      aniD_1.repeat(2);


      E=true;
      aniE = Ani.to(this, 1, "r_e", 2*PI, Ani.SINE_OUT);
      aniE.setBegin(0);
      aniE.setPlayMode(Ani.YOYO);
      aniE.repeat(2);

      aniE_1 = Ani.to(this, 1, "e", 110); 
      aniE_1.setBegin(0);
      aniE_1.setPlayMode(Ani.YOYO);
      aniE_1.repeat(2);


      F=true;
      aniF = Ani.to(this, 1, "r_f", 2*-PI, Ani.SINE_OUT);
      aniF.setBegin(0);
      aniF.setPlayMode(Ani.YOYO);
      aniF.repeat(2);

      aniF_1 = Ani.to(this, 1.5, "f", 114); 
      aniF_1.setBegin(0);
      aniF_1.setPlayMode(Ani.YOYO);
      aniF_1.repeat(2);

      G=true;
      aniG = Ani.to(this, 1, "r_g", 2*PI, Ani.SINE_OUT);
      aniG.setBegin(0);
      aniG.setPlayMode(Ani.YOYO);
      aniG.repeat(2);

      aniG_1 = Ani.to(this, 1, "g", 100, Ani.SINE_OUT); 
      aniG_1.setBegin(0);
      aniG_1.setPlayMode(Ani.YOYO);
      aniG_1.repeat(2);


      H=true;
      aniH = Ani.to(this, 1, "r_h", PI, Ani.SINE_OUT);
      aniH.setBegin(0);
      aniH.setPlayMode(Ani.YOYO);
      aniH.repeat(2);

      aniH_1 = Ani.to(this, 1, "h", 100, Ani.SINE_OUT); 
      aniH_1.setBegin(0);
      aniH_1.setPlayMode(Ani.YOYO);
      aniH_1.repeat(2);


      I=true;
      aniI = Ani.to(this, 0.8, "r_i", 2*PI, Ani.SINE_OUT);
      aniI.setBegin(0);
      aniI.setPlayMode(Ani.YOYO);
      aniI.repeat(2);

      aniI_1 = Ani.to(this, 0.8, "i", 100, Ani.SINE_OUT); 
      aniI_1.setBegin(0);
      aniI_1.setPlayMode(Ani.YOYO);
      aniI_1.repeat(2);


      J=true;
      aniJ = Ani.to(this, 1, "r_j", 2*PI, Ani.SINE_OUT);
      aniJ.setBegin(0);
      aniJ.setPlayMode(Ani.YOYO);
      aniJ.repeat(2);

      aniJ_1 = Ani.to(this, 1, "j", 100, Ani.SINE_OUT); 
      aniJ_1.setBegin(0);
      aniJ_1.setPlayMode(Ani.YOYO);
      aniJ_1.repeat(2);


      K = true;
      aniK = Ani.to(this, 1, "r_k", 2*PI, Ani.SINE_OUT);

      aniK.setBegin(0);
      aniK.setPlayMode(Ani.YOYO);
      aniK.repeat(2);

      aniK_1 = Ani.to(this, 1, "k", -80); 
      aniK_1.setBegin(0);
      aniK_1.setPlayMode(Ani.YOYO);
      aniK_1.repeat(2);

      aniK_2 = Ani.to(this, 1, "k_1", 46); 
      aniK_2.setBegin(0);
      aniK_2.setPlayMode(Ani.YOYO);
      aniK_2.repeat(2);

      aniK_3 = Ani.to(this, 1, "k_2", 100); 
      aniK_3.setBegin(0);
      aniK_3.setPlayMode(Ani.YOYO);
      aniK_3.repeat(2);

      aniK_4 = Ani.to(this, 1, "k_3", 90); 
      aniK_4.setBegin(0);
      aniK_4.setPlayMode(Ani.YOYO);
      aniK_4.repeat(2);


      L=true;
      aniL = Ani.to(this, 1, "r_l", 2*PI, Ani.SINE_OUT);
      aniL.setBegin(0);
      aniL.setPlayMode(Ani.YOYO);
      aniL.repeat(2);

      aniL_1 = Ani.to(this, 1, "l", 100, Ani.SINE_OUT); 
      aniL_1.setBegin(0);
      aniL_1.setPlayMode(Ani.YOYO);
      aniL_1.repeat(2);


      M=true;
      aniM = Ani.to(this, 1, "r_m", 2*PI, Ani.SINE_OUT);
      aniM.setBegin(0);
      aniM.setPlayMode(Ani.YOYO);
      aniM.repeat(2);

      aniM_1 = Ani.to(this, 1, "m", 100, Ani.SINE_OUT); 
      aniM_1.setBegin(0);
      aniM_1.setPlayMode(Ani.YOYO);
      aniM_1.repeat(2);


      N=true;
      aniN = Ani.to(this, 1, "r_n", 1.5*PI, Ani.SINE_OUT);
      aniN.setBegin(0);
      aniN.setPlayMode(Ani.YOYO);
      aniN.repeat(2);

      aniN_1 = Ani.to(this, 1, "n", 100, Ani.SINE_OUT); 
      aniN_1.setBegin(0);
      aniN_1.setPlayMode(Ani.YOYO);
      aniN_1.repeat(2);


      O=true;
      aniO = Ani.to(this, 1, "r_o", 2*-PI, Ani.SINE_OUT);
      aniO.setBegin(0);
      aniO.setPlayMode(Ani.YOYO);
      aniO.repeat(2);

      aniO_1 = Ani.to(this, 1, "o", 100, Ani.SINE_OUT); 
      aniO_1.setBegin(0);
      aniO_1.setPlayMode(Ani.YOYO);
      aniO_1.repeat(2);


      P=true;
      aniP = Ani.to(this, 1, "r_p", 2*PI, Ani.SINE_OUT);
      aniP.setBegin(0);
      aniP.setPlayMode(Ani.YOYO);
      aniP.repeat(2);

      aniP_1 = Ani.to(this, 1, "p", 100, Ani.SINE_OUT); 
      aniP_1.setBegin(0);
      aniP_1.setPlayMode(Ani.YOYO);
      aniP_1.repeat(2);


      Q =true;
      aniQ = Ani.to(this, 1, "r_q", 2*-PI, Ani.SINE_OUT);
      aniQ.setBegin(0);
      aniQ.setPlayMode(Ani.YOYO);
      aniQ.repeat(2);

      aniQ_1 = Ani.to(this, 1, "q", -73, Ani.SINE_OUT); 
      aniQ_1.setBegin(0);
      aniQ_1.setPlayMode(Ani.YOYO);
      aniQ_1.repeat(2);


      R =true;
      aniR = Ani.to(this, 1, "r_r", 2*PI, Ani.SINE_OUT);
      aniR.setBegin(0);
      aniR.setPlayMode(Ani.YOYO);
      aniR.repeat(2);

      aniR_1 = Ani.to(this, 1, "r", 114, Ani.SINE_OUT); 
      aniR_1.setBegin(0);
      aniR_1.setPlayMode(Ani.YOYO);
      aniR_1.repeat(2);


      S=true;
      aniS = Ani.to(this, 1, "r_s", 3*-PI, Ani.SINE_OUT);
      aniS.setBegin(0);
      aniS.setPlayMode(Ani.YOYO);
      aniS.repeat(2);

      aniS_1 = Ani.to(this, 1, "s", 100, Ani.SINE_OUT); 
      aniS_1.setBegin(0);
      aniS_1.setPlayMode(Ani.YOYO);
      aniS_1.repeat(2);


      T=true;
      aniT = Ani.to(this, 1, "r_t", 3*-PI, Ani.SINE_OUT);
      aniT.setBegin(0);
      aniT.setPlayMode(Ani.YOYO);
      aniT.repeat(2);

      aniT_1 = Ani.to(this, 1, "t", 100, Ani.SINE_OUT); 
      aniT_1.setBegin(0);
      aniT_1.setPlayMode(Ani.YOYO);
      aniT_1.repeat(2);


      U=true;
      aniU = Ani.to(this, 1, "r_u", 3*PI, Ani.SINE_OUT);
      aniU.setBegin(0);
      aniU.setPlayMode(Ani.YOYO);
      aniU.repeat(2);

      aniU_1 = Ani.to(this, 1, "u", 100, Ani.SINE_OUT); 
      aniU_1.setBegin(0);
      aniU_1.setPlayMode(Ani.YOYO);
      aniU_1.repeat(2);


      V=true;
      aniV = Ani.to(this, 1, "r_v", 2*PI, Ani.SINE_OUT);
      aniV.setBegin(0);
      aniV.setPlayMode(Ani.YOYO);
      aniV.repeat(2);

      aniV_1 = Ani.to(this, 1, "v", 100, Ani.SINE_OUT); 
      aniV_1.setBegin(0);
      aniV_1.setPlayMode(Ani.YOYO);
      aniV_1.repeat(2);


      W=true;
      aniW = Ani.to(this, 1, "r_w", 3*PI, Ani.SINE_OUT);
      aniW.setBegin(0);
      aniW.setPlayMode(Ani.YOYO);
      aniW.repeat(2);

      aniW_1 = Ani.to(this, 1, "w", 90, Ani.SINE_OUT);
      aniW_1.setBegin(0);
      aniW_1.setPlayMode(Ani.YOYO);
      aniW_1.repeat(2);


      X=true;
      aniX = Ani.to(this, 1, "r_ax", 3*PI, Ani.SINE_OUT);
      aniX.setBegin(0);
      aniX.setPlayMode(Ani.YOYO);
      aniX.repeat(2);

      aniX_1 = Ani.to(this, 1, "ax", 114, Ani.SINE_OUT);
      aniX_1.setBegin(0);
      aniX_1.setPlayMode(Ani.YOYO);
      aniX_1.repeat(2);


      Y=true;
      aniY = Ani.to(this, 1, "r_ay", 3*-PI, Ani.SINE_OUT);
      aniY.setBegin(0);
      aniY.setPlayMode(Ani.YOYO);
      aniY.repeat(2);

      aniY_1 = Ani.to(this, 1, "ay", 100, Ani.SINE_OUT); 
      aniY_1.setBegin(0);
      aniY_1.setPlayMode(Ani.YOYO);
      aniY_1.repeat(2);


      Z=true;
      aniZ = Ani.to(this, 1, "r_z", 2*PI, Ani.SINE_OUT);
      aniZ.setBegin(0);
      aniZ.setPlayMode(Ani.YOYO);
      aniZ.repeat(2);

      aniZ_1 = Ani.to(this, 1, "z", 100, Ani.SINE_OUT); 
      aniZ_1.setBegin(0);
      aniZ_1.setPlayMode(Ani.YOYO);
      aniZ_1.repeat(2);
    }





    ///////////////////////////////////////////
  }



  //-------------------------------------------------------------------------

  float a = 0;


  float r_a =0;

  Ani aniA;
  Ani aniA_1;


  void aMieum() {

    pushMatrix();
    translate(60, 80);
    rotateZ(r_a);
    rotateY(r_a);
    translate(-60, -80);
    line(115, 170-a/9*7, 5, 170-a/9*7);
    line(5, 170, 5, 69);
    line(5, 69, 5+a/9*5.5, 10);
    line(5+a/9*5.5, 10, 60, 10);
    line(60, 10, 115-a/9*5.5, 10);
    line(115-a/9*5.5, 10, 115, 69);
    line(115, 69, 115, 170);
    popMatrix();
  }

  float b= 0;

  float r_b=0;

  Ani aniB;
  Ani aniB_1;

  void bUoo() {

    pushMatrix();
    translate(60, 80);
    rotateZ(r_b*2.5);
    rotateX(r_b);
    rotateY(r_b*2);
    translate(-60, -80);

    line(-1-b/100*5, 90-b/10*2.5-b/10*3, 50, 90-b/10*2.5-b/10*3);
    line(50, 90-b/10*2.5-b/10*3, 120+b/100*35, 90-b/10*2.5-b/10*3);


    line(39-b/100*45, 90-b/10*2.5-b/10*3, 39-b/100*45, 149-b/10*3);
    line(39-b/100*45, 149-b/10*3, 39+b/100*10, 170-b/10*3);


    line(79-b/100*15, 90-b/10*2.5-b/10*3, 79-b/100*15, 149-b/10*3);
    line(79-b/100*15, 149-b/10*3, 79-b/100*30, 170-b/10*3);

    line(79-b/100*15, 149-b/10*3, 79+b/100*40, 170+b/10-b/10*3);

    line(79+b/100*75, 90-b/10*2.5-b/10*3, 79+b/100*75, 149+b/10-b/10*3);
    line(79+b/100*75, 149+b/10-b/10*3, 79+b/100*40, 170+b/10-b/10*3);  

    popMatrix();
  }

  float c= 0;
  float r_c=0;

  Ani aniC;
  Ani aniC_1;

  void cChieut() {

    pushMatrix();

    translate(300, 300);
    rotateY(r_c);
    //rotateZ(r_c/2);
    translate(-300, -300);

    line(357, 221, 300+c/2, 221);
    line(300-c/2, 221, 243, 221);

    line(263, 200, 300, 200);
    line(300, 200, 336, 200);

    //c
    line(336, 200, 336+c/5.2, 200+c/5.2);
    line(263, 200, 263-c/5.7, 200+c/5.4);

    line(243, 365-c/5.7, 243, 365-c/5.7-c/1.5);
    line(243, 221, 243, 221+c/1.5);
    line(356, 365-c/5.7, 356, 365-c/5.7- c/5);
    line(357, 221, 357, 221+ c/5);
    //

    line(243, 365-c/5.7, 272-c/12, 293+c/1.6);
    line(272-c/12, 293+c/1.6, 300, 223+c*1.25);
    line(300, 223+c*1.25, 327+c/12, 293+c/1.6);
    line(327+c/12, 293+c/1.6, 356, 365-c/5.7);

    popMatrix();
  }

  float d= 0;
  float r_d= 0;

  Ani aniD;
  Ani aniD_1;

  void dEueng() {

    pushMatrix();
    translate(60, 80);
    rotateX(r_d);
    rotateY(r_d);
    translate(-60, -80);
    line(5, 28, 23-d/10*18, 10);
    line(23-d/10*18, 10, 96-d/10*18, 10);
    line(96-d/10*18, 10, 115, 28+d/10*18);
    line(115, 28+d/10*18, 115, 152-d/10*18);
    line(115, 152-d/10*18, 96-d/10*18, 170);
    line(96-d/10*18, 170, 23-d/10*18, 170);
    line(23-d/10*18, 170, 5, 152);
    line(5, 152, 5, 28);
    popMatrix();
  }

  float e = 0;

  float r_e =0;

  Ani aniE;
  Ani aniE_1;


  void eDigeut() {


    pushMatrix();
    translate(60, 80);
    rotateY(r_e);
    rotateX(r_e);
    translate(-60, -80);

    line(118, 2, 29, 2);
    line(29, 2, 3, 2);
    line(3, 2, 3, 158);
    line(3, 158, 29, 158);
    line(29, 158, 118, 158);

    line(3+e, 78, 3, 78);
    popMatrix();
  }

  float f=0;
  float r_f=0;

  Ani aniF;
  Ani aniF_1;


  void fRieul() {

    pushMatrix();
    translate(300, 280);
    rotateY(r_f);
    rotateZ(r_f);
    translate(-300, -280);

    line(243, 200, 356, 200);
    line(243, 200, 243, 200+f/1.5);
    line(356, 200, 356, 277-f/1.5);
    line(356-f/3, 277, 243, 277);
    line(243, 277, 243, 365);
    line(243, 365, 357-f, 365);
    popMatrix();
  }

  float g = 0;
  float r_g =0;

  Ani aniG;
  Ani aniG_1;

  void gHieut() {


    pushMatrix();
    translate(60, 80);
    rotateX(r_g);
    rotateY(r_g);
    translate(-60, -80);

    line(5, 25, 115-g/100*110, 25);
    line(35, 11, 85-g/100*50, 11);


    line(5, 58-g/100*29, 23, 40-g/100*29);
    line(23, 40-g/100*29, 96, 40-g/100*29);
    line(96, 40-g/100*29, 115, 58-g/100*29);
    line(115, 58-g/100*29, 115, 71-g/100*20);
    line(115, 71+g/100*39, 115, 110);
    line(115, 110, 115-g/100*30, 110);
    line(115, 110, 115, 152);
    line(115, 152, 96, 170);
    line(96, 170, 23, 170);
    line(23, 170, 5, 152);
    line(5, 152, 5, 58-g/100*29);

    popMatrix();
  }

  float h=0;
  float r_h=0;

  Ani aniH;
  Ani aniH_1;

  void hOh() {
    pushMatrix();
    translate(h/100*20, h/100*10);

    pushMatrix();
    translate(60, 80);
    rotateZ(r_h*2.5);
    rotateY(r_h*2);
    translate(-60, -80);

    line(5-h/100*20, 170-h/100*20, 115+h/100*30, 170-h/100*20);

    line(60, 90-h/100*40, 60, 170-h/100*20);
    line(60, 90-h/100*40, 60-h/100*75, 90-h/100*40 );
    line(60, 90-h/100*40, 60+h/100*85, 90-h/100*40 );
    popMatrix();

    popMatrix();
  }

  float i=0;
  float r_i=0;

  Ani aniI;
  Ani aniI_1;

  void iYah() {
    pushMatrix();
    translate(0, i/100*20);

    pushMatrix();
    translate(60, 80);
    rotateY(r_i);
    rotateX(r_i);
    translate(-60, -80);

    line(10+i/100*55, 10, 10+i/100*55, 170);
    line(10+i/100*15, 65-i/100*55, 65+i/100*35, 65-i/100*55);
    line(10+i/100*15, 115+i/100*55, 65+i/100*35, 115+i/100*55);

    popMatrix();

    popMatrix();
  }

  float j = 0;
  float r_j = 0;

  Ani aniJ;
  Ani aniJ_1;

  void jUh() {

    pushMatrix();
    translate(60, 80);
    rotateY(r_j);
    rotateZ(r_j);
    translate(-60, -80);
    line(110, 10, 110, 180-j/100*30);
    line(110-j/100*40, 10, 110, 10);


    line(55-j/100*10, 90+j/100*90, 93-j/100*10, 90+j/100*90);
    line(93-j/100*10, 90+j/100*90, 110, 90+j/100*90-j/100*30);
    line(55-j/100*10, 90+j/100*90, 55-j/100*10-j/100*30, 90+j/100*90-j/100*30);
    line(55-j/100*10-j/100*30, 90+j/100*90-j/100*30, 55-j/100*10-j/100*30, 90+j/100*90-j/100*50);

    popMatrix();
  }

  float k=0;
  float k_1=0;
  float k_2=0;
  float k_3=0;

  float r_k =0;

  Ani aniK;
  Ani aniK_1;
  Ani aniK_2;
  Ani aniK_3;
  Ani aniK_4;

  void kAh() {



    pushMatrix();

    translate(60, 90);

    rotateY(r_k);
    rotateZ(r_k);

    translate(-60, -90);

    line(10, 10, 10, 180);
    line(10, 90, 64+k_1, 90+k);
    line(10, 90, 10+k_2, 90+k_3);

    popMatrix();
  }

  float l=0;
  float r_l=0;

  Ani aniL;
  Ani aniL_1;

  void lEe() {

    pushMatrix();
    translate(60, 80);
    rotateY(r_l);
    rotateZ(r_l);
    translate(-60, -80);

    line(10-l/100*20, 175, 10-l/100*20, 5);
    line(10-l/100*20, 175, 10+l-l/100*20, 175);

    popMatrix();
  }

  float m=0;
  float r_m=0;

  Ani aniM;
  Ani aniM_1;

  void mEuh() {


    pushMatrix();

    translate(60, 80);
    rotateX(r_m);
    rotateY(r_m);
    translate(-60, -80);  

    line(0, 161+m/100*20, 30-m/100*10, 161-m/100*160);
    line(30-m/100*10, 161-m/100*160, 60, 161-m/100*50);
    line(60, 161-m/100*50, 89+m/100*10, 161-m/100*160);
    line(89+m/100*10, 161-m/100*160, 120, 161+m/100*20);


    popMatrix();
  }


  float n=0;
  float r_n=0;

  Ani aniN;
  Ani aniN_1;

  void nWoo() {

    pushMatrix();
    translate(-n/100*40, 0);

    pushMatrix();
    translate(60, 80);
    rotateZ(r_n);
    rotateX(r_n*2/1.5);
    translate(-60, -80);

    line(0-n/100*40, 90, 120+n/100*20, 90);
    line(60+n/100*80, 90, 60-n/100*100, 170+n/100*20);
    line(60-n/100*100, 170+n/100*20, 60-n/100*100+n/100*180, 170+n/100*20);

    popMatrix();

    popMatrix();
  }

  float o=0;
  float r_o=0;

  Ani aniO;
  Ani aniO_1;

  void oEh() {
    pushMatrix();
    translate(o/100*10, 0);
    pushMatrix();
    translate(60, 80);
    rotateX(r_o);
    rotateZ(r_o);
    translate(-60, -80);

    line(25, 10-o/100*10, 25-o/100*20, 30-o/100*10);
    line(25-o/100*20, 30-o/100*10, 25-o/100*20, 152+o/100*10);
    line(25-o/100*20, 152+o/100*10, 25, 170+o/100*10);

    line(95, 10-o/100*10, 95+o/100*20, 30-o/100*10);
    line(95+o/100*20, 30-o/100*10, 95+o/100*20, 152+o/100*10);
    line(95+o/100*20, 152+o/100*10, 95, 170+o/100*10);

    line(25, 90-o/100*90, 95, 90-o/100*90);
    line(25, 90+o/100*90, 95, 90+o/100*90);
    popMatrix();
    popMatrix();
  }

  float p=o;
  float r_p=0;

  Ani aniP;
  Ani aniP_1;

  void pEh() {

    translate(60, 80);
    rotateX(r_p);
    rotateY(r_p);
    translate(-60, -80);

    line(45-p/100*40, 10-p/100*10, 45-p/100*40, 22);
    line(45-p/100*40, 22, 45-p/100*40, 156);
    line(45-p/100*40, 156, 45-p/100*40, 170+p/100*10);

    line(75+p/100*10, 10-p/100*10, 75+p/100*30, 21);
    line(75+p/100*30, 21, 75+p/100*30, 156-p/100*85);
    line(75+p/100*30, 156-p/100*85, 75+p/100*10, 170-p/100*80);

    line(5, 90-p/100*90, 45+p/100*40, 90-p/100*90);
    line(5, 90, 45+p/100*40, 90);
  }

  float q=0;
  float r_q=0;

  Ani aniQ;
  Ani aniQ_1;

  void qbieub() {

    pushMatrix();
    translate(300, 300);
    scale(1-q/73*.08);
    translate(-300, -300);
    pushMatrix(); 
    translate(300, 300);
    rotateX(r_q);
    rotateZ(r_q);
    translate(-300, -300);

    line(242, 200, 242, 366);
    line(242, 366, 332, 366);
    line(332, 366, 357, 366+ q/3);
    line(357, 366+ q/3, 357, 337);
    line(357, 337, 357, 200);

    line(357, 341, 357+ q/3, 341+ q/3);
    line(357, 341, 357- q/3, 341- q/3);

    line(243, 273+q, 356, 273+q);

    popMatrix();
    popMatrix();
  }

  float r=0;
  float r_r=0;

  Ani aniR;
  Ani aniR_1;

  void rGieuk() {
    pushMatrix();
    translate(r/114*40, 0);
    pushMatrix();
    translate(300, 300);
    scale(1+r/114*.08);
    translate(-300, -300);
    pushMatrix(); 
    translate(300, 300);
    rotateX(r_r);
    rotateZ(r_r);
    translate(-300, -300);

    line(243, 201, 333, 201);
    line(243, 201, 243, 201+r*1.455);
    line(333, 201, 357, 201+r/4);
    line(357, 201+r/4, 357, 261);
    line(357, 261, 357, 282-r/5.5);
    line(357, 282-r/5.5, 357-r/5.5, 282);
    line(357, 282+r/1.36, 357, 366);
    line(357-r/5.5, 282, 357-r/5.5-r/1.3, 282);
    line(357, 366, 357-r/1.6, 366-r/1.36);

    popMatrix();
    popMatrix();
    popMatrix();
  }

  float s=0;
  float r_s=0;

  Ani aniS;
  Ani aniS_1;

  void sNieun() {
    pushMatrix();
    translate(60, 80);
    rotateY(r_s);
    rotateZ(r_s/3*2);
    translate(-60, -80);

    line(5, 35-s/100*10, 5+s/100*20, 10-s/100*10);
    line(5+s/100*80, 10-s/100*10, 5+s/100*20, 10-s/100*10);
    line(5+s/100*80, 10-s/100*10, 5+s/100*100, 25-s/100*10);
    line(5+s/100*100, 25-s/100*10, 5+s/100*100, 77-s/100*10);

    line(5+s/100*100, 77-s/100*10, 5, 100);
    line(5, 100, 5, 150);
    line(5, 150, 5+s/100*20, 170);
    line(5+s/100*20, 170, 90, 170);
    line(90, 170, 115, 170-s/100*20);

    popMatrix();
  }

  float t=0;
  float r_t=0;

  Ani aniT;
  Ani aniT_1;

  void tSiot() {
    pushMatrix();
    translate(0, t/100*10); 
    pushMatrix();
    translate(60, 80);
    rotateX(r_t);
    rotateY(r_t);
    translate(-60, -80);


    line(10-t/100*10, 170, 60, 70+t);
    line(60, 70+t, 110+t/100*10, 170);

    line(60, 70+t, 60, 10-t/100*20);
    popMatrix();
    popMatrix();
  }

  float u=0;
  float r_u=0;

  Ani aniU;
  Ani aniU_1;

  void uYeo() {

    pushMatrix();
    translate(u/100*20, u/100*40);
    pushMatrix();

    translate(60, 80);
    rotateZ(r_u/6*5);
    rotateY(r_u/3*2);
    translate(-60, -80);

    line(110, 10+u/100*60, 110, 170-u/100*60);

    line(40-u/100*100, 60-u/100*20, 80, 60-u/100*20);
    line(80, 60-u/100*20, 110, 60+u/100*10);

    line(40-u/100*100, 120+u/100*20, 80, 120+u/100*20);
    line(80, 120+u/100*20, 110, 120-u/100*10);

    popMatrix();
    popMatrix();
  }
  float v=0;
  float r_v=0;

  Ani aniV;
  Ani aniV_1;

  void vPieup() {

    pushMatrix();
    translate(60, 80);
    rotateX(r_v);
    rotateY(r_v);
    translate(-60, -80);

    line(10+v/100*50, 170, 110-v/100*50, 170);


    line(5, 10, 60-v/100*55, 10);
    line(60+v/100*55, 10, 115, 10);

    line(25-v/100*25, 10-v/100*10, 40+v/100*20, 170);

    line(95+v/100*25, 10-v/100*10, 80-v/100*20, 170);

    popMatrix();
  }

  float w =0;

  float r_w =0;

  Ani aniW;
  Ani aniW_1;

  void wJieut() {
    pushMatrix();
    translate(60, 80);
    scale(1+w/90*.08);
    translate(-60, -80);

    pushMatrix();
    translate(60, 80);
    rotateX(r_w);
    rotateY(r_w);
    translate(-60, -80);
    line(0+w/3, 3, 60, 3+w);
    line(60, 3+w, 120-w/3, 3);
    line(1, 160, 60-w/3, 4);  
    line(60+w/3, 4, 119, 160);
    popMatrix();

    popMatrix();
  }

  float ax=0;
  float r_ax=0;

  Ani aniX;
  Ani aniX_1;

  void xTieut() {

    pushMatrix();
    scale(1+ax/100*0.03);
    translate(-ax/100*10, -ax/100*10);
    pushMatrix();
    translate(300, 300);
    rotateY(r_ax);
    //rotateX(r_ax);
    translate(-300, -300);

    line(357, 365, 243+ax, 365);
    line(243, 365, 243+ax/2, 283);//center
    line(243+ax/2, 283, 243, 200);//center
    line(243+ax, 200, 357, 200);

    line(357, 200, 357-ax/2, 200+ax/1.4);
    line(357, 365, 357-ax/2, 365-ax/1.4);

    line(243+ax/2, 283, 300, 283);
    line(300, 283, 357-ax/2, 283);

    popMatrix();
    popMatrix();
  }

  float ay=0;
  float r_ay=0;

  Ani aniY;
  Ani aniY_1;

  void yYo() {
    pushMatrix();
    translate(0, ay/100*70);
    pushMatrix();
    translate(60, 80);
    rotateX(r_ay);
    rotateY(r_ay);
    translate(-60, -80);

    line(5-ay/100*5, 170+ay/100*60, 60, 170-ay/100*15);
    line(60, 170-ay/100*15, 115+ay/100*5, 170+ay/100*60);

    line(40+ay/100*20, 170-ay/100*15, 40+ay/100*20, 90-ay/100*30);

    line(80-ay/100*20, 170-ay/100*15, 80-ay/100*20, 90-ay/100*30);

    popMatrix();
    popMatrix();
  }

  float z=0;
  float r_z=0;

  Ani aniZ;
  Ani aniZ_1;

  void zKieuk() {

    pushMatrix();
    translate(60, 80);
    rotateY(r_z);
    rotateZ(r_z);
    translate(-60, -80);

    line(5, 5, 115, 5);
    line(115, 5, 115-z/100*110, 175);
    line(115-z/100*110, 175, 115, 175);


    line(15+z/100*10, 90, 115-z/100*25, 90);

    popMatrix();
  }
}


