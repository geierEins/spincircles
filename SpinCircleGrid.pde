class SpinCircleGrid {

  int gridSize, gridWidth, gridHeight, xOffset, yOffset;
  SpinCircle[][] spinCircleArray;

  SpinCircleGrid(int gridSize, int gridWidth, int gridHeight) {
    this.gridWidth = gridWidth;
    this.gridHeight = gridHeight;
    this.gridSize = gridSize;
    this.xOffset = (width - gridWidth)/2;
    this.yOffset = (height - gridHeight)/2;

    spinCircleArray = new SpinCircle[gridSize][gridSize];

    // creating grid and inserting new SpinCircle objects
    for (int x = 0; x < gridSize; x++) {
      for (int y = 0; y < gridSize; y++) {
        spinCircleArray[x][y] = new SpinCircle(
          ((gridWidth/gridSize)/2)+x*(gridWidth/gridSize),
          ((gridHeight/gridSize)/2)+y*(gridHeight/gridSize),
          xOffset, yOffset
          );
        // set radius depending on gridSize
        spinCircleArray[x][y].setRadius((gridWidth/gridSize)/2);
        // set lengthBoost if wanted
        spinCircleArray[x][y].setLengthBoost(random(0.3, 1.2));
        // random degree
        spinCircleArray[x][y].setDegree(random(0, 360));
        // random colors
        spinCircleArray[x][y].setColor(
          (int)random(90, 255), //red
          (int)random(0, 180), //green
          (int)random(90, 255));//blue
      }
    }
    //apply property manually
    //Property_4x4_1.apply(spinCircleArray);
  }

  void drawCircleGrid() {
    // draw SpinCircles from circleGrid
    for (int x = 0; x < gridSize; x++) {
      for (int y = 0; y < gridSize; y++) {
        spinCircleArray[x][y].drawThisCircle(xOffset, yOffset);
      }
    }
  }

  void applyCirclePropertiesManually() {
    // applying same property to each circle down here
    for (int x = 0; x < gridSize; x++) {
      for (int y = 0; y < gridSize; y++) {
        spinCircleArray[x][y].setStrokeWeight(1);
        spinCircleArray[x][y].setStepSize(0.25);
      }
    }
  }
  
  void applyStepSizeToEachCircle(float stepsize){
      for (int x = 0; x < gridSize; x++) {
      for (int y = 0; y < gridSize; y++) {
        spinCircleArray[x][y].setStepSize(stepsize);
      }
    }
  
  }
}
