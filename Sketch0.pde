class Sketch0 extends EmbeddedSketch {
  int mBgCol = 0;
  int mBgColInv = 255;
  int mOpaL = 50;
  int mOpaR = 50;

  PGraphics d1, d2, d3, d4;

  float xx = 0;
  float yy = 0;

  float x, x1, x2 = 0;
  float vx, vx2 = 0;
  float dt = 0.5;
  float decay = 0.95;
  float y, y1 = 0;
  float vy = 0;


  void setup() {
    size(1024, 768, P2D);
    noSmooth();

    d1 = createGraphics(width, height);
    d2 = createGraphics(width, height);
    d3 = createGraphics(width, height);
    d4 = createGraphics(width, height);
  }

  void draw() {
    super.draw();
    pushMatrix();
    if (mouseX > 0)
      xx = mouseX - pmouseX;
    if (xx > 20) { 
      xx = 5;
    };
    if (xx < -20) { 
      xx = -5;
    };

    vx += (xx - x) * dt;
    x+= vx * dt;
    vx *= decay;

    yy = mouseY - pmouseY;
    if (yy > 20) { 
      yy = 5;
    };
    if (yy < -20) {  
      yy = -5;
    };

    vy += (yy - y) * dt;
    y+= vy * dt;
    vy *= decay;




    background(0, 0, 0);
    translate(200, 0);
    noFill();


    //yu

    d1.beginDraw();
    d1.translate(200, 60);
    d1.scale(0.7);
    d1.background(0); 
    d1.noFill();
    d1.strokeWeight(20); 
    d1.stroke(255, 0, 0);    
    d1.line(160+x, 0+y, 240+x*2, 0+y);
    d1.beginShape();
    d1.curveVertex(160+x, 0+y);
    d1.curveVertex(160+x, 0+y);
    d1.curveVertex(140+x, 80+y/2);
    d1.curveVertex(120-x, 160+y/2);
    d1.curveVertex(100+x, 240+y/2);
    d1.curveVertex(80-x, 320+y/2);
    d1.curveVertex(60+x, 400+y/2);
    d1.curveVertex(40-x, 480+y/2);
    d1.curveVertex(20+x, 560+y/2);
    d1.curveVertex(0, 640);
    d1.curveVertex(0, 640);
    d1.endShape();
    d1.beginShape();
    d1.curveVertex(160 + 40, 0);
    d1.curveVertex(160 + 40, 0);
    d1.curveVertex(140+x + 40, 80);
    d1.curveVertex(120-x + 40, 160);
    d1.curveVertex(100+x + 40, 240);
    d1.curveVertex(80-x + 40, 320);
    d1.curveVertex(60+x + 40, 400);
    d1.curveVertex(40-x + 40, 480);
    d1.curveVertex(20+x + 40, 560);
    d1.curveVertex(0 + 40-x, 640-y);
    d1.curveVertex(0 + 40-x, 640-y);
    d1.endShape();
    d1.line(0-x, 640-y, 80-x, 640-y);
    d1.beginShape();
    d1.curveVertex(160 + 120, 0);
    d1.curveVertex(160 + 120, 0);
    d1.curveVertex(140+x + 120, 80);
    d1.curveVertex(120-x + 120, 160);
    d1.curveVertex(100+x + 120, 240);
    d1.curveVertex(80-x + 120, 320);
    d1.curveVertex(60+x + 120, 400);
    d1.curveVertex(40-x + 120, 480);
    d1.curveVertex(20+x + 120, 560);
    d1.curveVertex(0 + 120, 640);
    d1.curveVertex(0 + 120, 640);
    d1.endShape();

    d1.arc(300, 320, 80, 80, PI, TWO_PI);
    d1.beginShape();
    d1.curveVertex(160 + 100, 0 + 320);
    d1.curveVertex(160 + 100, 0 + 320);
    d1.curveVertex(140+x + 100, 80 + 320);
    d1.curveVertex(120-x + 100, 160 + 320);
    d1.curveVertex(100 + 100, 240 + 320);
    d1.curveVertex(100 + 100, 240 + 320);
    d1.endShape();    
    d1.beginShape();
    d1.curveVertex(160 + 100 + 80, 0 + 320);
    d1.curveVertex(160 + 100 + 80, 0 + 320);
    d1.curveVertex(140+x + 100 + 80, 80 + 320);
    d1.curveVertex(120-x + 100 + 80, 160 + 320);
    d1.curveVertex(100 + 100 + 80, 240 + 320);
    d1.curveVertex(100 + 100 + 80, 240 + 320);
    d1.endShape();
    d1.arc(240, 560, 80, 80, 0, PI);

    d1.beginShape();
    d1.curveVertex(160 + 40, 0 + 320 + 320);
    d1.curveVertex(160 + 40, 0 + 320 + 320);
    d1.curveVertex(140+x + 40, 80 + 320 + 320);
    d1.curveVertex(120 + 40, 160 + 320 + 320);
    d1.curveVertex(120 + 40, 160 + 320 + 320);
    d1.endShape();  
    d1.beginShape();
    d1.curveVertex(160 + 80, 0 + 320 + 320);
    d1.curveVertex(160 + 80, 0 + 320 + 320);
    d1.curveVertex(140+x + 80, 80 + 320 + 320);
    d1.curveVertex(120 + 80, 160 + 320 + 320);
    d1.curveVertex(120 + 80, 160 + 320 + 320);
    d1.endShape(); 
    d1.line(140, 800, 220, 800); 

    d1.arc(300 - 140, 320 + 560, 80, 80, PI, TWO_PI);
    d1.beginShape();
    d1.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d1.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d1.curveVertex(140+x + 100 - 140, 80 + 320 + 560);
    d1.curveVertex(120-x + 100 - 140, 160 + 320 + 560);
    d1.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d1.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d1.endShape();    
    d1.beginShape();
    d1.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d1.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d1.curveVertex(140+x + 100 + 80 - 140, 80 + 320 + 560);
    d1.curveVertex(120-x + 100 + 80 - 140, 160 + 320 + 560);
    d1.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d1.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d1.endShape();
    d1.arc(240 - 140, 560 + 560, 80, 80, 0, PI);







    d1.endDraw();









    d2.beginDraw();
    d2.translate(200, 60);
    d2.scale(0.7);
    d2.background(0); 
    d2.noFill();
    d2.strokeWeight(20); 
    d2.stroke(0, 255, 0);    
    d2.line(160, 0, 240, 0);
    d2.beginShape();
    d2.curveVertex(160, 0);
    d2.curveVertex(160, 0);
    d2.curveVertex(140-x, 80);
    d2.curveVertex(120+x, 160);
    d2.curveVertex(100-x, 240);
    d2.curveVertex(80+x, 320);
    d2.curveVertex(60-x, 400);
    d2.curveVertex(40+x, 480);
    d2.curveVertex(20-x, 560);
    d2.curveVertex(0, 640);
    d2.curveVertex(0, 640);
    d2.endShape();
    d2.beginShape();
    d2.curveVertex(160 + 40, 0);
    d2.curveVertex(160 + 40, 0);
    d2.curveVertex(140-x + 40, 80);
    d2.curveVertex(120+x + 40, 160);
    d2.curveVertex(100-x + 40, 240);
    d2.curveVertex(80+x + 40, 320);
    d2.curveVertex(60-x + 40, 400);
    d2.curveVertex(40+x + 40, 480);
    d2.curveVertex(20-x + 40, 560);
    d2.curveVertex(0 + 40, 640);
    d2.curveVertex(0 + 40, 640);
    d2.endShape();
    d2.line(0, 640, 80, 640);
    d2.beginShape();
    d2.curveVertex(160 + 120, 0);
    d2.curveVertex(160 + 120, 0);
    d2.curveVertex(140-x + 120, 80);
    d2.curveVertex(120+x + 120, 160);
    d2.curveVertex(100-x + 120, 240);
    d2.curveVertex(80+x + 120, 320);
    d2.curveVertex(60-x + 120, 400);
    d2.curveVertex(40+x + 120, 480);
    d2.curveVertex(20-x + 120, 560);
    d2.curveVertex(0 + 120, 640);
    d2.curveVertex(0 + 120, 640);
    d2.endShape();
    d2.arc(300, 320, 80, 80, PI, TWO_PI);
    d2.beginShape();
    d2.curveVertex(160 + 100, 0 + 320);
    d2.curveVertex(160 + 100, 0 + 320);
    d2.curveVertex(140-x + 100, 80 + 320);
    d2.curveVertex(120+x + 100, 160 + 320);
    d2.curveVertex(100 + 100, 240 + 320);
    d2.curveVertex(100 + 100, 240 + 320);
    d2.endShape();
    d2.beginShape();
    d2.curveVertex(160 + 100 + 80, 0 + 320);
    d2.curveVertex(160 + 100 + 80, 0 + 320);
    d2.curveVertex(140-x + 100 + 80, 80 + 320);
    d2.curveVertex(120+x + 100 + 80, 160 + 320);
    d2.curveVertex(100 + 100 + 80, 240 + 320);
    d2.curveVertex(100 + 100 + 80, 240 + 320);
    d2.endShape();
    d2.arc(240, 560, 80, 80, 0, PI);



    d2.beginShape();
    d2.curveVertex(160 + 40, 0 + 320 + 320);
    d2.curveVertex(160 + 40, 0 + 320 + 320);
    d2.curveVertex(140-x + 40, 80 + 320 + 320);
    d2.curveVertex(120 + 40, 160 + 320 + 320+y);
    d2.curveVertex(120 + 40, 160 + 320 + 320+y);
    d2.endShape();  
    d2.beginShape();
    d2.curveVertex(160 + 80, 0 + 320 + 320);
    d2.curveVertex(160 + 80, 0 + 320 + 320);
    d2.curveVertex(140-x + 80, 80 + 320 + 320);
    d2.curveVertex(120 + 80, 160 + 320 + 320+y);
    d2.curveVertex(120 + 80, 160 + 320 + 320+y);
    d2.endShape(); 
    d2.line(140, 800+y, 220, 800+y); 

    d2.arc(300 - 140, 320 + 560, 80, 80, PI, TWO_PI);
    d2.beginShape();
    d2.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d2.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d2.curveVertex(140-x + 100 - 140, 80 + 320 + 560);
    d2.curveVertex(120+x + 100 - 140, 160 + 320 + 560);
    d2.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d2.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d2.endShape();    
    d2.beginShape();
    d2.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d2.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d2.curveVertex(140-x + 100 + 80 - 140, 80 + 320 + 560);
    d2.curveVertex(120+x + 100 + 80 - 140, 160 + 320 + 560);
    d2.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d2.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d2.endShape();
    d2.arc(240 - 140, 560 + 560, 80, 80, 0, PI);

    d2.endDraw();


    d3.beginDraw();
    d3.translate(200, 60);
    d3.scale(0.7);
    d3.background(0); 
    d3.noFill();
    d3.strokeWeight(20); 
    d3.stroke(0, 0, 255);    
    d3.line(160, 0, 240, 0);
    d3.beginShape();
    d3.curveVertex(160, 0);
    d3.curveVertex(160, 0);
    d3.curveVertex(140-x/2, 80);
    d3.curveVertex(120+x/2, 160);
    d3.curveVertex(100-x/2, 240);
    d3.curveVertex(80+x/2, 320);
    d3.curveVertex(60-x/2, 400);
    d3.curveVertex(40+x/2, 480);
    d3.curveVertex(20-x/2, 560);
    d3.curveVertex(0, 640);
    d3.curveVertex(0, 640);
    d3.endShape();
    d3.beginShape();
    d3.curveVertex(160 + 40, 0);
    d3.curveVertex(160 + 40, 0);
    d3.curveVertex(140-x/2 + 40, 80);
    d3.curveVertex(120+x/2 + 40, 160);
    d3.curveVertex(100-x/2 + 40, 240);
    d3.curveVertex(80+x/2 + 40, 320);
    d3.curveVertex(60-x/2 + 40, 400);
    d3.curveVertex(40+x/2 + 40, 480);
    d3.curveVertex(20-x/2 + 40, 560);
    d3.curveVertex(0 + 40, 640);
    d3.curveVertex(0 + 40, 640);
    d3.endShape();
    d3.line(0, 640, 80, 640);
    d3.beginShape();
    d3.curveVertex(160 + 120, 0);
    d3.curveVertex(160 + 120, 0);
    d3.curveVertex(140-x/2 + 120, 80);
    d3.curveVertex(120+x/2 + 120, 160);
    d3.curveVertex(100-x/2 + 120, 240);
    d3.curveVertex(80+x/2 + 120, 320);
    d3.curveVertex(60-x/2 + 120, 400);
    d3.curveVertex(40+x/2 + 120, 480);
    d3.curveVertex(20-x/2 + 120, 560);
    d3.curveVertex(0 + 120, 640);
    d3.curveVertex(0 + 120, 640);
    d3.endShape();
    d3.arc(300, 320, 80, 80, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100, 0 + 320);
    d3.curveVertex(160 + 100, 0 + 320);
    d3.curveVertex(140-x/2 + 100, 80 + 320);
    d3.curveVertex(120+x/2 + 100, 160 + 320);
    d3.curveVertex(100 + 100, 240 + 320);
    d3.curveVertex(100 + 100, 240 + 320);
    d3.endShape();
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80, 0 + 320);
    d3.curveVertex(160 + 100 + 80, 0 + 320);
    d3.curveVertex(140-x/2 + 100 + 80, 80 + 320);
    d3.curveVertex(120+x/2 + 100 + 80, 160 + 320);
    d3.curveVertex(100 + 100 + 80, 240 + 320);
    d3.curveVertex(100 + 100 + 80, 240 + 320);
    d3.endShape();
    d3.arc(240, 560, 80, 80, 0, PI);

    d3.beginShape();
    d3.curveVertex(160 + 40, 0 + 320 + 320);
    d3.curveVertex(160 + 40, 0 + 320 + 320);
    d3.curveVertex(140-x/2 + 40, 80 + 320 + 320);
    d3.curveVertex(120 + 40, 160 + 320 + 320);
    d3.curveVertex(120 + 40, 160 + 320 + 320);
    d3.endShape();  
    d3.beginShape();
    d3.curveVertex(160 + 80, 0 + 320 + 320);
    d3.curveVertex(160 + 80, 0 + 320 + 320);
    d3.curveVertex(140-x/2 + 80, 80 + 320 + 320);
    d3.curveVertex(120 + 80, 160 + 320 + 320);
    d3.curveVertex(120 + 80, 160 + 320 + 320);
    d3.endShape(); 
    d3.line(140, 800, 220, 800); 

    d3.arc(300 - 140, 320 + 560, 80, 80, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d3.curveVertex(160 + 100 - 140, 0 + 320 + 560);
    d3.curveVertex(140-x/2 + 100 - 140, 80 + 320 + 560);
    d3.curveVertex(120+x/2 + 100 - 140, 160 + 320 + 560);
    d3.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d3.curveVertex(100 + 100 - 140, 240 + 320 + 560);
    d3.endShape();    
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d3.curveVertex(160 + 100 + 80 - 140, 0 + 320 + 560);
    d3.curveVertex(140-x/2 + 100 + 80 - 140, 80 + 320 + 560);
    d3.curveVertex(120+x/2 + 100 + 80 - 140, 160 + 320 + 560);
    d3.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d3.curveVertex(100 + 100 + 80 - 140, 240 + 320 + 560);
    d3.endShape();
    d3.arc(240 - 140, 560 + 560, 80, 80, 0, PI);

    d3.line(160 -180, 0+700, 240 -180, 0+700);
    d3.beginShape();
    d3.curveVertex(160 -180, 0+700);
    d3.curveVertex(160 -180, 0+700);
    d3.curveVertex(140+x -180, 80+700);
    d3.curveVertex(120-x -180, 160+700);
    d3.curveVertex(100+x -180, 240+700);
    d3.curveVertex(80-x -180, 320+700);
    d3.curveVertex(60+x -180, 400+700);
    d3.curveVertex(40-x -180, 480+700);
    d3.curveVertex(20+x -180, 560+700);
    d3.curveVertex(0 -180, 640+700);
    d3.curveVertex(0 -180, 640+700);
    d3.endShape();
    d3.beginShape();
    d3.curveVertex(160 + 40 -180, 0+700);
    d3.curveVertex(160 + 40 -180, 0+700);
    d3.curveVertex(140+x + 40 -180, 80+700);
    d3.curveVertex(120-x + 40 -180, 160+700);
    d3.curveVertex(100+x + 40 -180, 240+700);
    d3.curveVertex(80-x + 40 -180, 320+700);
    d3.curveVertex(60+x + 40 -180, 400+700);
    d3.curveVertex(40-x + 40 -180, 480+700);
    d3.curveVertex(20+x + 40 -180, 560+700);
    d3.curveVertex(0 + 40 -180, 640+700);
    d3.curveVertex(0 + 40 -180, 640+700);
    d3.endShape();
    d3.line(0 -180, 640+700, 80 -180, 640+700);
    d3.beginShape();
    d3.curveVertex(160 + 120 -180, 0+700);
    d3.curveVertex(160 + 120 -180, 0+700);
    d3.curveVertex(140+x + 120 -180, 80+700);
    d3.curveVertex(120-x + 120 -180, 160+700);
    d3.curveVertex(100+x + 120 -180, 240+700);
    d3.curveVertex(80-x + 120 -180, 320+700);
    d3.curveVertex(60+x + 120 -180, 400+700);
    d3.curveVertex(40-x + 120 -180, 480+700);
    d3.curveVertex(20+x + 120 -180, 560+700);
    d3.curveVertex(0 + 120 -180, 640+700);
    d3.curveVertex(0 + 120 -180, 640+700);
    d3.endShape();






    d3.arc(300 -320, 320+y, 80, 80+y, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100-320, 0 + 320+y);
    d3.curveVertex(160 + 100-320, 0 + 320+y);
    d3.curveVertex(140+x + 100-320, 80 + 320+y);
    d3.curveVertex(120-x + 100-320, 160 + 320+y);
    d3.curveVertex(100 + 100-320, 240 + 320+y);
    d3.curveVertex(100 + 100-320, 240 + 320+y);
    d3.endShape();    
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80-320, 0 + 320+y);
    d3.curveVertex(160 + 100 + 80-320, 0 + 320+y);
    d3.curveVertex(140+x + 100 + 80-320, 80 + 320+y);
    d3.curveVertex(120-x + 100 + 80-320, 160 + 320+y);
    d3.curveVertex(100 + 100 + 80-320, 240 + 320+y);
    d3.curveVertex(100 + 100 + 80-320, 240 + 320+y);
    d3.endShape();
    d3.arc(240-320, 560+y, 80, 80+y, 0, PI);

    d3.beginShape();
    d3.curveVertex(160 + 40-320, 0 + 320 + 320);
    d3.curveVertex(160 + 40-320, 0 + 320 + 320);
    d3.curveVertex(140+x + 40-320, 80 + 320 + 320);
    d3.curveVertex(120 + 40-320, 160 + 320 + 320);
    d3.curveVertex(120 + 40-320, 160 + 320 + 320);
    d3.endShape();  
    d3.beginShape();
    d3.curveVertex(160 + 80-320, 0 + 320 + 320);
    d3.curveVertex(160 + 80-320, 0 + 320 + 320);
    d3.curveVertex(140+x + 80-320, 80 + 320 + 320);
    d3.curveVertex(120 + 80-320, 160 + 320 + 320);
    d3.curveVertex(120 + 80-320, 160 + 320 + 320);
    d3.endShape(); 
    d3.line(140-320, 800, 220-320, 800); 

    d3.arc(300 - 140-320, 320 + 560, 80, 80, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100 - 140-320, 0 + 320 + 560);
    d3.curveVertex(160 + 100 - 140-320, 0 + 320 + 560);
    d3.curveVertex(140+x + 100 - 140-320, 80 + 320 + 560);
    d3.curveVertex(120-x + 100 - 140-320, 160 + 320 + 560);
    d3.curveVertex(100 + 100 - 140-320, 240 + 320 + 560);
    d3.curveVertex(100 + 100 - 140-320, 240 + 320 + 560);
    d3.endShape();    
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80 - 140-320, 0 + 320 + 560);
    d3.curveVertex(160 + 100 + 80 - 140-320, 0 + 320 + 560);
    d3.curveVertex(140+x + 100 + 80 - 140-320, 80 + 320 + 560);
    d3.curveVertex(120-x + 100 + 80 - 140-320, 160 + 320 + 560);
    d3.curveVertex(100 + 100 + 80 - 140-320, 240 + 320 + 560);
    d3.curveVertex(100 + 100 + 80 - 140-320, 240 + 320 + 560);
    d3.endShape();
    d3.arc(240 - 140-320, 560 + 560, 80, 80, 0, PI);


    d3.arc(300 +140, 320, 80, 80, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100+140, 0 + 320);
    d3.curveVertex(160 + 100+140, 0 + 320);
    d3.curveVertex(140+x + 100+140, 80 + 320);
    d3.curveVertex(120-x + 100+140, 160 + 320);
    d3.curveVertex(100 + 100+140, 240 + 320);
    d3.curveVertex(100 + 100+140, 240 + 320);
    d3.endShape();    
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80+140, 0 + 320);
    d3.curveVertex(160 + 100 + 80+140, 0 + 320);
    d3.curveVertex(140+x + 100 + 80+140, 80 + 320);
    d3.curveVertex(120-x + 100 + 80+140, 160 + 320);
    d3.curveVertex(100 + 100 + 80+140, 240 + 320);
    d3.curveVertex(100 + 100 + 80+140, 240 + 320);
    d3.endShape();
    d3.arc(240+140, 560, 80, 80, 0, PI);

    d3.beginShape();
    d3.curveVertex(160 + 40+140, 0 + 320 + 320);
    d3.curveVertex(160 + 40+140, 0 + 320 + 320);
    d3.curveVertex(140+x + 40+140, 80 + 320 + 320);
    d3.curveVertex(120 + 40+140, 160 + 320 + 320);
    d3.curveVertex(120 + 40+140, 160 + 320 + 320);
    d3.endShape();  
    d3.beginShape();
    d3.curveVertex(160 + 80+140, 0 + 320 + 320);
    d3.curveVertex(160 + 80+140, 0 + 320 + 320);
    d3.curveVertex(140+x + 80+140, 80 + 320 + 320);
    d3.curveVertex(120 + 80+140, 160 + 320 + 320);
    d3.curveVertex(120 + 80+140, 160 + 320 + 320);
    d3.endShape(); 
    d3.line(140+140, 800, 220+140, 800); 

    d3.arc(300 - 140+140, 320 + 560+y, 80, 80+y, PI, TWO_PI);
    d3.beginShape();
    d3.curveVertex(160 + 100 - 140+140, 0 + 320 + 560+y);
    d3.curveVertex(160 + 100 - 140+140, 0 + 320 + 560+y);
    d3.curveVertex(140+x + 100 - 140+140, 80 + 320 + 560+y);
    d3.curveVertex(120-x + 100 - 140+140, 160 + 320 + 560+y);
    d3.curveVertex(100 + 100 - 140+140, 240 + 320 + 560+y);
    d3.curveVertex(100 + 100 - 140+140, 240 + 320 + 560+y);
    d3.endShape();    
    d3.beginShape();
    d3.curveVertex(160 + 100 + 80 - 140+140, 0 + 320 + 560+y);
    d3.curveVertex(160 + 100 + 80 - 140+140, 0 + 320 + 560+y);
    d3.curveVertex(140+x + 100 + 80 - 140+140, 80 + 320 + 560+y);
    d3.curveVertex(120-x + 100 + 80 - 140+140, 160 + 320 + 560+y);
    d3.curveVertex(100 + 100 + 80 - 140+140, 240 + 320 + 560+y);
    d3.curveVertex(100 + 100 + 80 - 140+140, 240 + 320 + 560+y);
    d3.endShape();
    d3.arc(240 - 140+140, 560 + 560, 80, 80+y, 0, PI);
    d3.endDraw();





    //byul


    blendMode(ADD);
    image(d1, 0, 0);
    image(d2, 0, 0);
    image(d3, 0, 0);

    popMatrix();
    masterUI();
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

