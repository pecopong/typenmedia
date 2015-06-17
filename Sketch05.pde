class Sketch5 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 100;
  int mOpaR = 100;

  float x;
  float a=1;
  float b=0;
  float c=0;
  float t=0;
  float g=0;
  PImage img;
  float f=1;
  void setup() {
    size(1024, 768, P3D);
    img = loadImage("1570.png");
  }

  void draw() {
    super.draw();
    lights();
    pointLight(255, 255, 255, mouseX, mouseY, 100);
    smooth();
    background(0, 0, 0);
    camera(512, 384, 400, 512, 384, 0, 0, 1, 0);
    pushMatrix();
    translate(112, -16, 0);
    fill(201, 181, 103);
    pushMatrix();
    translate(400, 400, 0);
    rotateY(0.002*PI*x);
    rotateX(0.004*PI*x);
    rotateZ(0.003*PI*x);
    translate(-400, -400, 0);

    beginShape();  
    jauma(a);
    strokeWeight(0);
    stroke(0);
    popMatrix();
    pushMatrix();
    translate(400, 400, 0);
    rotateY(0.003*PI*x);
    rotateX(0.002*PI*x);
    rotateZ(0.003*PI*x);
    translate(-400, -400, 0);
    jauma(a);
    popMatrix();
    pushMatrix();
    translate(400, 400, 0);
    rotateY(0.0035*PI*x);
    rotateX(0.0025*PI*x);
    translate(-400, -400, 0);
    moum(b);
    strokeWeight(0);
    stroke(0);
    popMatrix();


    pushMatrix();
    translate(400, 400, 0);
    rotateY(0.002*PI*x);
    rotateX(0.003*PI*x);
    rotateZ(0.0015*PI*x);
    translate(-400, -400, 0);
    moum(b);


    fill(175, 74, 115);
    popMatrix();
    popMatrix();

    x+=f;
    g++;
    tint(255,255);
    image(img, t, 0);
    

    if (g>1000
      ) {
      t=0;
      a=1;
      b=0;
      f=1;
    }
    if (g<1000) {
      t=400;
    }
    masterUI();
  }




  void crwoc(float xva, float yva, float xvb, float yvb, float cpxa1, float cpya1, float cpxa2, float cpya2, float xa, float ya, float cpxb1, float cpyb1, float cpxb2, float cpyb2, float xb, float yb, 
  float cpxc1, float cpyc1, float cpxc2, float cpyc2, float xc, float yc, 
  float cpxd1, float cpyd1, float cpxd2, float cpyd2, float xd, float yd, 
  float xvc, float yvc, float xvd, float yvd, 
  float cpxe1, float cpye1, float cpxe2, float cpye2, float xe, float ye, float cpxf1, float cpyf1, float cpxf2, float cpyf2, float xf, float yf, 
  float cpxg1, float cpyg1, float cpxg2, float cpyg2, float xg, float yg, float cpxh1, float cpyh1, float cpxh2, float cpyh2, float xh, float yh) {

    beginShape();  

    vertex(xva, yva);
    vertex(xvb, yvb);
    bezierVertex(cpxa1, cpya1, cpxa2, cpya2, xa, ya);
    bezierVertex(cpxb1, cpyb1, cpxb2, cpyb2, xb, yb);
    bezierVertex(cpxc1, cpyc1, cpxc2, cpyc2, xc, yc);
    bezierVertex(cpxd1, cpyd1, cpxd2, cpyd2, xd, yd);
    vertex(xvc, yvc);
    vertex(xvd, yvd);
    bezierVertex(cpxe1, cpye1, cpxe2, cpye2, xe, ye);
    bezierVertex(cpxf1, cpyf1, cpxf2, cpyf2, xf, yf);
    bezierVertex(cpxg1, cpyg1, cpxg2, cpyg2, xg, yg);
    bezierVertex(cpxh1, cpyh1, cpxh2, cpyh2, xh, yh);
    endShape();
  }

  void jauma(float a) {
    if (a==15) {
      beginShape();
      vertex(427, 411);
      vertex(443, 411);
      bezierVertex(438, 428, 424, 441, 406, 444);
      vertex(406, 444);
      vertex(406, 429);
      bezierVertex(416, 426, 423, 420, 427, 411);
      endShape();

      beginShape();

      vertex(343, 367);
      vertex(356, 375);
      bezierVertex(365, 360, 381, 350, 399, 350);
      bezierVertex(425, 350, 446, 368, 449, 392);
      vertex(449, 392);
      vertex(388, 392);
      vertex(388, 407);
      vertex(449, 407);
      bezierVertex(446, 431, 425, 450, 399, 450);
      vertex(399, 450);
      vertex(399, 465);
      bezierVertex(435, 465, 464, 435, 464, 400);
      bezierVertex(464, 364, 435, 335, 399, 335);
      bezierVertex(375, 335, 354, 348, 343, 367);
      endShape();
    }

    if (a==14) {
      beginShape();
      vertex(427, 411);
      vertex(443, 411);
      bezierVertex(438, 428, 424, 441, 406, 444);
      vertex(406, 444);
      vertex(406, 429);
      bezierVertex(416, 426, 423, 420, 427, 411);
      endShape();
      beginShape();
      vertex(343, 367);
      vertex(356, 375);
      bezierVertex(365, 360, 381, 350, 399, 350);
      bezierVertex(427, 350, 449, 372, 449, 400);
      bezierVertex(449, 427, 427, 450, 399, 450);
      vertex(399, 450);
      vertex(399, 465);
      bezierVertex(435, 465, 464, 435, 464, 400);
      bezierVertex(464, 364, 435, 335, 399, 335);
      bezierVertex(375, 335, 354, 348, 343, 367);

      endShape();
    }

    if (a==13) {
      beginShape();
      vertex(456, 432);
      vertex(443, 424);
      bezierVertex(434, 439, 418, 450, 400, 450);
      bezierVertex(372, 450, 350, 427, 350, 400);
      bezierVertex(350, 372, 372, 350, 400, 350);
      vertex(400, 350);
      vertex(400, 335);
      bezierVertex(364, 335, 335, 364, 335, 400);
      bezierVertex(335, 435, 364, 465, 400, 465);
      bezierVertex(424, 465, 445, 451, 456, 432);
      endShape();

      beginShape();
      vertex(372, 411);
      vertex(356, 411);
      bezierVertex(361, 428, 375, 441, 393, 444);
      vertex(393, 444);
      vertex(393, 429);
      bezierVertex(383, 426, 376, 420, 372, 411);
      endShape();
    }

    if (a==12) {
      beginShape();
      vertex(440, 451);
      vertex(430, 439);
      bezierVertex(422, 446, 411, 450, 400, 450);
      bezierVertex(372, 450, 350, 427, 350, 400);
      bezierVertex(350, 372, 372, 350, 400, 350);
      bezierVertex(411, 350, 422, 353, 430, 360);
      vertex(430, 360);
      vertex(440, 348);
      bezierVertex(429, 340, 415, 335, 400, 335);
      bezierVertex(364, 335, 335, 364, 335, 400);
      bezierVertex(335, 435, 364, 465, 400, 465);
      bezierVertex(415, 465, 429, 459, 440, 451);
      endShape();

      beginShape();
      vertex(356, 388);
      vertex(372, 388);
      bezierVertex(375, 379, 383, 373, 393, 370);
      vertex(393, 370);
      vertex(393, 355);
      bezierVertex(375, 358, 360, 371, 356, 388);
      endShape();

      beginShape();
      vertex(372, 411);
      vertex(356, 411);
      bezierVertex(360, 428, 375, 441, 393, 444);
      vertex(393, 444);
      vertex(393, 429);
      bezierVertex(383, 426, 375, 420, 372, 411);
      endShape();
    }


    if (a==11) {
      beginShape();
      vertex(355, 447);
      vertex(365, 436);
      bezierVertex(356, 427, 350, 414, 350, 399);
      bezierVertex(350, 372, 372, 349, 400, 349);
      bezierVertex(427, 349, 450, 372, 450, 399);
      bezierVertex(450, 414, 444, 427, 434, 436);
      vertex(434, 436);
      vertex(444, 447);
      bezierVertex(457, 435, 465, 418, 465, 399);
      bezierVertex(465, 364, 435, 334, 400, 334);
      bezierVertex(364, 334, 335, 364, 335, 399);
      bezierVertex(335, 418, 342, 435, 355, 447);
      endShape();

      beginShape();
      vertex(355, 400);
      vertex(370, 400);
      bezierVertex(370, 391, 373, 383, 379, 378);
      bezierVertex(385, 373, 392, 370, 400, 370);
      bezierVertex(408, 370, 415, 373, 421, 378);
      bezierVertex(426, 384, 430, 391, 430, 400);
      vertex(430, 400);
      vertex(445, 400);
      bezierVertex(445, 387, 439, 376, 431, 368);
      bezierVertex(423, 360, 412, 355, 400, 355);
      bezierVertex(389, 355, 379, 358, 371, 365);
      bezierVertex(361, 373, 355, 386, 355, 400);
      endShape();
    }




    if (a ==10) {
      beginShape();
      vertex(350, 399);
      vertex(335, 399);
      bezierVertex(335, 430, 356, 456, 384, 463);
      vertex(384, 463);
      vertex(388, 448);
      bezierVertex(366, 443, 350, 423, 350, 399);
      endShape();

      beginShape();
      vertex(411, 448);
      vertex(415, 463);
      bezierVertex(443, 456, 465, 430, 465, 399);
      vertex(465, 399);
      vertex(450, 399);
      bezierVertex(450, 423, 433, 443, 411, 448);
      endShape();

      beginShape();
      vertex(406, 355);
      vertex(406, 350);
      bezierVertex(419, 352, 431, 358, 439, 369);
      vertex(439, 369);
      vertex(451, 359);
      bezierVertex(440, 346, 424, 336, 406, 335);
      vertex(406, 335);
      vertex(406, 315);
      vertex(393, 315);
      vertex(393, 335);
      bezierVertex(375, 337, 359, 346, 348, 359);
      vertex(348, 359);
      vertex(360, 369);
      bezierVertex(368, 359, 380, 352, 393, 350);
      vertex(393, 350);
      vertex(393, 355);
      bezierVertex(371, 358, 355, 377, 355, 400);
      vertex(355, 400);
      vertex(370, 400);
      bezierVertex(370, 383, 383, 370, 400, 370);
      bezierVertex(416, 370, 430, 383, 430, 400);
      vertex(430, 400);
      vertex(445, 400);
      bezierVertex(445, 377, 428, 358, 406, 355);
      endShape();
    }


    if (a == 9) {
      beginShape();
      vertex(339, 376);
      vertex(353, 382);
      bezierVertex(360, 363, 378, 350, 400, 350);
      bezierVertex(421, 350, 439, 363, 446, 382);
      vertex(446, 382);
      vertex(460, 376);
      bezierVertex(451, 352, 427, 335, 400, 335);
      bezierVertex(372, 335, 348, 352, 339, 376);
      endShape();

      beginShape();
      vertex(460, 423);
      vertex(446, 417);
      bezierVertex(439, 436, 421, 450, 400, 450);
      bezierVertex(378, 450, 360, 436, 353, 417);
      vertex(353, 417);
      vertex(339, 423);
      bezierVertex(348, 447, 372, 465, 400, 465);
      bezierVertex(427, 465, 451, 447, 460, 423);
      endShape();

      beginShape();
      vertex(372, 389);
      vertex(357, 383);
      bezierVertex(356, 388, 355, 394, 355, 399);
      bezierVertex(355, 405, 356, 411, 358, 416);
      vertex(358, 416);
      vertex(372, 410);
      bezierVertex(370, 407, 370, 403, 370, 399);
      bezierVertex(370, 396, 370, 392, 372, 389);
      endShape();

      beginShape();
      vertex(442, 383);
      vertex(428, 389);
      bezierVertex(429, 392, 430, 396, 430, 400);
      bezierVertex(430, 403, 429, 407, 428, 410);
      vertex(428, 410);
      vertex(442, 416);
      bezierVertex(443, 411, 445, 405, 445, 400);
      bezierVertex(445, 394, 443, 388, 442, 383);
      vertex(442, 383);
      vertex(428, 389);
      bezierVertex(429, 392, 430, 396, 430, 400);
      endShape();

      beginShape();
      bezier(425, 400, 425, 413, 413, 425, 400, 425);
      bezierVertex(386, 425, 375, 413, 375, 400);
      bezierVertex(375, 386, 386, 375, 400, 375);
      bezierVertex(413, 375, 425, 386, 425, 400);
      endShape();
    }





    if (a ==8) {
      beginShape();
      vertex(339, 376);
      vertex(353, 382);   
      bezierVertex(357, 371, 364, 362, 374, 357);
      vertex(374, 357);
      vertex(366, 344);
      bezierVertex(354, 351, 344, 363, 339, 376);
      endShape();

      beginShape();
      vertex(446, 382);
      vertex(460, 376);
      bezierVertex(455, 363, 445, 351, 433, 344);
      vertex(433, 344);
      vertex(425, 357);
      bezierVertex(435, 362, 442, 371, 446, 382);
      endShape();

      beginShape();
      vertex(425, 442);
      vertex(433, 455);
      bezierVertex(445, 448, 455, 436, 460, 423);
      vertex(460, 423);
      vertex(446, 417);
      bezierVertex(442, 428, 435, 436, 425, 442);
      endShape();

      beginShape();
      vertex(366, 455);
      vertex(374, 442);
      bezierVertex(364, 437, 357, 428, 353, 417);
      vertex(353, 417);
      vertex(339, 423);
      bezierVertex(344, 436, 354, 448, 366, 455);
      endShape();

      crwoc(400, 355, 400, 370, 
      416, 370, 430, 383, 430, 400, 
      430, 416, 416, 430, 400, 430, 
      383, 430, 370, 416, 370, 400, 
      370, 383, 383, 370, 399, 370, 
      399, 370, 399, 355, 
      375, 355, 355, 375, 355, 400, 
      355, 424, 375, 445, 400, 445, 
      424, 445, 445, 424, 445, 400, 
      445, 375, 424, 355, 400, 355);
    }


    if (a == 7) {
      vertex(350, 406);
      vertex(464, 406);
      vertex(464, 399);   
      vertex(464, 399);
      bezierVertex(464, 364, 435, 335, 399, 335);
      bezierVertex(379, 335, 360, 344, 348, 359);
      vertex(348, 359);
      vertex(360, 369);
      bezierVertex(369, 357, 384, 350, 399, 350);
      bezierVertex(425, 350, 445, 368, 449, 392);
      vertex(449, 392);
      vertex(335, 392);
      vertex(335, 399);
      vertex(335, 400);
      bezierVertex(335, 435, 364, 465, 400, 465);
      bezierVertex(420, 465, 439, 455, 451, 440);
      vertex(451, 440);
      vertex(439, 430);
      bezierVertex(430, 442, 415, 450, 400, 450);
      bezierVertex(374, 450, 353, 431, 350, 406);

      endShape();
      beginShape();
      vertex(377, 388);
      vertex(422, 388);
      bezierVertex(418, 380, 409, 375, 399, 375);
      bezierVertex(390, 375, 381, 380, 377, 388);
      endShape();
    } 

    if (a == 6) {
      beginShape(); 


      vertex(350, 407);
      vertex(425, 407);
      vertex(425, 392);
      vertex(350, 392);
      bezierVertex(353, 368, 374, 350, 400, 350);
      bezierVertex(411, 350, 422, 354, 430, 360);
      vertex(430, 360);
      vertex(440, 348);
      bezierVertex(429, 340, 415, 335, 400, 335);
      bezierVertex(364, 335, 335, 364, 335, 400);
      bezierVertex(335, 435, 364, 465, 400, 465);
      bezierVertex(415, 465, 429, 459, 440, 451);
      vertex(440, 451);
      vertex(430, 439);
      bezierVertex(422, 445, 411, 450, 400, 450);
      bezierVertex(374, 450, 353, 431, 350, 407);
      endShape();

      beginShape();
      vertex(356, 388);
      vertex(372, 388);
      bezierVertex(375, 379, 383, 373, 393, 370);
      vertex(393, 370);
      vertex(393, 355);
      bezierVertex(375, 358, 360, 371, 356, 388);
      endShape();

      beginShape();
      vertex(372, 411);
      vertex(356, 411);
      bezierVertex(360, 428, 375, 441, 393, 444);
      vertex(393, 444);
      vertex(393, 429);
      bezierVertex(383, 426, 375, 420, 372, 411);
      endShape();
    }



    if (a == 5) {
      beginShape();

      vertex(407, 335);
      vertex(407, 319);
      vertex(392, 319);
      vertex(392, 335);
      bezierVertex(385, 336, 379, 338, 372, 340);
      bezierVertex(363, 345, 355, 351, 348, 359);
      vertex(348, 359);
      vertex(360, 369);
      bezierVertex(365, 363, 370, 358, 377, 355);
      bezierVertex(384, 351, 391, 350, 400, 350);
      bezierVertex(408, 350, 416, 352, 423, 355);
      bezierVertex(429, 359, 434, 363, 439, 369);
      vertex(439, 369);
      vertex(451, 359);
      bezierVertex(444, 351, 435, 344, 425, 340);
      bezierVertex(419, 337, 413, 336, 407, 335);
      endShape();

      beginShape();
      vertex(430, 367);
      vertex(420, 378);
      bezierVertex(426, 383, 430, 391, 430, 400);
      bezierVertex(430, 416, 416, 430, 400, 430);
      bezierVertex(383, 430, 370, 416, 370, 400);
      bezierVertex(370, 391, 373, 383, 379, 378);
      vertex(379, 378);
      vertex(369, 367);
      bezierVertex(360, 375, 355, 387, 355, 400);
      bezierVertex(355, 424, 375, 445, 400, 445);
      bezierVertex(424, 445, 445, 424, 445, 400);
      bezierVertex(445, 387, 439, 375, 430, 367);
      endShape();

      beginShape();

      bezier(425, 400, 425, 413, 413, 425, 400, 425);
      bezierVertex(386, 425, 375, 413, 375, 400);
      bezierVertex(375, 386, 386, 375, 400, 375);
      bezierVertex(413, 375, 425, 386, 425, 400);

      endShape();
    }



    if (a == 4) {

      beginShape();    
      vertex(406, 355);
      vertex(406, 350);
      bezierVertex(419, 352, 431, 358, 439, 369);
      vertex(439, 369);
      vertex(451, 359);
      bezierVertex(439, 344, 420, 334, 399, 334);
      bezierVertex(379, 334, 360, 344, 348, 359);
      vertex(348, 359);
      vertex(360, 369);
      bezierVertex(368, 359, 380, 352, 393, 350);
      vertex(393, 350);
      vertex(393, 355);
      bezierVertex(371, 358, 355, 377, 355, 400);
      vertex(355, 400);
      vertex(370, 400);
      bezierVertex(370, 383, 383, 370, 400, 370);
      bezierVertex(416, 370, 430, 383, 430, 400);
      vertex(430, 400);
      vertex(445, 400);
      bezierVertex(445, 377, 428, 358, 406, 355);
      endShape();

      beginShape();
      vertex(350, 399);
      vertex(335, 399);
      bezierVertex(335, 430, 356, 456, 384, 463);
      vertex(384, 463);
      vertex(388, 448);
      bezierVertex(366, 443, 350, 423, 350, 399);
      endShape();

      beginShape();
      vertex(411, 448);
      vertex(415, 463);
      bezierVertex(443, 456, 465, 430, 465, 399);
      vertex(465, 399);
      vertex(450, 399);
      bezierVertex(450, 423, 433, 443, 411, 448);
      endShape();
    }
    if (a == 3) {
      crwoc(0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0);

      crwoc(400, 355, 400, 350, 
      427, 350, 450, 372, 450, 400, 
      450, 427, 427, 450, 400, 450, 
      372, 450, 350, 427, 350, 400, 
      350, 372, 372, 350, 399, 350, 
      399, 350, 399, 335, 
      364, 335, 335, 364, 335, 400, 
      335, 435, 364, 465, 400, 465, 
      435, 465, 465, 435, 465, 400, 
      465, 364, 435, 335, 400, 335);

      beginShape();

      bezier(425, 400, 425, 413, 413, 425, 400, 425);
      bezierVertex(386, 425, 375, 413, 375, 400);
      bezierVertex(375, 386, 386, 375, 400, 375);
      bezierVertex(413, 375, 425, 386, 425, 400);

      endShape();
    }

    if (a == 1) {
      crwoc(400, 355, 400, 370, 
      416, 370, 430, 383, 430, 400, 
      430, 416, 416, 430, 400, 430, 
      383, 430, 370, 416, 370, 400, 
      370, 383, 383, 370, 399, 370, 
      399, 370, 399, 355, 
      375, 355, 355, 375, 355, 400, 
      355, 424, 375, 445, 400, 445, 
      424, 445, 445, 424, 445, 400, 
      445, 375, 424, 355, 400, 355);

      crwoc(400, 355, 400, 350, 
      427, 350, 450, 372, 450, 400, 
      450, 427, 427, 450, 400, 450, 
      372, 450, 350, 427, 350, 400, 
      350, 372, 372, 350, 399, 350, 
      399, 350, 399, 335, 
      364, 335, 335, 364, 335, 400, 
      335, 435, 364, 465, 400, 465, 
      435, 465, 465, 435, 465, 400, 
      465, 364, 435, 335, 400, 335);
    }
    if (a == 2) {
      crwoc(445, 399, 430, 399, 
      430, 408, 426, 416, 420, 421, 
      414, 426, 407, 429, 400, 429, 
      391, 429, 384, 426, 378, 421, 
      372, 415, 370, 408, 370, 399, 
      370, 399, 355, 399, 
      355, 412, 360, 423, 368, 431, 
      376, 439, 387, 444, 400, 444, 
      410, 444, 420, 441, 428, 434, 
      438, 426, 444, 413, 445, 399);

      crwoc(444, 352, 434, 363, 
      443, 372, 450, 385, 450, 400, 
      450, 427, 427, 450, 400, 450, 
      372, 450, 350, 427, 350, 400, 
      350, 385, 356, 372, 365, 363, 
      365, 363, 355, 352, 
      342, 364, 335, 381, 335, 400, 
      335, 435, 364, 465, 400, 465, 
      435, 465, 465, 435, 465, 400, 
      465, 381, 457, 364, 444, 352);

      beginShape();

      bezier(425, 400, 425, 413, 413, 425, 400, 425);
      bezierVertex(386, 425, 375, 413, 375, 400);
      bezierVertex(375, 386, 386, 375, 400, 375);
      bezierVertex(413, 375, 425, 386, 425, 400);

      endShape();
    }
  }

  void keyPressed() {


    if (key == ' ') {
      a=1;
      b=0;
      g=0;
      f=1;
    }
    if (key == 'q') {
      a=2;
      g=0;
      f=1;
    }  
    if (key == 'd') {
      a=3;
      g=0;
      f=1;
    }  
    if (key == 'w') {
      a=4;
      g=0;
      f=1;
    }
    if (key == 'g') {
      a=5;
      g=0;
      f=1;
    }  
    if (key == 'x') {
      a=6;
      g=0;
      f=1;
    }
    if (key == 'f') {
      a=7;
      g=0;
      f=1;
    }  
    if (key == 'a') {
      a=8;
      g=0;
      f=1;
    }
    if (key == 'v') {
      a=9;
      g=0;
      f=1;
    }
    if (key == 'c') {
      a=10;
      g=0;
      f=1;
    }
    if (key == 't') {
      a=11;
      g=0;
      f=1;
    }
    if (key == 'e') {
      a=12;
      g=0;
      f=1;
    }  
    if (key == 's') {
      a=13;
      g=0;
      f=1;
    }  
    if (key == 'r') {
      a=14;
      g=0;
      f=1;
    }
    if (key == 'z') {
      a=15;
      g=0;
      f=1;
    }  


    if (key == 'k') {
      b=1;
      g=0;
      f=1;
    }
    if (key == 'j') {
      b=2;
      g=0;
      f=1;
    }
    if (key == 'h') {
      b=3;
      g=0;
      f=1;
    }
    if (key == 'm') {
      b=4;
      g=0;
      f=1;
    }
    if (key == 'n') {
      b=5;
      g=0;
      f=1;
    }
    if (key == 'l') {
      b=6;
      g=0;
      f=1;
    }  
    if (key == 'o') {
      b=7;
      g=0;
      f=1;
    }
    if (key == 'p') {
      b=8;
      g=0;
      f=1;
    }
    if (key =='i') {
      b=9;
      g=0;
      f=1;
    }
    if (key =='b') {
      b=10;
      g=0;
      f=1;
    }
    if (key =='y') {
      b=11;
      g=0;
      f=1;
    }
    if (key =='u') {
      b=12;
      g=0;
      f=1;
    }   

    if (keyCode == CONTROL) {
      x=0;
      f=0;
      g=0;
    }
  }

  void moum(float b) {

    if (b == 12) {
      beginShape();
      vertex(399, 295);
      vertex(399, 295);
      vertex(399, 310);
      vertex(399, 310);
      bezierVertex(421, 310, 440, 317, 455, 329);
      vertex(455, 329);
      vertex(442, 343);
      vertex(452, 352);
      vertex(466, 339);
      bezierVertex(481, 355, 489, 376, 489, 400);
      bezierVertex(489, 423, 480, 445, 465, 461);
      vertex(465, 461);
      vertex(451, 447);
      vertex(441, 457);
      vertex(455, 470);
      bezierVertex(440, 482, 420, 490, 399, 490);
      vertex(399, 490);
      vertex(399, 489);
      vertex(399, 504);
      vertex(399, 505);
      bezierVertex(457, 505, 504, 457, 504, 400);
      bezierVertex(504, 342, 457, 295, 399, 295);
      endShape();
    }




    if (b == 11) {
      beginShape();
      vertex(504, 400);
      vertex(504, 400);
      vertex(489, 400);
      vertex(489, 400);
      bezierVertex(489, 421, 482, 440, 470, 456);
      vertex(470, 456);
      vertex(456, 442);
      vertex(446, 452);
      vertex(460, 466);
      bezierVertex(444, 481, 423, 490, 399, 490);
      bezierVertex(376, 490, 354, 480, 338, 465);
      vertex(338, 465);
      vertex(352, 451);
      vertex(342, 441);
      vertex(328, 455);
      bezierVertex(316, 440, 309, 421, 309, 400);
      vertex(309, 400);
      vertex(309, 400);
      vertex(294, 400);
      vertex(294, 400);
      bezierVertex(294, 458, 341, 505, 399, 505);
      bezierVertex(457, 505, 504, 458, 504, 400);
      endShape();
    }



    if (b ==10) {
      beginShape();
      vertex(504, 400);
      vertex(504, 400);
      vertex(489, 400);
      vertex(489, 400);
      bezierVertex(489, 449, 449, 490, 399, 490);
      bezierVertex(350, 490, 309, 449, 309, 400);
      vertex(309, 400);
      vertex(309, 400);
      vertex(294, 400);
      vertex(294, 400);
      bezierVertex(294, 425, 303, 448, 318, 466);
      vertex(318, 466);
      vertex(303, 480);
      vertex(313, 490);
      vertex(327, 476);
      bezierVertex(346, 494, 372, 505, 399, 505);
      bezierVertex(427, 505, 452, 494, 471, 476);
      vertex(471, 476);
      vertex(485, 490);
      vertex(495, 480);
      vertex(481, 466);
      bezierVertex(495, 448, 504, 425, 504, 400);
      endShape();
    }  


    if (b ==9) {
      beginShape();
      vertex(476, 328);
      vertex(490, 313);
      vertex(480, 304);
      vertex(466, 318);
      bezierVertex(448, 303, 425, 295, 400, 295);
      bezierVertex(399, 295, 399, 295, 399, 295);
      vertex(399, 295);
      vertex(399, 310);
      bezierVertex(399, 310, 399, 310, 400, 310);
      bezierVertex(449, 310, 490, 350, 490, 400);
      bezierVertex(490, 449, 449, 490, 400, 490);
      bezierVertex(399, 490, 399, 489, 399, 489);
      vertex(399, 489);
      vertex(399, 504);
      bezierVertex(399, 504, 399, 505, 400, 505);
      bezierVertex(425, 505, 448, 496, 466, 481);
      vertex(466, 481);
      vertex(480, 495);
      vertex(490, 485);
      vertex(476, 471);
      bezierVertex(494, 453, 505, 427, 505, 400);
      bezierVertex(505, 372, 494, 346, 476, 328);
      endShape();
    }




    if (b ==8) {


      beginShape();
      vertex(400, 490);
      vertex(400, 505);
      bezierVertex(457, 505, 505, 457, 505, 400);
      bezierVertex(505, 342, 457, 295, 400, 295);
      vertex(400, 295);
      vertex(400, 310);
      bezierVertex(449, 310, 490, 350, 490, 400);
      bezierVertex(490, 449, 449, 490, 400, 490);
      endShape();

      beginShape();
      vertex(452, 333);
      vertex(443, 344);
      bezierVertex(457, 356, 467, 373, 469, 392);
      vertex(469, 392);
      vertex(454, 392);
      vertex(454, 407);
      vertex(469, 407);
      bezierVertex(467, 426, 457, 443, 443, 455);
      vertex(443, 455);
      vertex(452, 466);
      bezierVertex(472, 451, 485, 427, 485, 400);
      bezierVertex(485, 372, 472, 348, 452, 333);
      endShape();
    }

    if (b==7) {

      beginShape();  
      vertex(400, 295);
      vertex(400, 310);
      bezierVertex(447, 310, 486, 346, 489, 392);
      vertex(489, 392);
      vertex(484, 392);
      bezierVertex(482, 368, 470, 347, 452, 333);
      vertex(452, 333);
      vertex(443, 344);
      bezierVertex(459, 357, 470, 377, 470, 400);
      bezierVertex(470, 422, 459, 442, 443, 455);
      vertex(443, 455);
      vertex(452, 466);
      bezierVertex(470, 452, 482, 431, 484, 407);
      vertex(484, 407);
      vertex(489, 407);
      bezierVertex(486, 453, 447, 490, 400, 490);
      vertex(400, 490);
      vertex(400, 505);
      bezierVertex(457, 505, 505, 457, 505, 400);
      bezierVertex(505, 342, 457, 295, 400, 295);
      endShape();
    }


    if (b ==6) {
      beginShape();  
      vertex(400, 490);
      vertex(400, 505);
      bezierVertex(457, 505, 505, 457, 505, 400);
      bezierVertex(505, 342, 457, 295, 400, 295);
      vertex(400, 295);
      vertex(400, 310);
      bezierVertex(449, 310, 490, 350, 490, 400);
      bezierVertex(490, 449, 449, 490, 400, 490);
      endShape();
    }



    if ( b == 5) {
      beginShape();
      vertex(504, 400);
      vertex(489, 400);
      bezierVertex(489, 449, 449, 490, 399, 490);
      bezierVertex(350, 490, 309, 449, 309, 400);
      vertex(309, 400);
      vertex(294, 400);
      bezierVertex(294, 455, 338, 501, 392, 504);
      vertex(392, 504);
      vertex(392, 525);
      vertex(407, 525);
      vertex(407, 504);
      bezierVertex(461, 501, 504, 455, 504, 400);
      endShape();
    }


    if ( b == 4) {
      beginShape();
      vertex(309, 400);
      vertex(294, 400);
      bezierVertex(294, 457, 342, 505, 399, 505);
      bezierVertex(457, 505, 504, 457, 504, 400);
      vertex(504, 400);
      vertex(489, 400);
      bezierVertex(489, 449, 449, 490, 399, 490);
      bezierVertex(350, 490, 309, 449, 309, 400);
      endShape();
    }


    if ( b == 3) {
      beginShape();
      vertex(504, 400);
      vertex(489, 400);
      bezierVertex(489, 447, 453, 486, 407, 489);
      vertex(407, 489);
      vertex(407, 469);
      vertex(392, 469);
      vertex(392, 489);
      bezierVertex(346, 486, 309, 447, 309, 400);
      vertex(309, 400);
      vertex(294, 400);
      bezierVertex(294, 457, 342, 505, 399, 505);
      bezierVertex(457, 505, 504, 457, 504, 400);
      endShape();
    }

    if ( b == 2) {
      beginShape();
      vertex(400, 295);
      vertex(400, 310);
      bezierVertex(447, 310, 486, 346, 489, 392);
      vertex(489, 392);
      vertex(469, 392);
      vertex(469, 407);
      vertex(489, 407);
      bezierVertex(486, 453, 447, 490, 400, 490);
      vertex(400, 490);
      vertex(400, 505);
      bezierVertex(457, 505, 505, 457, 505, 400);
      bezierVertex(505, 342, 457, 295, 400, 295);
      endShape();
    }


    if (b == 1) {
      beginShape();
      vertex(504, 407);
      vertex(525, 407);
      vertex(525, 392);
      vertex(504, 392);
      bezierVertex(501, 338, 455, 295, 400, 295);
      vertex(400, 295);
      vertex(400, 310);
      bezierVertex(449, 310, 490, 350, 490, 400);
      bezierVertex(490, 449, 449, 490, 400, 490);
      vertex(400, 490);
      vertex(400, 505);
      bezierVertex(455, 505, 501, 461, 504, 407);
      endShape();
    }



    if (b == 0) {
      beginShape();
      vertex(469, 392);
      vertex(484, 392);
      bezierVertex(481, 351, 448, 318, 407, 315);
      vertex(407, 315);
      vertex(407, 330);
      bezierVertex(440, 333, 466, 359, 469, 392);
      endShape();

      beginShape();
      vertex(484, 407);
      vertex(469, 407);
      bezierVertex(466, 440, 440, 466, 407, 469);
      vertex(407, 469);
      vertex(407, 484);
      bezierVertex(448, 481, 481, 448, 484, 407);
      endShape();

      beginShape();
      vertex(330, 407);
      vertex(315, 407);
      bezierVertex(318, 448, 351, 481, 392, 484);
      vertex(392, 484);
      vertex(392, 469);
      bezierVertex(359, 466, 333, 440, 330, 407);
      endShape();

      beginShape();
      vertex(315, 392);
      vertex(330, 392);
      bezierVertex(333, 359, 359, 333, 392, 330);
      vertex(392, 330);
      vertex(392, 315);
      bezierVertex(351, 318, 318, 351, 315, 392);
      endShape();


      beginShape();
      vertex(393, 504);
      vertex(393, 489);
      bezierVertex(346, 486, 310, 447, 310, 400);
      bezierVertex(310, 352, 346, 313, 393, 310);
      vertex(393, 310);
      vertex(393, 295);
      bezierVertex(369, 296, 347, 306, 330, 320);
      vertex(330, 320);
      vertex(316, 306);
      vertex(306, 316);
      vertex(321, 330);
      bezierVertex(304, 349, 295, 373, 295, 400);
      bezierVertex(295, 426, 304, 450, 321, 469);
      vertex(321, 469);
      vertex(306, 483);
      vertex(316, 493);
      vertex(330, 479);
      bezierVertex(347, 493, 369, 503, 393, 504);
      endShape();

      beginShape();

      vertex(479, 330);
      vertex(493, 316);
      vertex(483, 306);
      vertex(469, 321);
      bezierVertex(452, 306, 430, 296, 407, 295);
      vertex(407, 295);
      vertex(407, 310);
      bezierVertex(453, 313, 490, 352, 490, 400);
      bezierVertex(490, 447, 453, 486, 407, 489);
      vertex(407, 489);
      vertex(407, 504);
      bezierVertex(430, 503, 452, 493, 469, 478);
      vertex(469, 478);
      vertex(483, 493);
      vertex(493, 483);
      vertex(479, 469);
      bezierVertex(495, 450, 505, 426, 505, 400);
      bezierVertex(505, 373, 495, 349, 479, 330);
      endShape();
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
    scale(0.603);
    tint(255, mOpaL);
    image(uiImgLeft, 338, 522);
    tint(255, mOpaR);
    image(uiImgRight, 1300, 522);


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

