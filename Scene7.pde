import processing.sound. *;
SoundFile music6;

class scene7 {
  int startFrame;
  boolean isFinished;
  
  // Variabel yang diperlukan untuk animasi garis
  float[] x1 = {159.03, 479.03, 143.009, 454.009, 237.009, 551.009, 714.009, 1009.01, 845.009, 900.009, 465.988};
  float[] y1 = {129.501, 220.501, 270.5, 376.5, 406.5, 527.5, 292.5, 293.5, 463.5, 165.5, 118.5};
  float[] x2 = {274.03, 594.03, 252.009, 563.009, 346.009, 660.009, 823.009, 1118.01, 954.009, 1009.01, 593.988};
  float[] y2 = {136.501, 227.501, 272.5, 378.5, 408.5, 529.5, 294.5, 295.5, 465.5, 167.5, 115.5};
  float speed = 5;
  float screenWidth = 1280;
  
   scene7(PApplet parent) {
    music6 = new SoundFile(parent, "asset/setelahpenyu.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music6.play();
  }
  

  void draw() {
    int duration = 360; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    // Latar belakang sesuai dengan fill pada elemen <rect> SVG
    background(81, 0, 253);

    // Menggambar konten static
    noStroke();
    fill(81, 0, 253);
    rect(0, 0, 1280, 720);

    // Menggambar garis-garis yang bergerak dari kiri ke kanan
    stroke(0); // Warna garis hitam
    strokeWeight(3);
    for (int i = 0; i < x1.length; i++) {
      float xOffset = (frameCount * speed) % screenWidth; // Menghitung posisi relatif terhadap layar

      // Jika garis melewati batas kanan layar, geser kembali ke kiri layar
      if (x1[i] + xOffset > screenWidth) {
        xOffset -= screenWidth;
      }

      line(x1[i] + xOffset, y1[i], x2[i] + xOffset, y2[i]);
    }

    // Menggambar elemen statis lainnya
    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(604.235, 238.65);
    bezierVertex(604.098, 237.745, 605.285, 237.272, 605.998, 237.948);
    vertex(652.955, 282.439);
    bezierVertex(653.417, 282.877, 653.366, 283.562, 652.848, 283.878);
    vertex(616.028, 306.36);
    bezierVertex(615.39, 306.749, 614.481, 306.344, 614.372, 305.622);
    endShape(CLOSE);

    fill(248, 194, 5);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(486.993, 319.053);
    bezierVertex(487.157, 305.325, 609.229, 279.261, 648.284, 279.892);
    bezierVertex(687.339, 280.523, 718.776, 299.73, 718.501, 322.793);
    bezierVertex(718.225, 345.855, 686.342, 364.04, 647.287, 363.409);
    bezierVertex(608.232, 362.778, 486.829, 332.782, 486.993, 319.053);
    endShape(CLOSE);

    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(491.896, 319.221);
    vertex(466.14, 336.467);
    vertex(471.118, 319.326);
    vertex(466, 301.565);
    endShape(CLOSE);

    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(2.96843, 3.42307, 5.93686, 6.84614);

    // Menggambar strokes
    fill(255);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(662.664, 327.527);
    vertex(669.758, 321.482);
    vertex(669.108, 317.17);
    vertex(662.654, 308.421);
    endShape();

    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(640.403, 308.052);
    vertex(647.497, 302.006);
    vertex(646.847, 297.695);
    vertex(640.393, 288.946);
    endShape();

    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(643.554, 340.298);
    vertex(650.649, 334.252);
    vertex(649.998, 329.941);
    vertex(643.545, 321.192);
    endShape();

    stroke(0);
    strokeWeight(3);
    fill(227, 45, 45);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(590.018, 327.796);
    vertex(622.1, 306.834);
    vertex(637.665, 330.125);
    endShape(CLOSE);

    fill(255);
    stroke(0);
    strokeWeight(3);
    beginShape();
    vertex(718.299, 329.665);
    vertex(692.884, 328.793);
    vertex(692.882, 324.016);
    vertex(717.746, 324.007);
    vertex(718.298, 326.395);
    endShape(CLOSE);

    // Menggambar mata putih untuk ikan
    fill(0);
    stroke(0);
    strokeWeight(3);
    ellipse(698, 310, 10, 10);
  }
    void stopMusic6 () {
    music6.stop();
  }
}
