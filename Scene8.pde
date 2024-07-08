import processing.sound. *;
SoundFile music7;

class scene8 {
  int startFrame;
  boolean isFinished;
  float octopusX;
  float octopusSpeed;
  float stopPosition;

  scene8(PApplet parent) {
    music7 = new SoundFile(parent, "asset/opening gurita.mp3");
  }
  
  void setup() {
    startFrame = frameCount;
    isFinished = false;
    octopusX = width; // Start at the right edge of the screen
    octopusSpeed = 2.0; // Set a default speed for the octopus
    stopPosition = width / 2 - 73.5; // Middle of the screen, considering the width of the octopus
    music7.play();
}

   
  void draw() {
    background(255);
    int duration = 300; // Duration in frames
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    // Draw the background rectangles and other shapes as before...
    stroke(0);
    strokeWeight(3);
    // Draw the background rectangles  
    fill(81, 0, 253);
    rect(0, 0, 1280, 520);

    fill(213, 129, 3);
    rect(0, 520, 1280, 200);

    // Draw the ellipses
    fill(217, 217, 217);
    ellipse(1171.5, 605.5, 75, 55); // (37.5*2, 27.5*2)
    ellipse(497.5, 574.5, 67, 47); // (33.5*2, 23.5*2)
    ellipse(827, 577, 78, 42); // (39*2, 21*2)
    ellipse(622, 679.5, 68, 39); // (34*2, 19.5*2)
    ellipse(180.5, 607, 79, 52); // (39.5*2, 26*2)

    // Draw the green paths
    fill(17, 215, 13);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(1197.26, 483.341);
    bezierVertex(1197.26, 536.549, 1190.04, 536, 1181.13, 536);
    bezierVertex(1172.22, 536, 1165, 536.549, 1165, 483.341);
    bezierVertex(1165, 430.133, 1172.22, 387, 1181.13, 387);
    bezierVertex(1190.04, 387, 1197.26, 430.133, 1197.26, 483.341);
    endShape();

    beginShape();
    vertex(1224.63, 483.341);
    bezierVertex(1224.63, 536.549, 1217.41, 536, 1208.5, 536);
    bezierVertex(1199.59, 536, 1192.37, 536.549, 1192.37, 483.341);
    bezierVertex(1192.37, 430.133, 1199.59, 387, 1208.5, 387);
    bezierVertex(1217.41, 387, 1224.63, 430.133, 1224.63, 483.341);
    endShape();

    beginShape();
    vertex(1252, 483.341);
    bezierVertex(1252, 536.549, 1244.78, 536, 1235.87, 536);
    bezierVertex(1226.96, 536, 1219.74, 536.549, 1219.74, 483.341);
    bezierVertex(1219.74, 430.133, 1226.96, 387, 1235.87, 387);
    bezierVertex(1244.78, 387, 1252, 430.133, 1252, 483.341);
    endShape();

    beginShape();
    vertex(1057.26, 479.807);
    bezierVertex(1057.26, 536.586, 1050.04, 536, 1041.13, 536);
    bezierVertex(1032.22, 536, 1025, 536.586, 1025, 479.807);
    bezierVertex(1025, 423.028, 1032.22, 377, 1041.13, 377);
    bezierVertex(1050.04, 377, 1057.26, 423.028, 1057.26, 479.807);
    endShape();

    beginShape();
    vertex(1084.63, 479.807);
    bezierVertex(1084.63, 536.586, 1077.41, 536, 1068.5, 536);
    bezierVertex(1059.59, 536, 1052.37, 536.586, 1052.37, 479.807);
    bezierVertex(1052.37, 423.028, 1059.59, 377, 1068.5, 377);
    bezierVertex(1077.41, 377, 1084.63, 423.028, 1084.63, 479.807);
    endShape();

    beginShape();
    vertex(1112, 479.807);
    bezierVertex(1112, 536.586, 1104.78, 536, 1095.87, 536);
    bezierVertex(1086.96, 536, 1079.74, 536.586, 1079.74, 479.807);
    bezierVertex(1079.74, 423.028, 1086.96, 377, 1095.87, 377);
    bezierVertex(1104.78, 377, 1112, 423.028, 1112, 479.807);
    endShape();

    beginShape();
    vertex(172.258, 482.084);
    bezierVertex(172.258, 551.718, 165.037, 551, 156.129, 551);
    bezierVertex(147.221, 551, 140, 551.718, 140, 482.084);
    bezierVertex(140, 412.45, 147.221, 356, 156.129, 356);
    bezierVertex(165.037, 356, 172.258, 412.45, 172.258, 482.084);
    endShape();

    beginShape();
    vertex(199.629, 482.084);
    bezierVertex(199.629, 551.718, 192.408, 551, 183.5, 551);
    bezierVertex(174.592, 551, 167.371, 551.718, 167.371, 482.084);
    bezierVertex(167.371, 412.45, 174.592, 356, 183.5, 356);
    bezierVertex(192.408, 356, 199.629, 412.45, 199.629, 482.084);
    endShape();

    beginShape();
    vertex(227, 482.084);
    bezierVertex(227, 551.718, 219.779, 551, 210.871, 551);
    bezierVertex(201.963, 551, 194.742, 551.718, 194.742, 482.084);
    bezierVertex(194.742, 412.45, 201.963, 356, 210.871, 356);
    bezierVertex(219.779, 356, 227, 412.45, 227, 482.084);
    endShape();

    beginShape();
    vertex(107.258, 494.807);
    bezierVertex(107.258, 551.586, 100.037, 551, 91.1292, 551);
    bezierVertex(82.2213, 551, 75, 551.586, 75, 494.807);
    bezierVertex(75, 438.028, 82.2213, 392, 91.1292, 392);
    bezierVertex(100.037, 392, 107.258, 438.028, 107.258, 494.807);
    endShape();

    beginShape();
    vertex(134.629, 494.807);
    bezierVertex(134.629, 551.586, 127.408, 551, 118.5, 551);
    bezierVertex(109.592, 551, 102.371, 551.586, 102.371, 494.807);
    bezierVertex(102.371, 438.028, 109.592, 392, 118.5, 392);
    bezierVertex(127.408, 392, 134.629, 438.028, 134.629, 494.807);
    endShape();

    beginShape();
    vertex(162, 494.807);
    bezierVertex(162, 551.586, 154.779, 551, 145.871, 551);
    bezierVertex(136.963, 551, 129.742, 551.586, 129.742, 494.807);
    bezierVertex(129.742, 438.028, 136.963, 392, 145.871, 392);
    bezierVertex(154.779, 392, 162, 438.028, 162, 494.807);
    endShape();

    beginShape();
    vertex(247.258, 498.341);
    bezierVertex(247.258, 551.549, 240.037, 551, 231.129, 551);
    bezierVertex(222.221, 551, 215, 551.549, 215, 498.341);
    bezierVertex(215, 445.133, 222.221, 402, 231.129, 402);
    bezierVertex(240.037, 402, 247.258, 445.133, 247.258, 498.341);
    endShape();

    beginShape();
    vertex(274.629, 498.341);
    bezierVertex(274.629, 551.549, 267.408, 551, 258.5, 551);
    bezierVertex(249.592, 551, 242.371, 551.549, 242.371, 498.341);
    bezierVertex(242.371, 445.133, 249.592, 402, 258.5, 402);
    bezierVertex(267.408, 402, 274.629, 445.133, 274.629, 498.341);
    endShape();

    beginShape();
    vertex(302, 498.341);
    bezierVertex(302, 551.549, 294.779, 551, 285.871, 551);
    bezierVertex(276.963, 551, 269.742, 551.549, 269.742, 498.341);
    bezierVertex(269.742, 445.133, 276.963, 402, 285.871, 402);
    bezierVertex(294.779, 402, 302, 445.133, 302, 498.341);
    endShape();

    beginShape();
    vertex(1122.26, 467.084);
    bezierVertex(1122.26, 536.718, 1115.04, 536, 1106.13, 536);
    bezierVertex(1097.22, 536, 1090, 536.718, 1090, 467.084);
    bezierVertex(1090, 397.45, 1097.22, 341, 1106.13, 341);
    bezierVertex(1115.04, 341, 1122.26, 397.45, 1122.26, 467.084);
    endShape();

    beginShape();
    vertex(1149.63, 467.084);
    bezierVertex(1149.63, 536.718, 1142.41, 536, 1133.5, 536);
    bezierVertex(1124.59, 536, 1117.37, 536.718, 1117.37, 467.084);
    bezierVertex(1117.37, 397.45, 1124.59, 341, 1133.5, 341);
    bezierVertex(1142.41, 341, 1149.63, 397.45, 1149.63, 467.084);
    endShape();

    beginShape();
    vertex(1177, 467.084);
    bezierVertex(1177, 536.718, 1169.78, 536, 1160.87, 536);
    bezierVertex(1151.96, 536, 1144.74, 536.718, 1144.74, 467.084);
    bezierVertex(1144.74, 397.45, 1151.96, 341, 1160.87, 341);
    bezierVertex(1169.78, 341, 1177, 397.45, 1177, 467.084);
    endShape();

    // Draw the small ellipses
    fill(0, 255, 209);
    ellipse(436.5, 220.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(436.5, 151.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(463.5, 100.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(467.5, 57.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(1188.5, 313.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(1215.5, 193.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(1228.5, 267.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(1219.5, 150.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(1188.5, 244.5, 17, 23); // (8.5*2, 11.5*2)
    ellipse(476.5, 174.5, 17, 23); // (8.5*2, 11.5*2)

    // Draw the octopus at its current X position
    drawOctopus(octopusX, 266.5);

    // Update the octopus position if it hasn't reached the stop position
    if (octopusX > stopPosition) {
      octopusX -= octopusSpeed;
    }
  }

  void drawOctopus(float x, float y) {
    // Draw the large pink ellipse
    fill(223, 5, 214);
    stroke(0);
    strokeWeight(3);
    ellipse(x, y, 147, 155); // (73.5*2, 77.5*2)

    // Draw the additional parts of the octopus
    noStroke();
    fill(223, 5, 214); // Pink color for the octopus parts
    beginShape();
    vertex(x - 55.315, y + 101);
    bezierVertex(x - 63.158, y + 123.831, x - 34.315, y + 150, x - 46.156, y + 163.5);
    bezierVertex(x - 50.432, y + 162.031, x - 74.158, y + 112.831, x - 66.315, y + 90);
    bezierVertex(x - 58.472, y + 67.169, x - 50.432, y + 56.531, x - 46.156, y + 58);
    bezierVertex(x - 41.879, y + 59.469, x - 47.472, y + 78.169, x - 55.315, y + 101);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(x + 22.568, y - 7.675, x + 51.568, y - 30.675);

    noStroke();
    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(x + 37.494, y - 16.423);
    vertex(x + 32.027, y - 12.052);
    vertex(x + 26.559, y - 7.681);
    bezierVertex(x + 27.636, y - 6.334, x + 29.244, y - 5.504, x + 31.031, y - 5.371);
    bezierVertex(x + 32.817, y - 5.238, x + 34.636, y - 5.815, x + 36.086, y - 6.974);
    bezierVertex(x + 37.536, y - 8.133, x + 38.499, y - 9.78, x + 38.763, y - 11.552);
    bezierVertex(x + 39.027, y - 13.324, x + 38.571, y - 15.076, x + 37.494, y - 16.423);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(x - 56.141, y - 34.734, x - 14.141, y - 5.734);

    fill(0); // Black color for the eye
    ellipse(x + 12, y + 35, 27, 31); // (13.5*2, 15.5*2)

    // Draw the tentacles
    fill(223, 5, 214); // Pink color for the tentacles
    noStroke();

    beginShape();
    vertex(x + 35.5, y + 117.5);
    bezierVertex(x + 35.5, y + 143.457, x + 28.261, y + 171, x + 25.5, y + 171);
    bezierVertex(x + 22.739, y + 171, x + 25.5, y + 143.457, x + 25.5, y + 117.5);
    bezierVertex(x + 25.5, y + 91.543, x + 27.739, y + 70.5, x + 30.5, y + 70.5);
    bezierVertex(x + 33.261, y + 70.5, x + 35.5, y + 91.543, x + 35.5, y + 117.5);
    endShape();

    beginShape();
    vertex(x - 18.5, y + 119);
    bezierVertex(x - 18.5, y + 144.129, x - 15.462, y + 173, x - 18.5, y + 173);
    bezierVertex(x - 21.537, y + 173, x - 29.5, y + 144.129, x - 29.5, y + 119);
    bezierVertex(x - 29.5, y + 93.871, x - 21.537, y + 74.5, x - 18.5, y + 74.5);
    bezierVertex(x - 15.462, y + 74.5, x - 18.5, y + 93.871, x - 18.5, y + 119);
    endShape();

    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(x - 22.248, y - 8.145);
    vertex(x - 28.011, y - 12.119);
    vertex(x - 33.774, y - 16.092);
    bezierVertex(x - 34.752, y - 14.672, x - 35.083, y - 12.893, x - 34.695, y - 11.144);
    bezierVertex(x - 34.306, y - 9.395, x - 33.229, y - 7.821, x - 31.701, y - 6.767);
    bezierVertex(x - 30.172, y - 5.713, x - 28.317, y - 5.266, x - 26.544, y - 5.525);
    bezierVertex(x - 24.771, y - 5.783, x - 23.225, y - 6.726, x - 22.248, y - 8.145);
    endShape();

    fill(223, 5, 214); // Pink color for the tentacles
    beginShape();
    vertex(x + 7.271, y + 122);
    bezierVertex(x + 7.271, y + 146.577, x + 0.033, y + 173, x - 2.729, y + 173);
    bezierVertex(x - 5.49, y + 173, x - 2.729, y + 146.577, x - 2.729, y + 122);
    bezierVertex(x - 2.729, y + 97.423, x - 0.49, y + 76.5, x + 2.271, y + 76.5);
    bezierVertex(x + 5.033, y + 76.5, x + 7.271, y + 97.423, x + 7.271, y + 122);
    endShape();

    beginShape();
    vertex(x + 65.455, y + 109);
    bezierVertex(x + 65.455, y + 135.51, x + 55.085, y + 169, x + 51.771, y + 169);
    bezierVertex(x + 48.458, y + 169, x + 53.455, y + 135.51, x + 53.455, y + 109);
    bezierVertex(x + 53.455, y + 82.49, x + 43.641, y + 58.5, x + 46.955, y + 58.5);
    bezierVertex(x + 50.269, y + 58.5, x + 65.455, y + 82.49, x + 65.455, y + 109);
    endShape();

    // Draw small ellipses and circles
    fill(217, 217, 217); // Light gray color
    stroke(0);
    strokeWeight(3);
    ellipse(x - 59, y + 95.5, 3, 2); // (1.5*2, 1*2)
    ellipse(x - 53, y + 72.5, 3, 4); // (1.5*2, 2*2)
    ellipse(x - 21, y + 158.5, 3, 2); // (1.5*2, 1*2)
    ellipse(x - 25, y + 112, 3, 3); // (1.5*2)
    ellipse(x - 56, y + 133, 3, 1); // (1.5*2, 0.5*2)
    ellipse(x - 21.5, y + 93, 2, 3); // (1*2, 1.5*2)
    ellipse(x - 24.5, y + 126.5, 2, 2); // (1*2)
    ellipse(x - 50.5, y + 149.5, 2, 1); // (1*2, 0.5*2)
    ellipse(x + 2.5, y + 86.5, 2, 1); // (1*2, 0.5*2)
    ellipse(x - 23, y + 141, 3, 2); // (1.5*2, 1*2)
    ellipse(x + 59.5, y + 126.5, 2, 3); // (1*2, 1.5*2)
    ellipse(x + 56, y + 148.5, 1, 3); // (0.5*2, 1.5*2)
    ellipse(x + 55, y + 79, 3, 2); // (1.5*2, 1*2)
    ellipse(x + 28, y + 151, 1, 2); // (0.5*2, 1*2)
    ellipse(x + 29.5, y + 108, 2, 2); // (1*2)
    rect(x + 0.5, y + 141, 2, 2); // 2x2 rectangle
    ellipse(x + 31, y + 81, 3, 2); // (1.5*2, 1*2)
    ellipse(x + 2, y + 109.5, 3, 3); // (1.5*2)
    ellipse(x + 29.5, y + 128.5, 2, 3); // (1*2, 1.5*2)  
    ellipse(x + 59, y + 105, 3, 2); // (1.5*2, 1*2)
    ellipse(x - 61, y + 114, 3, 2); // (1.5*2, 1*2)
  }
   void stopMusic7 () {
    music7.stop();
  }
}
