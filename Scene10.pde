import processing.sound. *;
SoundFile music9;

class scene10 {
  int startFrame;
  boolean isFinished;
  float octopusX;
  float fishX;
  boolean octopusMovingRight;
  boolean fishMovingLeft;
  
   scene10(PApplet parent) {
    music9 = new SoundFile(parent, "asset/gelut.mp3");
  }
 

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    octopusX = 0;
    fishX = 360;
    octopusMovingRight = true;
    fishMovingLeft = true;
    music9.play();
  }

  void draw() {
    int duration = 540; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    // Background
    background(81, 0, 253);

    // Bottom rectangle
    fill(213, 129, 3);
    rect(0, 520, 1280, 200);

    // Rectangles to overlay
    fill(81, 0, 253);
    rect(0, 0, 1280, 520);

    // Large gray ellipses
    stroke(0);
    strokeWeight(3);
    fill(217, 217, 217);
    ellipse(1171.5, 605.5, 75, 55); // (37.5*2, 27.5*2)
    ellipse(497.5, 574.5, 67, 47);  // (33.5*2, 23.5*2)
    ellipse(827, 577, 78, 42);      // (39*2, 21*2)
    ellipse(622, 679.5, 68, 39);    // (34*2, 19.5*2)
    ellipse(180.5, 607, 79, 52);    // (39.5*2, 26*2)

    // Small turquoise ellipses
    stroke(0);
    strokeWeight(3);
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

    // Paths
    stroke(0);
    strokeWeight(3);
    fill(217, 217, 217);
    beginShape();
    vertex(1197.26, 483.341);
    bezierVertex(1197.26, 536.549, 1190.04, 536, 1181.13, 536);
    bezierVertex(1172.22, 536, 1165, 536.549, 1165, 483.341);
    bezierVertex(1165, 430.133, 1172.22, 387, 1181.13, 387);
    bezierVertex(1190.04, 387, 1197.26, 430.133, 1197.26, 483.341);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(1197.26, 483.341);
    bezierVertex(1197.26, 536.549, 1190.04, 536, 1181.13, 536);
    bezierVertex(1172.22, 536, 1165, 536.549, 1165, 483.341);
    bezierVertex(1165, 430.133, 1172.22, 387, 1181.13, 387);
    bezierVertex(1190.04, 387, 1197.26, 430.133, 1197.26, 483.341);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(1224.63, 483.341);
    bezierVertex(1224.63, 536.549, 1217.41, 536, 1208.5, 536);
    bezierVertex(1199.59, 536, 1192.37, 536.549, 1192.37, 483.341);
    bezierVertex(1192.37, 430.133, 1199.59, 387, 1208.5, 387);
    bezierVertex(1217.41, 387, 1224.63, 430.133, 1224.63, 483.341);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(1252, 483.341);
    bezierVertex(1252, 536.549, 1244.78, 536, 1235.87, 536);
    bezierVertex(1226.96, 536, 1219.74, 536.549, 1219.74, 483.341);
    bezierVertex(1219.74, 430.133, 1226.96, 387, 1235.87, 387);
    bezierVertex(1244.78, 387, 1252, 430.133, 1252, 483.341);
    endShape();

    fill(217, 217, 217);
    beginShape();
    vertex(1057.26, 479.807);
    bezierVertex(1057.26, 536.586, 1050.04, 536, 1041.13, 536);
    bezierVertex(1032.22, 536, 1025, 536.586, 1025, 479.807);
    bezierVertex(1025, 423.028, 1032.22, 377, 1041.13, 377);
    bezierVertex(1050.04, 377, 1057.26, 423.028, 1057.26, 479.807);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(1057.26, 479.807);
    bezierVertex(1057.26, 536.586, 1050.04, 536, 1041.13, 536);
    bezierVertex(1032.22, 536, 1025, 536.586, 1025, 479.807);
    bezierVertex(1025, 423.028, 1032.22, 377, 1041.13, 377);
    bezierVertex(1050.04, 377, 1057.26, 423.028, 1057.26, 479.807);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(1084.63, 479.807);
    bezierVertex(1084.63, 536.586, 1077.41, 536, 1068.5, 536);
    bezierVertex(1059.59, 536, 1052.37, 536.586, 1052.37, 479.807);
    bezierVertex(1052.37, 423.028, 1059.59, 377, 1068.5, 377);
    bezierVertex(1077.41, 377, 1084.63, 423.028, 1084.63, 479.807);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(1112, 479.807);
    bezierVertex(1112, 536.586, 1104.78, 536, 1095.87, 536);
    bezierVertex(1086.96, 536, 1079.74, 536.586, 1079.74, 479.807);
    bezierVertex(1079.74, 423.028, 1086.96, 377, 1095.87, 377);
    bezierVertex(1104.78, 377, 1112, 423.028, 1112, 479.807);
    endShape();

    fill(217, 217, 217);
    beginShape();
    vertex(172.258, 482.084);
    bezierVertex(172.258, 551.718, 165.037, 551, 156.129, 551);
    bezierVertex(147.221, 551, 140, 551.718, 140, 482.084);
    bezierVertex(140, 412.45, 147.221, 356, 156.129, 356);
    bezierVertex(165.037, 356, 172.258, 412.45, 172.258, 482.084);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(172.258, 482.084);
    bezierVertex(172.258, 551.718, 165.037, 551, 156.129, 551);
    bezierVertex(147.221, 551, 140, 551.718, 140, 482.084);
    bezierVertex(140, 412.45, 147.221, 356, 156.129, 356);
    bezierVertex(165.037, 356, 172.258, 412.45, 172.258, 482.084);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(199.629, 482.084);
    bezierVertex(199.629, 551.718, 192.408, 551, 183.5, 551);
    bezierVertex(174.592, 551, 167.371, 551.718, 167.371, 482.084);
    bezierVertex(167.371, 412.45, 174.592, 356, 183.5, 356);
    bezierVertex(192.408, 356, 199.629, 412.45, 199.629, 482.084);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(227, 482.084);
    bezierVertex(227, 551.718, 219.779, 551, 210.871, 551);
    bezierVertex(201.963, 551, 194.742, 551.718, 194.742, 482.084);
    bezierVertex(194.742, 412.45, 201.963, 356, 210.871, 356);
    bezierVertex(219.779, 356, 227, 412.45, 227, 482.084);
    endShape();

    fill(217, 217, 217);
    beginShape();
    vertex(107.258, 494.807);
    bezierVertex(107.258, 551.586, 100.037, 551, 91.1292, 551);
    bezierVertex(82.2213, 551, 75, 551.586, 75, 494.807);
    bezierVertex(75, 438.028, 82.2213, 392, 91.1292, 392);
    bezierVertex(100.037, 392, 107.258, 438.028, 107.258, 494.807);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(107.258, 494.807);
    bezierVertex(107.258, 551.586, 100.037, 551, 91.1292, 551);
    bezierVertex(82.2213, 551, 75, 551.586, 75, 494.807);
    bezierVertex(75, 438.028, 82.2213, 392, 91.1292, 392);
    bezierVertex(100.037, 392, 107.258, 438.028, 107.258, 494.807);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(134.629, 494.807);
    bezierVertex(134.629, 551.586, 127.408, 551, 118.5, 551);
    bezierVertex(109.592, 551, 102.371, 551.586, 102.371, 494.807);
    bezierVertex(102.371, 438.028, 109.592, 392, 118.5, 392);
    bezierVertex(127.408, 392, 134.629, 438.028, 134.629, 494.807);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(162, 494.807);
    bezierVertex(162, 551.586, 154.779, 551, 145.871, 551);
    bezierVertex(136.963, 551, 129.742, 551.586, 129.742, 494.807);
    bezierVertex(129.742, 438.028, 136.963, 392, 145.871, 392);
    bezierVertex(154.779, 392, 162, 438.028, 162, 494.807);
    endShape();

    fill(217, 217, 217);
    beginShape();
    vertex(247.258, 498.341);
    bezierVertex(247.258, 551.549, 240.037, 551, 231.129, 551);
    bezierVertex(222.221, 551, 215, 551.549, 215, 498.341);
    bezierVertex(215, 445.133, 222.221, 402, 231.129, 402);
    bezierVertex(240.037, 402, 247.258, 445.133, 247.258, 498.341);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(247.258, 498.341);
    bezierVertex(247.258, 551.549, 240.037, 551, 231.129, 551);
    bezierVertex(222.221, 551, 215, 551.549, 215, 498.341);
    bezierVertex(215, 445.133, 222.221, 402, 231.129, 402);
    bezierVertex(240.037, 402, 247.258, 445.133, 247.258, 498.341);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(274.629, 498.341);
    bezierVertex(274.629, 551.549, 267.408, 551, 258.5, 551);
    bezierVertex(249.592, 551, 242.371, 551.549, 242.371, 498.341);
    bezierVertex(242.371, 445.133, 249.592, 402, 258.5, 402);
    bezierVertex(267.408, 402, 274.629, 445.133, 274.629, 498.341);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(302, 498.341);
    bezierVertex(302, 551.549, 294.779, 551, 285.871, 551);
    bezierVertex(276.963, 551, 269.742, 551.549, 269.742, 498.341);
    bezierVertex(269.742, 445.133, 276.963, 402, 285.871, 402);
    bezierVertex(294.779, 402, 302, 445.133, 302, 498.341);
    endShape();

    fill(217, 217, 217);
    beginShape();
    vertex(1122.26, 467.084);
    bezierVertex(1122.26, 536.718, 1115.04, 536, 1106.13, 536);
    bezierVertex(1097.22, 536, 1090, 536.718, 1090, 467.084);
    bezierVertex(1090, 397.45, 1097.22, 341, 1106.13, 341);
    bezierVertex(1115.04, 341, 1122.26, 397.45, 1122.26, 467.084);
    endShape();

    fill(17, 215, 13);
    beginShape();
    vertex(1122.26, 467.084);
    bezierVertex(1122.26, 536.718, 1115.04, 536, 1106.13, 536);
    bezierVertex(1097.22, 536, 1090, 536.718, 1090, 467.084);
    bezierVertex(1090, 397.45, 1097.22, 341, 1106.13, 341);
    bezierVertex(1115.04, 341, 1122.26, 397.45, 1122.26, 467.084);
    endShape();

    fill(13, 237, 9);
    beginShape();
    vertex(1149.63, 467.084);
    bezierVertex(1149.63, 536.718, 1142.41, 536, 1133.5, 536);
    bezierVertex(1124.59, 536, 1117.37, 536.718, 1117.37, 467.084);
    bezierVertex(1117.37, 397.45, 1124.59, 341, 1133.5, 341);
    bezierVertex(1142.41, 341, 1149.63, 397.45, 1149.63, 467.084);
    endShape();

    fill(20, 242, 16);
    beginShape();
    vertex(1177, 467.084);
    bezierVertex(1177, 536.718, 1169.78, 536, 1160.87, 536);
    bezierVertex(1151.96, 536, 1144.74, 536.718, 1144.74, 467.084);
    bezierVertex(1144.74, 397.45, 1151.96, 341, 1160.87, 341);
    bezierVertex(1169.78, 341, 1177, 397.45, 1177, 467.084);
    endShape();

    // Draw the octopus
    pushMatrix();
    if (octopusMovingRight) {
      translate(octopusX, 0);
    } else {
      translate(octopusX + 147, 0); // Width of octopus head
      scale(-1, 1);
    }
    drawOctopus();
    popMatrix();

    // Draw the fish
    pushMatrix();
    if (fishMovingLeft) {
      translate(fishX, 0);
      scale(-1, 1);
    } else {
      translate(fishX, 0);
    }
    drawFish();
    popMatrix();

    // Update positions
    octopusX += octopusMovingRight ? 5 : -5;
    if (octopusX > width - 147 || octopusX < 0) { // Width of octopus head
      octopusMovingRight = !octopusMovingRight;
    }

    fishX += fishMovingLeft ? -5 : 5;
    if (fishX > width || fishX < 0) {
      fishMovingLeft = !fishMovingLeft;
    }
  }

  void drawOctopus() {
    fill(223, 5, 214);
    ellipse(0, 312.5, 147, 155); // (73.5*2, 77.5*2)

    fill(223, 5, 214); // Pink color for the additional parts
    beginShape();
    vertex(-55.315, 414.5);
    bezierVertex(-63.158, 437.331, -34.315, 463.5, -46.156, 477);
    bezierVertex(-50.432, 475.531, -74.158, 426.331, -66.315, 403.5);
    bezierVertex(-58.472, 380.669, -50.432, 370.031, -46.156, 371.5);
    bezierVertex(-41.879, 372.969, -47.472, 391.669, -55.315, 414.5);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(22.568, 304.825, 51.568, 281.825);

    stroke(0);
    strokeWeight(3);
    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(37.494, 295.077);
    bezierVertex(38.571, 296.423, 39.027, 298.175, 38.763, 299.947);
    bezierVertex(38.499, 301.719, 37.536, 303.366, 36.086, 304.525);
    bezierVertex(34.636, 305.684, 32.817, 306.261, 31.031, 306.129);
    bezierVertex(29.244, 305.996, 27.636, 305.166, 26.559, 303.819);
    vertex(32.027, 299.448);
    vertex(37.494, 295.077);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(-55.676, 277.766, -13.676, 306.766);

    fill(0); // Black color for the eye
    ellipse(12, 347.5, 27, 31); // (13.5*2, 15.5*2)

    // Tentacles
    fill(223, 5, 214); // Pink color for the tentacles
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(36, 430);
    bezierVertex(36, 455.957, 28.761, 483.5, 26, 483.5);
    bezierVertex(23.238, 483.5, 26, 455.957, 26, 430);
    bezierVertex(26, 404.043, 28.238, 383, 31, 383);
    bezierVertex(33.761, 383, 36, 404.043, 36, 430);
    endShape();

    beginShape();
    vertex(-18, 431.5);
    bezierVertex(-18, 456.629, -14.962, 485.5, -18, 485.5);
    bezierVertex(-21.038, 485.5, -29, 456.629, -29, 431.5);
    bezierVertex(-29, 406.371, -21.038, 387, -18, 387);
    bezierVertex(-14.962, 387, -18, 406.371, -18, 431.5);
    endShape();

    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(-21.747, 303.355);
    bezierVertex(-22.725, 304.774, -24.271, 305.717, -26.044, 305.975);
    bezierVertex(-27.816, 306.234, -29.671, 305.787, -31.199, 304.733);
    bezierVertex(-32.728, 303.679, -33.805, 302.105, -34.194, 300.356);
    bezierVertex(-34.582, 298.607, -34.251, 296.828, -33.273, 295.408);
    vertex(-27.51, 299.382);
    vertex(-21.747, 303.355);
    endShape();

    fill(223, 5, 214); // Pink color for the tentacles
    beginShape();
    vertex(8, 434.5);
    bezierVertex(8, 459.077, 1.761, 485.5, -1, 485.5);
    bezierVertex(-3.761, 485.5, -1, 459.077, -1, 434.5);
    bezierVertex(-1, 409.923, 1.238, 389, 4, 389);
    bezierVertex(6.761, 389, 8, 409.923, 8, 434.5);
    endShape();

    beginShape();
    vertex(66.184, 421.5);
    bezierVertex(66.184, 448.01, 55.814, 481.5, 52.5, 481.5);
    bezierVertex(49.186, 481.5, 54.184, 448.01, 54.184, 421.5);
    bezierVertex(54.184, 394.99, 44.37, 371, 47.684, 371);
    bezierVertex(50.998, 371, 66.184, 394.99, 66.184, 421.5);
    endShape();

    // Small ellipses and circles
    fill(217, 217, 217); // Light gray color
    ellipse(-59, 408, 3, 2); // (1.5*2, 1*2)
    ellipse(-21, 471, 3, 2); // (1.5*2, 1*2)
    ellipse(-25, 424.5, 3, 3); // (1.5*2)
    ellipse(-56, 445.5, 3, 1); // (1.5*2, 0.5*2)
    ellipse(-21.5, 405.5, 2, 3); // (1*2, 1.5*2)
    ellipse(-24.5, 439, 2, 2); // (1*2)
    ellipse(-50.5, 462.5, 2, 1); // (1*2, 0.5*2)
    ellipse(2.5, 399.5, 2, 1); // (1*2, 0.5*2)
    ellipse(-23, 454, 3, 2); // (1.5*2, 1*2)
    ellipse(59, 439.5, 2, 3); // (1*2, 1.5*2)
    ellipse(55.5, 461.5, 1, 3); // (0.5*2, 1.5*2)
    ellipse(54.5, 392, 3, 2); // (1.5*2, 1*2)
    ellipse(27.5, 464, 1, 2); // (0.5*2, 1*2)
    ellipse(29, 421, 2, 2); // (1*2)
    rect(0, 454, 2, 2); // 2x2 rectangle
    ellipse(30.5, 394, 3, 2); // (1.5*2, 1*2)
    ellipse(1.5, 422.5, 3, 3); // (1.5*2)
    ellipse(29, 441.5, 2, 3); // (1*2, 1.5*2)
    ellipse(58.5, 418, 3, 2); // (1.5*2, 1*2)
    ellipse(-61, 427, 3, 2); // (1.5*2, 1*2)
  }

  void drawFish() {
    fill(248, 194, 5);
    beginShape();
    vertex(836.119, 357.61); // Ubah koordinat vertex untuk membalikkan arah
    bezierVertex(836.211, 366.069, 902.022, 382.1, 923.075, 381.702);
    bezierVertex(944.128, 381.304, 961.069, 369.462, 960.914, 355.252);
    bezierVertex(960.76, 341.042, 943.568, 329.845, 922.515, 330.243);
    bezierVertex(901.463, 330.64, 836.027, 349.15, 836.119, 357.61);
    endShape();

    stroke(0);
    strokeWeight(3);
    fill(227, 45, 45);
    beginShape();
    vertex(836.432, 357.505); // Ubah koordinat vertex untuk membalikkan arah
    vertex(822.543, 346.885);
    vertex(825.231, 357.445);
    vertex(822.477, 368.39);
    vertex(836.432, 357.505);
    endShape();

    beginShape();
    vertex(923.321, 310.025); // Ubah koordinat vertex untuk membalikkan arah
    vertex(921.528, 310.122);
    vertex(913.203, 329.346);
    vertex(914.032, 330.734);
    vertex(933.847, 332.315);
    vertex(934.81, 330.83);
    vertex(923.321, 310.025);
    endShape();

    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(923.754, 344.789); // Ubah koordinat vertex untuk membalikkan arah
    bezierVertex(927.58, 348.512, 927.231, 351.169, 923.754, 356.561);
    endShape();

    beginShape();
    vertex(910.055, 352.146); // Ubah koordinat vertex untuk membalikkan arah
    bezierVertex(913.881, 355.87, 913.531, 358.526, 910.055, 363.919);
    endShape();

    beginShape();
    vertex(907.315, 334.488); // Ubah koordinat vertex untuk membalikkan arah
    bezierVertex(911.141, 338.211, 910.791, 340.868, 907.315, 346.26);
    endShape();

    beginShape();
    vertex(888.129, 381); // Ubah koordinat vertex untuk membalikkan arah
    vertex(907.598, 371.681);
    vertex(898.784, 357.586);
    vertex(888.129, 381);
    endShape();

    fill(255);
    beginShape();
    vertex(957.616, 356.018); // Ubah koordinat vertex untuk membalikkan arah
    vertex(943.916, 356.561);
    vertex(943.916, 359.504);
    vertex(957.319, 359.504);
    vertex(957.616, 358.033);
    vertex(957.616, 356.018);
    endShape();

    fill(0); // Black color for the small eye
    ellipse(944.143, 342.43, 3.2, 4.218); // (1.60022*2, 2.10912*2)
  }
   void stopMusic9 () {
    music9.stop();
  }
}
