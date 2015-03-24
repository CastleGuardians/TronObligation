import controlP5.*;
import saito.objloader.*;

// Initialisation de toutes les variables
PImage cursorPointer;
PImage cursorTron;
PImage cursorTronClicked;
PFont tronTitleFont;
PFont subtitleFont;
String gameTitle;
String gameSubtitle;
color backgroundColor;
color titleColor;
color subtitleColor;
color rectLineColor;
static Tron tron;
static color defaultColor = 255;

static ArrayList<Gui> guis = new ArrayList<Gui>();

// Fonction de démarrage de processing
void setup() {
  // Initialisation de la taille de du programme, (largeur de l'écran, hauteur de l'écran) et indication que nous travaillons en 3D
  size(displayWidth, displayHeight, P3D);
  // On charge l'image du pointeur, et les polices du titre et du sous-titre
  cursorPointer = loadImage("cursor_POINTER.png");
  cursorTron = loadImage("cursor_TRON.png");
  cursorTronClicked = loadImage("cursor_TRON_CLICKED.png");
  tronTitleFont = createFont("tron_font.ttf", 200, true);
  subtitleFont = createFont("subtitle_font.ttf", 200, true);
  // Titre du jeu et son sous titre
  gameTitle = "Tron";
  gameSubtitle = "La menace fantôme";
  // Initialisation des couleurs
  titleColor = color(111, 195, 223);
  subtitleColor = color(223, 116, 12);
  backgroundColor = color(12, 23, 31);
  rectLineColor = titleColor;
  // Assignation de l'image du curseur
  cursor(cursorTron, 0, 0);
  // On indique que la position du texte se fait par rapport au haut à gauche
  textAlign(LEFT, TOP);
  // On enlève les bordures des éléments
  noStroke();
  // On enlève l'éclairage des éléments
  noLights();
  // On active l'antialiasing x4
  smooth(4);
  tron = this;
  new GuiMainMenu(true);
}

// Cette fonction est appelée à chaque frame du jeu
void draw() {
  // On dessine le fond à chaque frame
  background(backgroundColor);
  for(int a = 0; a < guis.size(); a++) {
    if(guis.get(a).isRendered()) {
      guis.get(a).render();
    }
  }
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
  stroke(rectLineColor);
  pushMatrix();
  translate(x, y, z);
  rotateX(0.5);
  rotateY(0.5);
  box(width, height, depth);
  popMatrix();
}

void keyPressed() {
  
}

void mousePressed() {
  cursor(cursorTronClicked, 0, 0);
}

void mouseReleased() {
  cursor(cursorTron, 0, 0);
}

// Fonction de processing qui retourne si le programme est en plein écran ou non
boolean sketchFullScreen() {
  return false;
}
