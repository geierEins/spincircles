class Slider {

  int x, y, sliderWidth, sliderHeight, rectWidth, rectX, rectY;

  Slider(int x, int y, int sliderWidth, int sliderHeight) {
    this.x = x;
    this.y = y;
    this.rectX = x;
    this.rectY = y;
    this.sliderWidth = sliderWidth;
    this.sliderHeight = sliderHeight;
    this.rectWidth = 20;
  }

  void drawSlider() {
    //line
    strokeWeight(1);
    stroke(255);
    line(x-(sliderWidth/2), y, x+(sliderWidth/2), y);

    drawRect();
  }

  void drawRect() {
    //rect
    rectMode(CENTER);
    strokeWeight(1);
    stroke(255);
    if (mouseIsOverRect()) {
      fill(90);
    } else {
      fill(30);
    }
    rect(rectX, rectY, rectWidth, sliderHeight);
  }

  void moveRect(int rectX) {
    this.rectX = rectX;
  }

  boolean mouseIsOverSlider() {
    if (mouseX >(x-(sliderWidth/2)) &&
      mouseX < (x+(sliderWidth/2)) &&
      mouseY > (y-(sliderHeight/2)) &&
      mouseY < (y+(sliderHeight/2))) {
      return true;
    } else {
      return false;
    }
  }

  boolean mouseIsOverRect() {
    if (mouseX >(rectX-(rectWidth/2)) &&
      mouseX < (rectX+(rectWidth/2)) &&
      mouseY > (rectY-(sliderHeight/2)) &&
      mouseY < (rectY+(sliderHeight/2))) {
      return true;
    } else {
      return false;
    }
  }
}
