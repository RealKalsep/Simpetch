PImage img;
int r = 255, g = 0, b = 0;
int c = 8;
int i = 0;
int j = 0;
int y1 = 0;
int y2 = 0;
int x1 = 0;
int x2 = 0;
int lastX = 0;
int lastY = 0;
int x = 0;
int y = 0;
float sec = second();
float min = minute();
float hour = hour();
float day = day();
float month = month();
float year = year();
int cch = 2;
void setup() {
  size(1280, 720);
  background(255);
  frameRate(1000);
}

void Rainbow() {
  if (r == 255 && g != 255 && b == 0) // r - y
    g+=c;
  if (g == 255 && r != 0 && b == 0)   // y - g
    r-=c;
  if (g == 255 && b != 255 && r == 0) // g - c
    b+=c;
  if (b == 255 && g != 0 && r == 0)   // c - b
    g-=c;
  if (b == 255 && r != 255 && g == 0) // b - m
    r+=c;
  if (r == 255 && b != 0 && g == 0)   // m - r
    b-=c;
    
  if (r >= 255)
    r = 255;
  if (g >= 255)
    g = 255;
  if (b >= 255)
    b = 255;
    
  if (r <= 0)
    r = 0;
  if (g <= 0)
    g = 0;
  if (b <= 0)
    b = 0;
  fill(r,g,b);
}

void screenshot() {
  cch = 0;
  if(cch == 0){
    if(key == '0'){
      save("drawing0.png");
      exit();
    }
    if(key == '1'){
      save("drawing1.png");
      exit();
    }
    if(key == '2'){
      save("drawing2.png");
      exit();
    }
    if(key == '3'){
      save("drawing3.png");
      exit();
    }
    if(key == '4'){
      save("drawing4.png");
      exit();
    }
    if(key == '5'){
      save("drawing5.png");
      exit();
    }
    if(key == '6'){
      save("drawing6.png");
      exit();
    }
    if(key == '7'){
      save("drawing7.png");
      exit();
    }
    if(key == '8'){
      save("drawing8.png");
      exit();
    }
    if(key == '9'){
      save("drawing9.png");
      exit();
    }
    cch = 2;
  }
}

void loadsketch() {
  cch = 1;
  if(cch == 1){
    if(key == '0'){
      img = loadImage("drawing0.png");
    }
    if(key == '1'){
      img = loadImage("drawing1.png");
    }
    if(key == '2'){
      img = loadImage("drawing2.png");
    }
    if(key == '3'){
      img = loadImage("drawing3.png");
    }
    if(key == '4'){
      img = loadImage("drawing4.png");
    }
    if(key == '5'){
      img = loadImage("drawing6.png");
    }
    if(key == '6'){
      img = loadImage("drawing6.png");
    }
    if(key == '7'){
      img = loadImage("drawing7.png");
    }
    if(key == '8'){
      img = loadImage("drawing8.png");
    }
    if(key == '9'){
      img = loadImage("drawing9.png");
    }
  cch = 2;
  image(img, 0, 0, 1280, 720);
}}

void draw() {
  stroke(1);
  fill(255);
  rect(0, 0, 1280, 15);
  textSize(12);
  fill(0);
  text("SIMPETCH MENU: 0=black, 1=red, 2=green, 3=blue, 4=yellow, 5=cyan, 6=pink, 7=purple, 8=orange, 9=brown, r=rainbow, c=clear + click, e=eraser, s=save + number, l=load, made by Kalsep + Stewe in Java", 15, 12);
  textSize(8);
  int fps = round(frameRate);
  text(fps, 1, 8);
  i = 0;
  //print("FPS:", fps, "                                                                                     ");
  if(cch == 2) {
    if (mousePressed) {
      if (key == '0') {
        stroke(0);
      }
      if (key == '1') {
        stroke(255, 0, 0);
      }
      if (key == '2') {
        stroke(0, 255, 0);
      }
      if (key == '3') {
        stroke(0, 0, 255);
      }
      if (key == '4') {
        stroke(255, 255, 0);
      }
      if (key == '5') {
        stroke(0, 255, 255);
      }
      if (key == '6') {
        stroke(255, 0, 255);
      }
      if (key == '7') {
        stroke(100, 0, 100);
      }
      if (key == '8') {
        stroke(255, 165, 0);
      }
      if (key == '9') {
        stroke(165, 42, 42);
      }
      if (key == 'r') {
        Rainbow();
        stroke(r,g,b);
      }
      if (key == 'e') {
        noStroke();
        fill(255);
        ellipse(mouseX, mouseY, 20, 20);
      }
    line(mouseX, mouseY, pmouseX, pmouseY);
    line(mouseX+1, mouseY+1, pmouseX+1, pmouseY+1);
    line(mouseX-1, mouseY-1, pmouseX-1, pmouseY-1);
  }   
  if (key == 'c') {
    noStroke();
    fill(255);
    rect(0, 16, 1280, 720);
  }
  if (key == 's') {
    screenshot();
  }
  if (key == 'l') {
    loadsketch();
  }
}}
