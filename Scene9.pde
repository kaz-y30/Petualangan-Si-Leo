import processing.sound. *;
SoundFile music8;

class scene9 {
  int startFrame;
  boolean isFinished;

     scene9(PApplet parent) {
    music8 = new SoundFile(parent, "asset/guritascene.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music8.play();
  }

  void draw() {
    int duration = 1980; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    // Gambar konten scene9 di sini
    background(255); // Contoh latar belakang putih
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
    fill(223, 5, 214);
    ellipse(545.771, 312.5, 147, 155); // (73.5*2, 77.5*2)

    fill(223, 5, 214); // Pink color for the additional parts
    beginShape();
    vertex(490.456, 414.5);
    bezierVertex(482.613, 437.331, 511.456, 463.5, 499.615, 477);
    bezierVertex(495.339, 475.531, 471.613, 426.331, 479.456, 403.5);
    bezierVertex(487.299, 380.669, 495.339, 370.031, 499.615, 371.5);
    bezierVertex(503.892, 372.969, 498.299, 391.669, 490.456, 414.5);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(568.339, 304.825, 597.339, 281.825);

    stroke(0);
    strokeWeight(3);
    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(583.265, 295.077);
    bezierVertex(584.342, 296.423, 584.798, 298.175, 584.534, 299.947);
    bezierVertex(584.27, 301.719, 583.307, 303.366, 581.857, 304.525);
    bezierVertex(580.407, 305.684, 578.588, 306.261, 576.802, 306.129);
    bezierVertex(575.015, 305.996, 573.407, 305.166, 572.33, 303.819);
    vertex(577.798, 299.448);
    vertex(583.265, 295.077);
    endShape();

    stroke(98, 0, 144); // Dark purple color for the lines
    strokeWeight(3);
    line(489.124, 277.766, 531.124, 306.766);

    fill(0); // Black color for the eye
    ellipse(557.771, 347.5, 27, 31); // (13.5*2, 15.5*2)

    // Tentacles
    fill(223, 5, 214); // Pink color for the tentacles
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(581.272, 430);
    bezierVertex(581.272, 455.957, 574.033, 483.5, 571.271, 483.5);
    bezierVertex(568.51, 483.5, 571.272, 455.957, 571.272, 430);
    bezierVertex(571.272, 404.043, 573.51, 383, 576.272, 383);
    bezierVertex(579.033, 383, 581.272, 404.043, 581.272, 430);
    endShape();

    beginShape();
    vertex(527.271, 431.5);
    bezierVertex(527.271, 456.629, 530.309, 485.5, 527.271, 485.5);
    bezierVertex(524.234, 485.5, 516.271, 456.629, 516.271, 431.5);
    bezierVertex(516.271, 406.371, 524.234, 387, 527.271, 387);
    bezierVertex(530.309, 387, 527.271, 406.371, 527.271, 431.5);
    endShape();

    fill(183, 7, 7); // Red color for the highlights
    beginShape();
    vertex(523.523, 303.355);
    bezierVertex(522.545, 304.774, 520.999, 305.717, 519.226, 305.975);
    bezierVertex(517.454, 306.234, 515.599, 305.787, 514.071, 304.733);
    bezierVertex(512.542, 303.679, 511.465, 302.105, 511.076, 300.356);
    bezierVertex(510.688, 298.607, 511.019, 296.828, 511.997, 295.408);
    vertex(517.76, 299.382);
    vertex(523.523, 303.355);
    endShape();

    fill(223, 5, 214); // Pink color for the tentacles
    beginShape();
    vertex(553.271, 434.5);
    bezierVertex(553.271, 459.077, 546.033, 485.5, 543.271, 485.5);
    bezierVertex(540.51, 485.5, 543.271, 459.077, 543.271, 434.5);
    bezierVertex(543.271, 409.923, 545.51, 389, 548.271, 389);
    bezierVertex(551.033, 389, 553.271, 409.923, 553.271, 434.5);
    endShape();

    beginShape();
    vertex(611.455, 421.5);
    bezierVertex(611.455, 448.01, 601.085, 481.5, 597.771, 481.5);
    bezierVertex(594.458, 481.5, 599.455, 448.01, 599.455, 421.5);
    bezierVertex(599.455, 394.99, 589.641, 371, 592.955, 371);
    bezierVertex(596.269, 371, 611.455, 394.99, 611.455, 421.5);
    endShape();

    // Small ellipses and circles
    fill(217, 217, 217); // Light gray color
    ellipse(486.771, 408, 3, 2); // (1.5*2, 1*2)
    ellipse(524.771, 471, 3, 2); // (1.5*2, 1*2)
    ellipse(520.771, 424.5, 3, 3); // (1.5*2)
    ellipse(489.771, 445.5, 3, 1); // (1.5*2, 0.5*2)
    ellipse(524.271, 405.5, 2, 3); // (1*2, 1.5*2)
    ellipse(521.271, 439, 2, 2); // (1*2)
    ellipse(495.271, 462.5, 2, 1); // (1*2, 0.5*2)
    ellipse(548.271, 399.5, 2, 1); // (1*2, 0.5*2)
    ellipse(522.771, 454, 3, 2); // (1.5*2, 1*2)
    ellipse(605.271, 439.5, 2, 3); // (1*2, 1.5*2)
    ellipse(601.771, 461.5, 1, 3); // (0.5*2, 1.5*2)
    ellipse(600.771, 392, 3, 2); // (1.5*2, 1*2)
    ellipse(573.771, 464, 1, 2); // (0.5*2, 1*2)
    ellipse(575.271, 421, 2, 2); // (1*2)
    rect(546.271, 454, 2, 2); // 2x2 rectangle
    ellipse(576.771, 394, 3, 2); // (1.5*2, 1*2)
    ellipse(547.771, 422.5, 3, 3); // (1.5*2)
    ellipse(575.271, 441.5, 2, 3); // (1*2, 1.5*2)
    ellipse(604.771, 418, 3, 2); // (1.5*2, 1*2)
    ellipse(484.771, 427, 3, 2); // (1.5*2, 1*2)

    // Yellow shape
    fill(248, 194, 5);
    beginShape();
    vertex(923.075, 357.61);
    bezierVertex(922.983, 366.069, 857.172, 382.1, 836.119, 381.702);
    bezierVertex(815.066, 381.304, 798.125, 369.462, 798.28, 355.252);
    bezierVertex(798.434, 341.042, 815.626, 329.845, 836.679, 330.243);
    bezierVertex(857.731, 330.64, 923.167, 349.15, 923.075, 357.61);
    endShape();

    // Red shapes
    stroke(0);
    strokeWeight(3);
    fill(227, 45, 45);
    beginShape();
    vertex(920.432, 357.505);
    vertex(934.321, 346.885);
    vertex(931.633, 357.445);
    vertex(934.387, 368.39);
    vertex(920.432, 357.505);
    endShape();

    beginShape();
    vertex(832.683, 310.025);
    vertex(834.476, 310.122);
    vertex(842.801, 329.346);
    vertex(841.972, 330.734);
    vertex(822.157, 332.315);
    vertex(821.194, 330.83);
    vertex(832.683, 310.025);
    endShape();

    // White strokes
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(832.25, 344.789);
    bezierVertex(828.424, 348.512, 828.773, 351.169, 832.25, 356.561);
    endShape();

    beginShape();
    vertex(845.949, 352.146);
    bezierVertex(842.123, 355.87, 842.473, 358.526, 845.949, 363.919);
    endShape();

    beginShape();
    vertex(848.689, 334.488);
    bezierVertex(844.863, 338.211, 845.213, 340.868, 848.689, 346.26);
    endShape();

    beginShape();
    vertex(867.875, 381);
    vertex(848.406, 371.681);
    vertex(857.22, 357.586);
    vertex(867.875, 381);
    endShape();

    fill(255);
    beginShape();
    vertex(798.388, 356.018);
    vertex(812.088, 356.561);
    vertex(812.088, 359.504);
    vertex(798.685, 359.504);
    vertex(798.388, 358.033);
    vertex(798.388, 356.018);
    endShape();

    fill(0); // Black color for the small eye
    ellipse(811.861, 342.43, 3.2, 4.218); // (1.60022*2, 2.10912*2)
  }
  
   void stopMusic8 () {
    music8.stop();
  }
}
