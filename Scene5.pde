import processing.sound. *;
SoundFile music4;


class scene5 {
  int startFrame;
  boolean isFinished;

  float[] x1 = {159.03, 479.03, 143.009, 454.009, 237.009, 551.009, 714.009, 1009.01, 845.009, 900.009, 465.988};
  float[] y1 = {129.501, 220.501, 270.5, 376.5, 406.5, 527.5, 292.5, 293.5, 463.5, 165.5, 118.5};
  float[] x2 = {274.03, 594.03, 252.009, 563.009, 346.009, 660.009, 823.009, 1118.01, 954.009, 1009.01, 593.988};
  float[] y2 = {136.501, 227.501, 272.5, 378.5, 408.5, 529.5, 294.5, 295.5, 465.5, 167.5, 115.5};
  float speed = 5;
  float screenWidth = 1280;
  
      scene5(PApplet parent) {
    music4 = new SoundFile(parent, "asset/scene5.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    music4.play();
  }

  void draw() {
    int duration = 360; // Durasi dalam frame
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    // Gambar konten scene5 di sini
    background(81, 0, 253); // Warna latar belakang sesuai dengan fill pada elemen <rect> SVG

    // Gambar rectangle hijau dengan garis hitam
    fill(133, 253, 130);
    stroke(0);
    rect(486.756, 361.554, 219.435, 18.3837);

    // Gambar setengah lingkaran hijau
    fill(9, 168, 5);
    stroke(0);
    arc(596.473, 360.554, 220, 120, PI, TWO_PI);

    // Gambar path hijau lainnya
    beginShape();
    fill(9, 168, 5);
    vertex(610.55, 361.715);
    vertex(642.15, 409.692);
    vertex(577.492, 380.392);
    vertex(610.55, 361.715);
    endShape(CLOSE);

    // Gambar lingkaran hijau
    fill(9, 168, 5);
    ellipse(464.785, 368.929, 70, 70);

    // Gambar ellipse hitam
    fill(0);
    ellipse(450.471, 361.054, 2.8628, 2.42296);

    // Gambar path hijau lainnya
    beginShape();
    fill(9, 168, 5);
    vertex(669.237, 358.08);
    vertex(700.837, 406.057);
    vertex(636.179, 376.757);
    vertex(669.237, 358.08);
    endShape(CLOSE);

    //
    beginShape();
    fill(247, 175, 5);
    ellipse(517, 345, 30, 19);
    ellipse(561, 320, 30, 19);
    ellipse(607, 345, 30, 19);
    ellipse(670, 333, 30, 19);
    endShape();
    // Menggambar garis-garis yang bergerak dari kiri ke kanan di atas elemen-elemen lainnya
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
  }
  
     void stopMusic4 () {
    music4.stop();
  }
}
