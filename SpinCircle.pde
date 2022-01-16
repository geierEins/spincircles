class SpinCircle {

  int xCircle, yCircle;
  int red, green, blue, alpha;
  int strokeweight, fadeToBackgroundColorAt;
  float radius, degree, stepsize, lengthBoost;

  private SpinCircle(int xCircle, int yCircle, int xOffset, int yOffset) {
    this.xCircle = xCircle + xOffset;
    this.yCircle = yCircle + yOffset;
    this.radius = 30;
    this.lengthBoost = 1;
    this.degree = 0;
    this.red = 0;
    this.green = 0;
    this.blue = 0;
    this.strokeweight = (int)random(1,5);
    this.stepsize = random(0.25, 10);
    this.fadeToBackgroundColorAt = (int)random(180, 360);
  }

  void drawThisCircle(int xOffset, int yOffset) {
    float xp, yp;
    float newRed, newGreen, newBlue;
    color newColor;

    for (float alpha = 0; alpha < 360; alpha+=stepsize) {
      xp = xCircle + radius * lengthBoost * cos(radians(degree+alpha));
      yp = yCircle + radius * lengthBoost * sin(radians(degree+alpha));

      newRed = (alpha > fadeToBackgroundColorAt) ? backgroundRed : map(alpha, 0, fadeToBackgroundColorAt, red, backgroundRed);
      newGreen = (alpha > fadeToBackgroundColorAt) ? backgroundGreen : map(alpha, 0, fadeToBackgroundColorAt, green, backgroundGreen);
      newBlue = (alpha > fadeToBackgroundColorAt) ? backgroundBlue : map(alpha, 0, fadeToBackgroundColorAt, blue, backgroundBlue);

      newColor = color(newRed, newGreen, newBlue);
      printSingleLine(xp, yp, newColor);
    }
  }

  void printSingleLine(float xp, float yp, color newColor) {
    stroke(newColor);
    strokeWeight(strokeweight);
    line(xCircle, yCircle, xp, yp);
  }
  
  void setColor(int red, int green, int blue){
    this.red = red;
    this.green = green;
    this.blue = blue;
  }
  
  void setDegree(float degree){
    this.degree = degree;
  }
  
  void setRadius(float radius){
    this.radius = radius;
  }
  
  void setLengthBoost(float lengthBoost){
    this.lengthBoost = lengthBoost;
  }
  
  void setXY(int x, int y){
    this.xCircle = x;
    this.yCircle = y;
  }
  
  void setStrokeWeight(int strokeweight){
    this.strokeweight = strokeweight;
  }
  
  void setStepSize(float stepsize){
    this.stepsize = stepsize;
  }
}
