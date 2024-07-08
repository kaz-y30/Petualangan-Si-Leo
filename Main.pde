import processing.sound. *;

scene1 scene1;
scene2 scene2;
scene3 scene3;
scene4 scene4;
scene5 scene5;
scene6 scene6;
scene7 scene7;
scene8 scene8;
scene9 scene9;
scene10 scene10;
scene11 scene11;
scene12 scene12;
int currentScene = 0;

void setup() {
  size(1280, 720);
  scene1 = new scene1(this);
  scene2 = new scene2(this);
  scene3 = new scene3(this);
  scene4 = new scene4(this);
  scene5 = new scene5(this);
  scene6 = new scene6(this);
  scene7 = new scene7(this);
  scene8 = new scene8(this);
  scene9 = new scene9(this);
  scene10 = new scene10(this);
  scene11 = new scene11(this);
  scene12 = new scene12(this);
  scene1.setup();
  frameRate(60);
}

void draw() {
  background(0);
  switch (currentScene) {
    case 0:
      scene1.draw();
      if (scene1.isFinished) {
        currentScene = 1;
        scene1.stopMusic();
        scene2.setup();
      }
      break;
    case 1:
      scene2.draw();
      if (scene2.isFinished) {
        currentScene = 2;
        scene2.stopMusic1();
        scene3.setup();
      }
      break;
    case 2:
      scene3.draw();
      if (scene3.isFinished) {
        currentScene = 3;
        scene3.stopMusic2();
        scene4.setup();
      }
      break;
    case 3:
      scene4.draw();
      if (scene4.isFinished) {
        currentScene = 4;
        scene4.stopMusic3();
        scene5.setup();
      }
      break;
    case 4:
      scene5.draw();
      if (scene5.isFinished) {
        currentScene = 5;
        scene5.stopMusic4();
        scene6.setup();
      }
      break;
    case 5:
      scene6.draw();
      if (scene6.isFinished) {
        currentScene = 6;
        scene6.stopMusic5();
        scene7.setup();
      }
      break;
    case 6:
      scene7.draw();
      if (scene7.isFinished) {
        currentScene = 7;
        scene7.stopMusic6();
        scene8.setup();
      }
      break;
    case 7:
      scene8.draw();
      if (scene8.isFinished) {
        currentScene = 8;
        scene8.stopMusic7();
        scene9.setup();
      }
      break;
    case 8:
      scene9.draw();
      if (scene9.isFinished) {
        currentScene = 9;
        scene9.stopMusic8();
        scene10.setup();
      }
      break;
       case 9:
      scene10.draw();
      if (scene10.isFinished) {
        currentScene = 10;
        scene10.stopMusic9();
        scene11.setup();
      }
      break;
      case 10:
      scene11.draw();
      if (scene11.isFinished) {
        currentScene = 11;
        scene11.stopMusic10();
        scene12.setup();
      }
      break;
    case 11:
      scene12.draw();
      if (scene12.isFinished) {
        scene12.stopMusic11();
        exit();
      }
      break;
  }
}
