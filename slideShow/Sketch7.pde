class Sketch7 extends EmbeddedSketch {
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

  /* park chaeryun 2013573
   start = space
   a = change the form
   s = splash
   d = gather
   f = pause 
   */


  PImage img;


  boolean bc = true;
  boolean ok = true;
  Mover[] movers = new Mover[750];
  float g ;
  color cc;
  float q;
  float qq;
  float qqq;


  void setup() {
    size(1024, 768);
    smooth();

    if (bc) {
      background(0);
    }

    g = 0.1;

    img = loadImage("cr-hab.jpg");


    for (int i = 0; i < movers.length; i++) {
      movers[i] = new Mover(img, random(0.1, 1.2), random(width), random(height));
    }
  }// setup


  void draw() {
    super.draw();
    pushMatrix();
    scale(0.8);
    translate(115, 100);
    if (!bc) {
      background(0);
    }

    // background(0); 

    for (int i = 0; i < movers.length; i++) {
      for (int j = 0; j < movers.length; j++) {
        if (i != j ) {
          PVector force = movers[j].attract(movers[i]);
          if (ok) movers[i].applyForce(force);
        }
      }

      // ---------------- 

      if (ok) {
        movers[i].update();
      }
      movers[i].update2();
      movers[i].display();  
      movers[i].checkEdges();
    }



    img.updatePixels();


    String s = "PRESS A, S, D, F ";
    textSize(15);
    fill(100, 100, 100);
    text(s, width/2 - 62, 700);
    String s2 = "START = SPACE ";
    text(s2, width/2 - 62, 720);
    popMatrix();
    fill(0);
    rect(0, 0, 61, 768);
    rect(963, 0, 61, 768);
    pageShift(7, 9);
  }//draw

  void keyPressed() {
    if (!ok) {
      if (key == 's' || key =='d' || key == 'a'  || key == ' ') {
        ok = !ok;
      }
    }

    if (key =='s') { 
      g = -2;
    }
    if (key =='d') { 
      g = 1.7;
    }
    if (key == 'f') { 
      ok = !ok;
    }
    if (key == 'a') { 
      bc = !bc;
    }
    if (key == ' ') {
      setup(); 
      q= random(-160, 200);    
      qq= random(-160, 200);    
      qqq= random(-160, 200);
    }
  }//key


  float spacing;
  float br;
  class Mover {

    PImage img;


    PVector location;
    PVector velocity;
    PVector acceleration;
    float mass;
    float limit;
    float strength;
    color c;




    Mover(PImage _img, float m, float x, float y) {
      mass = m;
      location = new PVector(x, y);
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
      limit = 60;

      img = _img;
      //c = img.get( int(x),int(y) );
    }

    void applyForce(PVector force) {
      PVector f = PVector.div(force, mass);
      acceleration.add(f);
    }

    void update() {
      velocity.add(acceleration);
      location.add(velocity);
      acceleration.mult(0);

      c = img.get( floor(location.x), floor(location.y));
    }

    void update2() {
      br = brightness(c);

      if (br>20  ) {
        cc = color(br+random(q), br+random(qq), br+random(qqq) );
      } else {
        cc = color(  20+random(q)/10, 20+random(qq)/10, 20+random(qqq)/10  ) ;
      }
      // println(q);
    }

    void display() {
      noStroke();

      fill(cc);
      ellipse(location.x, location.y, mass*25, mass*25);
    }

    PVector attract(Mover m) {
      PVector force = PVector.sub(location, m.location);    
      float distance = force.mag();          

      distance = constrain(18, 1.0, 10.0);  
      force.normalize();                    

      strength = (g * mass * m.mass) / (distance * distance); 
      force.mult(strength/30/m.mass);       

      return force;
    }


    void checkEdges() {
      if (location.x >= width-40) {
        location.x = width-40;
      } else if (location.x <= 40) {

        location.x = 40;
      }

      if (location.y >= height-40) {

        location.y = height-40;
      } else if (location.y <= 40) {

        location.y = 40;
      }
    }
  }//class end
}

