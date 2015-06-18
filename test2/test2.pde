import org.gicentre.utils.multisketch.*;
import java.awt.GridLayout;
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import ddf.minim.*;
import oscP5.*;
import processing.video.*;

boolean ready = false;
boolean sw = false;
boolean mouseOnL = false;
boolean mouseOnR = false;
boolean removeadd = false;
PImage uiImgLeft, uiImgRight;
int sketchNow = 0;

int fc1, fc2;

EmbeddedSketch[] sketches;
Movie theMov;

void setup() {
  size(1024, 768);
  setLayout(new GridLayout(1, 1));
  theMov = new Movie(this, "filling_water.mp4");
  theMov.play(); // plays the movie once

  uiImgLeft = loadImage("uiLeft.png");
  uiImgRight = loadImage("uiRight.png");

  sketches = new EmbeddedSketch[18];
  sketches[0] = new Sketch0(); //김유진
  sketches[1] = new Sketch1(); //김진영
  sketches[2] = new Sketch2(); //김휘균
  sketches[3] = new Sketch3(); //남승제
  sketches[4] = new Sketch4(); //문진성
  sketches[5] = new Sketch5(); //박건형
  sketches[6] = new Sketch6(); //박세연
  sketches[7] = new Sketch7(); //박채련
  sketches[8] = new Sketch8(); //손효림
  sketches[9] = new Sketch9(); //이민수
  sketches[10] = new Sketch10(); //이새봄
  sketches[11] = new Sketch11(); //이성호
  sketches[12] = new Sketch12(); //이연수
  sketches[13] = new Sketch13(); //임윤선
  sketches[14] = new Sketch14(); //임지영
  sketches[15] = new Sketch15(); //임철준
  sketches[16] = new Sketch16(); //정신재
  sketches[17] = new Sketch17(); //황선아

  sketches[sketchNow%18].setIsActive(true);
  add(new SketchPanel(this, sketches[sketchNow%18]));
}

void draw() {
  if (sw) {
    for (EmbeddedSketch sketch : sketches) {
      sketch.setIsActive(false);
      println(sketch);
    }
    sketches[sketchNow%18].setIsActive(true);
    fc1 = sketches[sketchNow%18].frameCount; 
    removeAll();
    add(new SketchPanel(this, sketches[sketchNow%18]));
    sw = false;
  }
  if(sketches[sketchNow%18].frameCount - fc1 > 100) ready = false;
}

void movieEvent(Movie m) {
  m.read();
}

void pageChan(int dir) { // page change
  if (!ready) {
    if (dir == 1) { // right button click
      sketchNow ++;
    } else if (dir == 0) {
      sketchNow --;
    }
    ready = true;
    sw = true;
    println(sketchNow);
  }
}

