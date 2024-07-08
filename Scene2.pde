

class scene2 {
  SoundFile music1;
  int startFrame;
  boolean isFinished;
  boolean flipFish; // Variable to track fish orientation
  int flipInterval = 60; // Interval in frames to flip the fish
  int lastFlipTime;
  
    scene2(PApplet parent) {
    music1 = new SoundFile(parent, "asset/scene2.mp3");

  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    flipFish = false; // Initially, the fish is not flipped
    lastFlipTime = frameCount;
    music1.play();
  }

  void draw() {
    int duration = 900; // Duration in frames
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // Flip the fish at regular intervals
    if (frameCount - lastFlipTime >= flipInterval) {
      flipFish = !flipFish;
      lastFlipTime = frameCount;
    }

    // Draw the scene2 content here
    background(255, 255, 255); // White background

    // Draw the purple rectangle
    fill(81, 0, 253);
    stroke(0);
    strokeWeight(3);
    rect(0, 0, 1280, 520);

    // Draw the orange rectangle
    fill(213, 129, 3);
    stroke(0);
    strokeWeight(3);
    rect(0, 520, 1280, 200);

    // Draw the fish (yellow ellipse path)
    pushMatrix();
    if (flipFish) {
      scale(-1, 1); // Flip horizontally
      translate(-1280, 0); // Adjust position after flipping
    }
    drawFish();
    popMatrix();

    // Draw the ellipses
    fill(217, 217, 217);
    stroke(0);
    strokeWeight(3);
    ellipse(1171.5, 605.5, 75, 55);
    ellipse(497.5, 574.5, 67, 47);
    ellipse(827, 577, 78, 42);
    ellipse(622, 679.5, 68, 39);
    ellipse(180.5, 607, 79, 52);

    // Draw the green paths
    fill(17, 215, 13);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(1078.75, 477.333);
    bezierVertex(1078.75, 536.612, 1068.96, 536, 1056.88, 536);
    bezierVertex(1044.79, 536, 1035, 536.612, 1035, 477.333);
    bezierVertex(1035, 418.055, 1044.79, 370, 1056.88, 370);
    bezierVertex(1068.96, 370, 1078.75, 418.055, 1078.75, 477.333);
    endShape(CLOSE);

    beginShape();
    vertex(1115.88, 477.333);
    bezierVertex(1115.88, 536.612, 1106.08, 536, 1094, 536);
    bezierVertex(1081.92, 536, 1072.12, 536.612, 1072.12, 477.333);
    bezierVertex(1072.12, 418.055, 1081.92, 370, 1094, 370);
    bezierVertex(1106.08, 370, 1115.88, 418.055, 1115.88, 477.333);
    endShape(CLOSE);

    beginShape();
    vertex(1153, 477.333);
    bezierVertex(1153, 536.612, 1143.21, 536, 1131.12, 536);
    bezierVertex(1119.04, 536, 1109.25, 536.612, 1109.25, 477.333);
    bezierVertex(1109.25, 418.055, 1119.04, 370, 1131.12, 370);
    bezierVertex(1143.21, 370, 1153, 418.055, 1153, 477.333);
    endShape(CLOSE);

    // Draw the small cyan ellipses
    fill(0, 255, 209);
    stroke(0);
    strokeWeight(3);
    ellipse(436.5, 220.5, 17, 23);
    ellipse(436.5, 151.5, 17, 23);
    ellipse(463.5, 100.5, 17, 23);
    ellipse(467.5, 57.5, 17, 23);
    ellipse(1215.5, 193.5, 17, 23);
    ellipse(1228.5, 267.5, 17, 23);
    ellipse(1219.5, 150.5, 17, 23);
    ellipse(1188.5, 244.5, 17, 23);
    ellipse(476.5, 174.5, 17, 23);

    // Draw the brown path
    fill(182, 133, 133);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(365, 520);
    bezierVertex(365, 471.996, 352.568, 425.958, 330.439, 392.014);
    bezierVertex(308.309, 358.07, 278.296, 339, 247, 339);
    bezierVertex(215.704, 339, 185.691, 358.07, 163.561, 392.014);
    bezierVertex(141.432, 425.958, 129, 471.996, 129, 520);
    vertex(247, 520);
    vertex(365, 520);
    endShape(CLOSE);

    // Draw the gray path
    fill(217, 217, 217);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(285, 518.5);
    bezierVertex(285, 502.985, 280.996, 488.105, 273.87, 477.134);
    bezierVertex(266.744, 466.163, 257.078, 460, 247, 460);
    bezierVertex(236.922, 460, 227.256, 466.163, 220.13, 477.134);
    bezierVertex(213.004, 488.105, 209, 502.985, 209, 518.5);
    vertex(247, 518.5);
    vertex(285, 518.5);
    endShape(CLOSE);

    // Animate the red ellipses
    int redEllipseX = (flipFish) ? 507 + (frameCount % flipInterval) * 4 : 507 - (frameCount % flipInterval) * 4;
    int redEllipseY = 446;

    // Draw the red ellipses
    fill(233, 46, 46);
    stroke(0);
    strokeWeight(3);
    ellipse(redEllipseX, redEllipseY, 71, 65);
    fill(236, 93, 93);
    stroke(0);
    strokeWeight(3);
    ellipse(redEllipseX, redEllipseY - 1, 71, 27);
  }

  void drawFish() {
    // Fish body (yellow ellipse path)
    fill(248, 194, 5);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(668.075, 476.61);
    bezierVertex(667.983, 485.069, 602.172, 501.1, 581.119, 500.702);
    bezierVertex(560.067, 500.304, 543.125, 488.462, 543.28, 474.252);
    bezierVertex(543.434, 460.042, 560.626, 448.845, 581.679, 449.243);
    bezierVertex(602.731, 449.64, 668.167, 468.15, 668.075, 476.61);
    endShape(CLOSE);

    // Fish fin (red paths)
    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(665.432, 476.505);
    vertex(679.32, 465.885);
    vertex(676.633, 476.445);
    vertex(679.387, 487.39);
    vertex(665.432, 476.505);
    endShape(CLOSE);

    beginShape();
    vertex(577.682, 429.025);
    vertex(579.476, 429.122);
    vertex(587.801, 448.346);
    vertex(586.972, 449.734);
    vertex(567.157, 451.315);
    vertex(566.194, 449.83);
    vertex(577.682, 429.025);
    endShape(CLOSE);

    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(577.682, 429.025);
    vertex(579.476, 429.122);
    vertex(587.801, 448.346);
    vertex(586.972, 449.734);
    vertex(567.157, 451.315);
    vertex(566.194, 449.83);
    vertex(577.682, 429.025);
    endShape(CLOSE);
    noStroke();

    // Fish eye (small black ellipse)
    fill(0);
    stroke(0);
    strokeWeight(3);
    ellipse(556.861, 461.43, 3.20044, 4.21824);

    // Fish stripes (white stroke paths)
    stroke(255);
    strokeWeight(3);
    noFill();
    beginShape();
    vertex(577.25, 463.789);
    bezierVertex(573.424, 467.512, 573.773, 470.169, 577.25, 475.561);
    endShape();

    beginShape();
    vertex(590.95, 471.146);
    bezierVertex(587.124, 474.87, 587.473, 477.526, 590.95, 482.919);
    endShape();

    beginShape();
    vertex(593.689, 453.488);
    bezierVertex(589.863, 457.211, 590.213, 459.868, 593.689, 465.26);
    endShape();
    noStroke();

    // Fish tail (red path)
    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(612.875, 500);
    vertex(593.406, 490.681);
    vertex(602.22, 476.586);
    vertex(612.875, 500);
    endShape(CLOSE);

    // Fish gill (small white path)
    fill(255);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(543.388, 475.018);
    vertex(557.088, 475.561);
    vertex(557.088, 478.504);
    vertex(543.685, 478.504);
    vertex(543.388, 477.033);
    vertex(543.388, 475.018);
    endShape(CLOSE);
  }
  
  void stopMusic1 () {
    music1.stop();
  }
}
