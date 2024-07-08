class scene1 {
  SoundFile intro;
  int startFrame;
  boolean isFinished;

  // Tambahkan variabel untuk posisi dan kecepatan ikan
  float fishX1 = 934.066;
  float fishY1 = 179.526;
  float fishX2 = 378.066;
  float fishY2 = 366.526;
  float fishX3 = 713.066;
  float fishY3 = 255.526;
  float fishX4 = 892.066;
  float fishY4 = 376.526;
  float fishX5 = 156.066;
  float fishY5 = 255.526;
  float fishX6 = 574.066;
  float fishY6 = 157.526;

  float fishSpeedX1 = 1.0;
  float fishSpeedY1 = 0.5;
  float fishSpeedX2 = 1.2;
  float fishSpeedY2 = 0.4;
  float fishSpeedX3 = 1.1;
  float fishSpeedY3 = 0.6;
  float fishSpeedX4 = 1.3;
  float fishSpeedY4 = 0.3;
  float fishSpeedX5 = 1.4;
  float fishSpeedY5 = 0.7;
  float fishSpeedX6 = 1.0;
  float fishSpeedY6 = 0.5;
  
  scene1(PApplet parent) {
    intro = new SoundFile(parent, "asset/intro.mp3");

  }
  void setup() {
    startFrame = frameCount;
    isFinished = false;
    intro.play();
  }

  void draw() {
    int duration = 750; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    // Gambar konten scene1 di sini
    drawSVGContent();
  }

  void drawSVGContent() {
    int canvasWidth = 1280;
    int canvasHeight = 720;

  // Draw the background rectangles and other shapes as before...
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


    // Update fish positions for animation
    fishX1 += fishSpeedX1;
    fishY1 += fishSpeedY1;
    if (fishX1 > canvasWidth) fishX1 = 0;
    if (fishY1 > canvasHeight) fishY1 = 0;

    fishX2 += fishSpeedX2;
    fishY2 += fishSpeedY2;
    if (fishX2 > canvasWidth) fishX2 = 0;
    if (fishY2 > canvasHeight) fishY2 = 0;

    fishX3 += fishSpeedX3;
    fishY3 += fishSpeedY3;
    if (fishX3 > canvasWidth) fishX3 = 0;
    if (fishY3 > canvasHeight) fishY3 = 0;

    fishX4 += fishSpeedX4;
    fishY4 += fishSpeedY4;
    if (fishX4 > canvasWidth) fishX4 = 0;
    if (fishY4 > canvasHeight) fishY4 = 0;

    fishX5 += fishSpeedX5;
    fishY5 += fishSpeedY5;
    if (fishX5 > canvasWidth) fishX5 = 0;
    if (fishY5 > canvasHeight) fishY5 = 0;

    fishX6 += fishSpeedX6;
    fishY6 += fishSpeedY6;
    if (fishX6 > canvasWidth) fishX6 = 0;
    if (fishY6 > canvasHeight) fishY6 = 0;

    // Draw fishes
    drawFish(fishX1, fishY1, color(217, 217, 217), color(0));
    drawFish(fishX2, fishY2, color(183, 245, 8), color(0));
    drawFish(fishX3, fishY3, color(238, 148, 13), color(0));
    drawFish(fishX4, fishY4, color(12, 230, 47), color(0));
    drawFish(fishX5, fishY5, color(215, 62, 62), color(0));
    drawFish(fishX6, fishY6, color(193, 12, 209), color(0));
  }

  void drawFish(float x, float y, color bodyColor, color eyeColor) {
    // Body
    fill(bodyColor);
    ellipse(x, y, 52, 35);
    // Tail
    triangle(x - 23.206, y, x - 48.591, y + 10.159, x - 48.602, y - 10.079);
    // Eye
    fill(eyeColor);
    ellipse(x + 15.562, y - 2.921, 7, 6);
  }
  
  void stopMusic() {
    intro.stop();
  }
}
