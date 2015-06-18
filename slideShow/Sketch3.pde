class Sketch3 extends EmbeddedSketch {
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

  void setup() {
    size(1024, 768);
  }

  void draw() {
    background(0);
    super.draw();
    pageShift(3, 5);
  }
}

