import processing.sound. *;
SoundFile music10;

class scene11 {
  int startFrame;
  boolean isFinished;
  int ellipseY = 224; // Initial y-coordinate of the ellipse
  float lineOffset = 0; // Offset for line animation

  scene11(PApplet parent) {
    music10 = new SoundFile(parent, "asset/setelah bertarung.mp3");
  }    

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music10.play();
  }

  void draw() {
    int duration = 480; // Duration in frames
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    // Draw the content of scene11 here
    background(0, 0, 255); // Example magenta background
    drawEllipse();
    drawOctopus();
    drawBalls();
    if (ellipseY <= height) {
      ellipseY += 2; // Move ellipse downward
    }
    // Increment the line offset for animation
    lineOffset += 2;
    if (lineOffset > width) {
      lineOffset = 0; // Reset the offset to create a looping effect
    }
  }

  void drawEllipse() {
    if (ellipseY <= height) {
      fill(#E92E2E);
      ellipse(660, ellipseY, 102, 106);
      fill(#EC5D5D);
      ellipse(660, ellipseY - 2, 102, 44);
    }
  }

  void drawOctopus() {
    fill(#DF05D6);
    beginShape();
    vertex(486.88, 0);
    bezierVertex(486.88, 0, 486.76, 20.968, 491.132, 42.2527);
    bezierVertex(491.132, 42.2527, 499.735, 62.1359, 508.338, 82.0192);
    bezierVertex(508.338, 82.0192, 521.006, 100.112, 537.017, 115.38);
    bezierVertex(537.017, 115.38, 553.028, 130.649, 572.068, 142.795);
    bezierVertex(572.068, 142.795, 593.05, 151.125, 614.031, 159.455);
    bezierVertex(614.031, 159.455, 636.544, 163.805, 659.303, 163.927);
    bezierVertex(659.303, 163.927, 682.061, 164.05, 704.619, 159.942);
    bezierVertex(704.619, 159.942, 725.69, 151.839, 746.76, 143.735);
    bezierVertex(746.76, 143.735, 765.93, 131.795, 782.104, 116.7);
    bezierVertex(782.104, 116.7, 798.278, 101.604, 811.141, 83.649);
    bezierVertex(811.141, 83.649, 819.957, 63.8595, 828.773, 44.07);
    bezierVertex(828.773, 44.07, 833.37, 22.8336, 833.485, 1.3628);
    vertex(833.485, 0);
    vertex(660.183, 0);
    vertex(486.88, 0);
    endShape(CLOSE);
  
    // Tentacles
    drawTentacle1();
    drawTentacle2();
    drawTentacle3();
    drawTentacle4();
  }

  void drawTentacle1() {
    beginShape();
    vertex(530.997, 209.515);
    bezierVertex(518.171, 258.955, 524.506, 356.088, 510.67, 352.498);
    bezierVertex(496.835, 348.909, 468.068, 245.957, 480.894, 196.517);
    bezierVertex(493.72, 147.077, 515.334, 109.908, 529.169, 113.497);
    bezierVertex(543.005, 117.087, 543.823, 160.075, 530.997, 209.515);
    endShape(CLOSE);
  }

  void drawTentacle2() {
    beginShape();
    vertex(590.14, 234.517);
    bezierVertex(577.314, 283.957, 583.648, 381.089, 569.813, 377.5);
    bezierVertex(555.977, 373.911, 527.21, 270.959, 540.037, 221.519);
    bezierVertex(552.863, 172.079, 574.476, 134.91, 588.312, 138.499);
    bezierVertex(602.148, 142.088, 602.966, 185.077, 590.14, 234.517);
    endShape(CLOSE);
  }

  void drawTentacle3() {
    beginShape();
    vertex(780, 251);
    bezierVertex(780, 315.617, 742.359, 374, 728, 374);
    bezierVertex(713.641, 374, 728, 315.617, 728, 251);
    bezierVertex(728, 186.383, 739.64, 134, 754, 134);
    bezierVertex(768.359, 134, 780, 186.383, 780, 251);
    endShape(CLOSE);
  }

  void drawTentacle4() {
    beginShape();
    vertex(859.5, 238.5);
    bezierVertex(859.5, 303.117, 821.86, 361.5, 807.5, 361.5);
    bezierVertex(793.141, 361.5, 807.5, 303.117, 807.5, 238.5);
    bezierVertex(807.5, 173.883, 779.141, 113.5, 793.5, 113.5);
    bezierVertex(807.859, 113.5, 859.5, 173.883, 859.5, 238.5);
    endShape(CLOSE);
  }

  void drawBalls() {
    fill(#D9D9D9);
    drawBall(515, 165);
    drawBall(504, 215);
    drawBall(574, 186);
    drawBall(562, 238);
    drawBall(503, 279);
    drawBall(760, 186);
    drawBall(748, 308);
    drawBall(754, 238);
    drawBall(562, 302);
    drawBall(827, 308);
    drawBall(817, 165);
    drawBall(827, 232);
    drawLines();
  }

  void drawBall(float x, float y) {
    ellipse(x, y, 12, 12);
  }

  void drawLines() {
    stroke(0);
    drawLineWithOffset(465.988, 118.5, 593.988, 115.5);
    drawLineWithOffset(900.009, 165.5, 1009.01, 167.5);
    drawLineWithOffset(1009.01, 293.5, 1118.01, 295.5);
    drawLineWithOffset(845.009, 463.5, 954.009, 465.5);
    drawLineWithOffset(714.009, 292.5, 823.009, 294.5);
    drawLineWithOffset(551.009, 527.5, 660.009, 529.5);
    drawLineWithOffset(237.009, 406.5, 346.009, 408.5);
    drawLineWithOffset(454.009, 376.5, 563.009, 378.5);
    drawLineWithOffset(143.009, 270.5, 252.009, 272.5);
    drawLineWithOffset(479.03, 220.501, 594.03, 227.501);
    drawLineWithOffset(159.03, 129.501, 274.03, 136.501);
  }

  void drawLineWithOffset(float x1, float y1, float x2, float y2) {
    float offsetX1 = (x1 + lineOffset) % width;
    float offsetX2 = (x2 + lineOffset) % width;

    if (offsetX1 < offsetX2) {
      line(offsetX1, y1, offsetX2, y2);
    } else {
      line(offsetX1, y1, width, y2);
      line(0, y1, offsetX2, y2);
    }
  }
   void stopMusic10 () {
    music10.stop();
  }
}
