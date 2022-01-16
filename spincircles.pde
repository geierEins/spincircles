SpinCircleGrid grid;
float backgroundRed, backgroundGreen, backgroundBlue;
static int gridSize;
Button resetButton, saveButton;
Slider slider;
ScreenshotHelper screenshotHelper;

void setup() {
  // always use square canvas!
  size(1000, 1000);
  backgroundRed = random(0, 50);
  backgroundGreen = random(0, 50);
  backgroundBlue = random(0, 50);
  int frameThickness = 50;
  //gridSize = 4;
  gridSize = (int)random(2, 6);
  grid = new SpinCircleGrid(gridSize, width-(2*frameThickness), height-(2*frameThickness));
  resetButton = new Button(width/2 - 80, height-(frameThickness/2), 100, 25, "RESET");
  saveButton = new Button(width/2 + 80, height-(frameThickness/2), 100, 25, "SAVE");
  //slider = new Slider (width/2, height-(frameThickness/2), 200, frameThickness/2);
  screenshotHelper = new ScreenshotHelper();
}

void draw() {
  background(backgroundRed, backgroundGreen, backgroundBlue);
  grid.drawCircleGrid();
  //grid.applyStepSizeToEachCircle(map(slider.rectX, slider.x-(slider.rectWidth/2), slider.x+slider.rectWidth/2, 3, 20));
  resetButton.drawButton();
  saveButton.drawButton();
  
  //slider.drawSlider();
  //if (mousePressed && slider.mouseIsOverSlider()) {
  //  slider.moveRect(mouseX);
  //}
}

void mouseClicked() {
  // RESET
  if (resetButton.mouseIsOverButton()) {
    setup();
  }

  // SAVE
  if (saveButton.mouseIsOverButton()) {
    saveButton.hide();
    resetButton.hide();
    draw();
    screenshotHelper.shot();
    saveButton.retrieve();
    resetButton.retrieve();
  }
}
