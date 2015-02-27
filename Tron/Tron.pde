PImage cursorPointer;
PFont tronTitleFont;
PFont subtitleFont;
String gameTitle;
String gameSubtitle;
color backgroundColor;
color titleColor;
color subtitleColor;
color rectLineColor;

void setup() {
  size(displayWidth, displayHeight, P3D);
  cursorPointer = loadImage("cursor_POINTER.png");
  tronTitleFont = createFont("tron_font.ttf", 1000, true);
  subtitleFont = createFont("subtitle_font.ttf", 1000, true);
  gameTitle = "Tron";
  gameSubtitle = "L'Obligation";
  titleColor = color(111, 195, 223);
  subtitleColor = color(223, 116, 12);
  backgroundColor = color(12, 23, 31);
  rectLineColor = titleColor;
  cursor(cursorPointer);
  textAlign(LEFT, TOP);
  smooth();
  frameRate(60);
}
  
void draw() {
  background(backgroundColor);
  lights();
  new Text().write(gameTitle, width / 2, 40, 140, true, titleColor, tronTitleFont);
  //new Text().write(gameSubtitle, width / 2 + 4, 162, 47, true, subtitleColor, subtitleFont);
  new Text().write(gameSubtitle, width / 2 + 4, 172, 60, true, subtitleColor, tronTitleFont);
  quad(width / 2, 155, width / 2 + 300, 160, width / 2, 165, width / 2 - 300, 160, rectLineColor, false, 0);
  box(150, 150, 150, 250, 250, 0);
}

void quad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color colour, boolean hasStroke, color strokeColor) {
  if(hasStroke) {
    stroke(strokeColor);
  } else {
    noStroke();
  }
  fill(colour);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void box(int width, int height, int depth, int x, int y, int z) {
  stroke(0);
  translate(x, y, z);
  rotateX(0.1);
  rotateY(1.0);
  box(width, height, depth);
}

boolean sketchFullScreen() {
  return true;
}
