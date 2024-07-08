import processing.sound. *;
SoundFile music5;

class scene6 {
  int startFrame;
  boolean isFinished;
  
  // Variables needed for the moving lines animation
  float[] x1 = {159.03, 479.03, 143.009, 454.009, 237.009, 551.009, 714.009, 1009.01, 845.009, 900.009, 465.988};
  float[] y1 = {129.501, 220.501, 270.5, 376.5, 406.5, 527.5, 292.5, 293.5, 463.5, 165.5, 118.5};
  float[] x2 = {274.03, 594.03, 252.009, 563.009, 346.009, 660.009, 823.009, 1118.01, 954.009, 1009.01, 593.988};
  float[] y2 = {136.501, 227.501, 272.5, 378.5, 408.5, 529.5, 294.5, 295.5, 465.5, 167.5, 115.5};
  float speed = 5;
  float screenWidth = 1280;
  
   scene6(PApplet parent) {
    music5 = new SoundFile(parent, "asset/scene6.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music5.play();
  }

  void draw() {
    int duration = 2410; // Duration in frames
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    
    background(81, 0, 253);  // Example background magenta

    // Draw moving lines
    stroke(0); // Black line color
    strokeWeight(3);

    // Draw lines moving from left to right
    for (int i = 0; i < x1.length; i++) {
      float xOffset = (frameCount * speed) % screenWidth; // Calculate relative position to the screen
      
      // If the line goes past the right edge of the screen, move it back to the left
      if (x1[i] + xOffset > screenWidth) {
        xOffset -= screenWidth;
      }
      
      line(x1[i] + xOffset, y1[i], x2[i] + xOffset, y2[i]);
    }

    // Draw turtle elements
    drawTurtle();

    // Draw fish elements
    drawFish();
  }

  void drawTurtle() {
    // Shift turtle position to the right by adding 300 pixels to the x-coordinate
    float xOffset = 300;

    fill(#85FD82);
    stroke(0);
    rect(486.756 + xOffset, 361.554, 219.435, 18.3837);

    fill(#09A805);
    beginShape();
    vertex(697.884 + xOffset, 334.904);
    bezierVertex(703.273 + xOffset, 343.055, 706.085 + xOffset, 351.764, 706.188 + xOffset, 360.554);
    vertex(596.473 + xOffset, 360.554);
    vertex(486.759 + xOffset, 360.554);
    bezierVertex(486.862 + xOffset, 351.764, 489.674 + xOffset, 343.055, 495.063 + xOffset, 334.904);
    bezierVertex(500.555 + xOffset, 326.597, 508.617 + xOffset, 319.031, 518.803 + xOffset, 312.649);
    bezierVertex(528.989 + xOffset, 306.268, 541.091 + xOffset, 301.2, 554.42 + xOffset, 297.74);
    bezierVertex(567.75 + xOffset, 294.281, 582.04 + xOffset, 292.5, 596.473 + xOffset, 292.5);
    bezierVertex(610.907 + xOffset, 292.5, 625.197 + xOffset, 294.281, 638.526 + xOffset, 297.74);
    bezierVertex(651.856 + xOffset, 301.2, 663.958 + xOffset, 306.268, 674.143 + xOffset, 312.649);
    bezierVertex(684.329 + xOffset, 319.031, 692.391 + xOffset, 326.597, 697.884 + xOffset, 334.904);
    endShape(CLOSE);

    fill(#09A805);
    beginShape();
    vertex(610.55 + xOffset, 361.715);
    vertex(642.15 + xOffset, 409.692);
    vertex(577.492 + xOffset, 380.392);
    endShape(CLOSE);

    fill(#09A805);
    beginShape();
    vertex(500.07 + xOffset, 368.929);
    bezierVertex(500.07 + xOffset, 373.13, 496.322 + xOffset, 377.095, 489.881 + xOffset, 380.039);
    bezierVertex(483.484 + xOffset, 382.963, 474.612 + xOffset, 384.784, 464.785 + xOffset, 384.784);
    bezierVertex(454.958 + xOffset, 384.784, 446.086 + xOffset, 382.963, 439.689 + xOffset, 380.039);
    bezierVertex(433.248 + xOffset, 377.095, 429.5 + xOffset, 373.13, 429.5 + xOffset, 368.929);
    bezierVertex(429.5 + xOffset, 364.728, 433.248 + xOffset, 360.763, 439.689 + xOffset, 357.819);
    bezierVertex(446.086 + xOffset, 354.896, 454.958 + xOffset, 353.074, 464.785 + xOffset, 353.074);
    bezierVertex(474.612 + xOffset, 353.074, 483.484 + xOffset, 354.896, 489.881 + xOffset, 357.819);
    bezierVertex(496.322 + xOffset, 360.763, 500.07 + xOffset, 364.728, 500.07 + xOffset, 368.929);
    endShape(CLOSE);

    fill(0);
    ellipse(450.471 + xOffset, 361.054, 1.4314, 1.21148);

    fill(#09A805);
    beginShape();
    vertex(669.237 + xOffset, 358.08);
    vertex(700.837 + xOffset, 406.057);
    vertex(636.179 + xOffset, 376.757);
    endShape(CLOSE);

    fill(#201D1D);
    fill(247, 175, 5);
    ellipse(532 + xOffset, 343.5, 15, 9.5);
    ellipse(612 + xOffset, 343.5, 15, 9.5);
    ellipse(663 + xOffset, 327.5, 15, 9.5);
    ellipse(576 + xOffset, 312.5, 15, 9.5);
  }

  void drawFish() {
    // Draw red path for fish fin
    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(457.435, 292.82);
    vertex(492.079, 330.815);
    vertex(466.067, 351.966);
    vertex(457.435, 292.82);
    endShape(CLOSE);

    // Draw yellow Bézier path for fish
    fill(248, 194, 5); // Yellow color
    beginShape();
    vertex(373.51, 363.5);
    bezierVertex(373.627, 351.28, 460.897, 328.079, 488.818, 328.641);
    bezierVertex(516.739, 329.202, 539.213, 346.3, 539.017, 366.829);
    bezierVertex(538.82, 387.358, 516.026, 403.545, 488.105, 402.983);
    bezierVertex(460.185, 402.422, 373.393, 375.721, 373.51, 363.5);
    endShape(CLOSE);

    // Draw red polygon for fish tail
    fill(227, 45, 45); // Red color
    beginShape();
    vertex(377.014, 363.65);
    vertex(358.602, 379.001);
    vertex(362.16, 363.743);
    vertex(358.501, 347.933);
    vertex(377.014, 363.65);
    endShape(CLOSE);

    // Draw white paths for fish details
    stroke(0); // White color
    noFill();
    beginShape();
    vertex(499.098, 371.043);
    vertex(504.17, 365.662);
    vertex(503.705, 361.824);
    vertex(499.091, 354.036);
    endShape();

    beginShape();
    vertex(483.184, 353.707);
    vertex(488.256, 348.326);
    vertex(487.79, 344.488);
    vertex(483.177, 336.7);
    endShape();

    beginShape();
    vertex(485.437, 382.411);
    vertex(490.508, 377.03);
    vertex(490.043, 373.192);
    vertex(485.43, 365.404);
    endShape();

    // Draw red polygon for fish mouth
    fill(227, 45, 45); // Red color;
    beginShape();
    vertex(447.163, 371.283);
    vertex(470.099, 352.624);
    vertex(481.226, 373.356);
    vertex(447.163, 371.283);
    endShape(CLOSE);

    // Draw white rectangle for fish teeth
    fill(255, 254, 254);
    stroke(0);
    beginShape();
    vertex(538.873, 372.946);
    vertex(520.703, 372.17);
    vertex(520.702, 367.918);
    vertex(538.477, 367.91);
    vertex(538.871, 370.035);
    vertex(538.873, 372.946);
    endShape(CLOSE);

    // Draw white eyes for fish
    fill(0);
    ellipse(523, 355, 10, 10);
  }
  
    void stopMusic5 () {
    music5.stop();
  }
}
