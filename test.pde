import org.gicentre.utils.multisketch.*;
import java.awt.GridLayout;
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import ddf.minim.*;
import oscP5.*;
import processing.video.*;

boolean nextAvailable = true;
boolean mouseOnL = false;
boolean mouseOnR = false;
boolean reset;
boolean removeadd = false;
PImage uiImgLeft, uiImgRight;

int maxSketchNum;
int sketchNow;

EmbeddedSketch[] sketches;
Movie theMov;

void setup() {
  size(1024, 768);
  setLayout(new GridLayout(1, 1));
  //frameRate(1);
  maxSketchNum = 17;
  sketchNow = 0;
  reset = false;

  theMov = new Movie(this, "filling_water.mp4");
  theMov.play(); // plays the movie once

  uiImgLeft = loadImage("uiLeft.png");
  uiImgRight = loadImage("uiRight.png");

  sketches = new EmbeddedSketch[maxSketchNum+1];
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

  sketches[sketchNow].setIsActive(true);
  add(new SketchPanel(this, sketches[sketchNow]));
}

void draw() {
  if (reset) {
    setup();
  }
  if (!nextAvailable) {
    for (EmbeddedSketch sketch : sketches) {
      sketch.setIsActive(false);
    }
    removeAll();
    sketches[sketchNow].setIsActive(true);
    add(new SketchPanel(this, sketches[sketchNow]));
    nextAvailable = true;
  }
  println(sketchNow);
}

void movieEvent(Movie m) {
  m.read();
}

