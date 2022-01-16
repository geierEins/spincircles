static class Property_4x4_1 {

  static void apply(SpinCircle[][] spinCircleArray) {

    spinCircleArray[0][0].setColor(255, 140, 0);
    spinCircleArray[0][1].setColor(255, 0, 50);
    spinCircleArray[0][2].setColor(255, 10, 10);
    spinCircleArray[0][3].setColor(255, 90, 0);
    spinCircleArray[1][0].setColor(255, 0, 50);
    spinCircleArray[1][1].setColor(255, 10, 10);
    spinCircleArray[1][2].setColor(255, 90, 0);
    spinCircleArray[1][3].setColor(255, 140, 0);
    spinCircleArray[2][0].setColor(255, 10, 10);
    spinCircleArray[2][1].setColor(255, 90, 0);
    spinCircleArray[2][2].setColor(255, 140, 0);
    spinCircleArray[2][3].setColor(255, 90, 0);
    spinCircleArray[3][0].setColor(255, 90, 0);
    spinCircleArray[3][1].setColor(255, 140, 0);
    spinCircleArray[3][2].setColor(255, 90, 0);
    spinCircleArray[3][3].setColor(255, 10, 10);

    spinCircleArray[0][0].setDegree(180);
    spinCircleArray[0][1].setDegree(150);
    spinCircleArray[0][2].setDegree(120);
    spinCircleArray[0][3].setDegree(90);
    spinCircleArray[1][0].setDegree(210);
    spinCircleArray[1][1].setDegree(180);
    spinCircleArray[1][2].setDegree(90);
    spinCircleArray[1][3].setDegree(60);
    spinCircleArray[2][0].setDegree(240);
    spinCircleArray[2][1].setDegree(27);
    spinCircleArray[2][2].setDegree(0);
    spinCircleArray[2][3].setDegree(30);
    spinCircleArray[3][0].setDegree(270);
    spinCircleArray[3][1].setDegree(300);
    spinCircleArray[3][2].setDegree(330);
    spinCircleArray[3][3].setDegree(0);

    // applying same property to each circle down here
    for (int x = 0; x < gridSize; x++) {
      for (int y = 0; y < gridSize; y++) {
        spinCircleArray[x][y].setStrokeWeight(1);
        spinCircleArray[x][y].setStepSize(0.25);
      }
    }
  }
}
