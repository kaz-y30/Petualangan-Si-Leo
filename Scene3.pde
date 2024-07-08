import processing.sound. *;
SoundFile music2;


class scene3 {
  int startFrame;
  boolean isFinished;

  // Variabel yang diperlukan untuk animasi garis
  float[] x1 = {159.03, 479.03, 143.009, 454.009, 237.009, 551.009, 714.009, 1009.01, 845.009, 900.009, 465.988};
  float[] y1 = {129.501, 220.501, 270.5, 376.5, 406.5, 527.5, 292.5, 293.5, 463.5, 165.5, 118.5};
  float[] x2 = {274.03, 594.03, 252.009, 563.009, 346.009, 660.009, 823.009, 1118.01, 954.009, 1009.01, 593.988};
  float[] y2 = {136.501, 227.501, 272.5, 378.5, 408.5, 529.5, 294.5, 295.5, 465.5, 167.5, 115.5};
  float speed = 5;
  float screenWidth = 1280;

  scene3(PApplet parent) {
    music2 = new SoundFile(parent, "asset/scene3.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music2.play();
  }

  void draw() {
    int duration = 360; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    background(81, 0, 253); // Warna latar belakang sesuai dengan fill pada elemen <rect> SVG
    stroke(0); // Warna garis hitam
    strokeWeight(3);

    // Menggambar garis-garis yang bergerak dari kiri ke kanan
    for (int i = 0; i < x1.length; i++) {
      float xOffset = (frameCount * speed) % screenWidth; // Menghitung posisi relatif terhadap layar

      // Jika garis melewati batas kanan layar, geser kembali ke kiri layar
      if (x1[i] + xOffset > screenWidth) {
        xOffset -= screenWidth;
      }

      line(x1[i] + xOffset, y1[i], x2[i] + xOffset, y2[i]);
    }
  }
  
    void stopMusic2 () {
    music2.stop();
  }
}
