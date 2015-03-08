import saito.objloader.*;

PImage cursorPointer;
PFont tronTitleFont;
PFont subtitleFont;
String gameTitle;
String gameSubtitle;
color backgroundColor;
color titleColor;
color subtitleColor;
color rectLineColor;
static color defaultColor = 255;

void setup() {
  size(1000, 850, P3D);
  cursorPointer = loadImage("cursor_POINTER.png");
  tronTitleFont = createFont("tron_font.ttf", 200, true);
  //subtitleFont = createFont("subtitle_font.ttf", 200, true);
  gameTitle = "Tron";
  gameSubtitle = "L'Obligation";
  titleColor = color(111, 195, 223);
  subtitleColor = color(223, 116, 12);
  backgroundColor = color(12, 23, 31);
  rectLineColor = titleColor;
  cursor(cursorPointer);
  textAlign(LEFT, TOP);
  noStroke();
  noLights();
  smooth(4);
}
  
void draw() {
  background(backgroundColor);
  new Text().write(gameTitle, width / 2, 40, 140, true, titleColor, tronTitleFont);
  //new Text().write(gameSubtitle, width / 2 + 4, 162, 47, true, subtitleColor, subtitleFont);
  new Text().write(gameSubtitle, width / 2 + 4, 172, 60, true, subtitleColor, tronTitleFont);
  quad(width / 2, 155, width / 2 + 300, 160, width / 2, 165, width / 2 - 300, 160, rectLineColor, false, 0);
  lights();
  box(150, 150, 150, 250, 350, 0);
  box(150, 150, 150, 450, 350, 0);
  box(150, 150, 150, 250, 550, 120);
  box(150, 150, 150, 600, 350, -100);
  noLights();
}

void quad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color colour, boolean hasStroke, color strokeColor) {
  if(hasStroke) {
    stroke(strokeColor);
  } else {
    noStroke();
  }
  fill(colour);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
  fill(defaultColor);
  noStroke();
}

void box(int width, int height, int depth, int x, int y, int z) {
  pushMatrix();
  translate(x, y, z);
  rotateX(0.1);
  rotateY(1.0);
  box(width, height, depth);
  popMatrix();
}

void keyPressed() {
  
}

boolean sketchFullScreen() {
  return false;
}
