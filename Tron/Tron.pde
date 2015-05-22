import peasy.*;
import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

import ddf.minim.effects.*;
import ddf.minim.analysis.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.*;
import ddf.minim.ugens.*;

import peasy.*;
import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

import controlP5.*;
import saito.objloader.*;

// Initialisation de toutes les variables
PImage cursorPointer;
PImage cursorTron;
PImage cursorTronClicked;
PImage arrowLeft;
PFont tronTitleFont;
PFont subtitleFont;
PFont textFont;
String gameTitle;
String gameSubtitle;
color backgroundColor;
color titleColor;
color subtitleColor;
color rectLineColor;
static Tron tron;
static color defaultColor = 255;
int mouseDX;
int mouseDY;
static final float ONE_DEGREE_RADIAN = 0.1745;

Minim minim;
AudioPlayer menuMusicBaseLayer;
AudioPlayer menuMusicSecondLayer;
AudioPlayer menuMusicTopLayer;

// Overlay
ButtonImage backButton;

static ArrayList<Gui> guis = new ArrayList<Gui>();
static ArrayList<String> guiHistory = new ArrayList<String>();

// Fonction de démarrage de processing
void setup() {
  // Initialisation de la taille de du programme, (largeur de l'écran, hauteur de l'écran) et indication que nous travaillons en 3D
  size(displayWidth, displayHeight, P3D);
  // On charge l'image du pointeur, et les polices du titre et du sous-titre
  cursorPointer = loadImage("textures/cursor_POINTER.png");
  cursorTron = loadImage("textures/cursor_TRON.png");
  cursorTronClicked = loadImage("textures/cursor_TRON_CLICKED.png");
  arrowLeft = loadImage("textures/arrow_left.png");
  tronTitleFont = createFont("fonts/tron_font.ttf", 200, true);
  subtitleFont = createFont("fonts/subtitle_font.ttf", 200, true);
  textFont = createFont("fonts/Chromia.otf", 100, true);
  // Titre du jeu et son sous titre
  gameTitle = "Tron";
  gameSubtitle = "La menace fantôme";
  // Initialisation des couleurs
  titleColor = color(111, 195, 223);
  subtitleColor = color(223, 116, 12);
  backgroundColor = color(12, 23, 31);
  rectLineColor = titleColor;
  backButton = new ButtonImage(arrowLeft, 225, 0, 60, 60, 42, 42, color(255, 255, 255, 0), color(0, 57, 57), color(0, 67, 67));
  //
  minim = new Minim(this);
  menuMusicBaseLayer = minim.loadFile("/Sounds/TEAM_BUILDER_BASE_LAYER.mp3", 2048);
  menuMusicSecondLayer = minim.loadFile("/Sounds/TEAM_BUILDER_SECOND_LAYER.mp3", 2048);
  menuMusicTopLayer = minim.loadFile("/Sounds/TEAM_BUILDER_TOP_LAYER.mp3", 2048);
 // menuMusicBaseLayer.loop();
  //menuMusicSecondLayer.loop();
  //menuMusicTopLayer.loop();
  
  // Assignation de l'image du curseur
  cursor(cursorTron, 0, 0);
  // On indique que la position du texte se fait par rapport au haut à gauche
  textAlign(LEFT, TOP);
  // On enlève les bordures des éléments
  noStroke();
  // On enlève l'éclairage des éléments
  noLights();
  // On active l'antialiasing x4
  smooth(0);
  tron = this;
  // On instancie l'interface principale
  new GuiMainMenu(true);
}

// Cette fonction est appelée à chaque frame du jeu
void draw() {
  mouseDX = mouseX - pmouseX;
  mouseDY = mouseY - pmouseY;
  // On dessine le fond à chaque frame
  background(backgroundColor);
  for (int a = 0; a < guis.size (); a++) {
    // Si l'interface doit être rendue
    if (guis.get(a).isRendered()) {
      if(guis.get(a).isPlayingMenuMusic()) {
        if(!menuMusicBaseLayer.isPlaying()) {
          menuMusicBaseLayer.loop();
        } else {
          if(guis.get(a).menuMusicLayerToPLay().equals("TOP")) {
            if(!menuMusicTopLayer.isPlaying()) {
              menuMusicTopLayer.play();
              menuMusicTopLayer.cue(menuMusicBaseLayer.position());
            } else {
              if(((float)menuMusicBaseLayer.position() / (float)menuMusicTopLayer.position()) < 0.95f || ((float)menuMusicBaseLayer.position() / (float)menuMusicTopLayer.position()) > 1.05f) {
                menuMusicTopLayer.play(menuMusicBaseLayer.position());
              }
            }
          } else {
            menuMusicTopLayer.pause();
          }
          if(guis.get(a).menuMusicLayerToPLay().equals("SECOND")) {
            if(!menuMusicSecondLayer.isPlaying()) {
              menuMusicSecondLayer.play();
              menuMusicSecondLayer.cue(menuMusicBaseLayer.position());
            } else {
              if(((float)menuMusicBaseLayer.position() / (float)menuMusicSecondLayer.position()) < 0.95f || ((float)menuMusicBaseLayer.position() / (float)menuMusicSecondLayer.position()) > 1.05f) {
                menuMusicSecondLayer.play(menuMusicBaseLayer.position());
              }
            }
          } else {
            menuMusicSecondLayer.pause();
          }
        }
      }
      // On la rend
      guis.get(a).render();
      // Si l'overlay de menu doit s'afficher
      if (guis.get(a).renderOverlayMenu()) {
        // On affiche l'overlay
        overlayMenu(guis.get(a));
      }
    }
  }
}

// Fonction de l'overlay
void overlayMenu(Gui gui) {
  rect(width, 60, 0, 0, color(0, 47, 47), false, 0);
  rect(5, 60, 220, 0, backgroundColor, false, 0);
  rect(5, 60, 285, 0, backgroundColor, false, 0);
  new Text().write(String.valueOf(frameRate).substring(0, 2) + " fps", width - 75, 5, 20, false, titleColor, textFont);
  new Text().write(gameTitle, 10, 4, 65, false, titleColor, tronTitleFont);
  new Text().write(gui.getTitle(), width / 2 - ((int)textWidth(gui.getTitle())) / 2, 4, 55, false, titleColor, tronTitleFont);
  backButton.update();
  if(backButton.buttonClicked() ) {
    
  }
}

// Fonction pour faire un rectangle
void rect(int width, int height, int x, int y, color colour, boolean hasStroke, color strokeColor) {
  quad(x, y, x + width, y, x + width, y + height, x, y + height, colour, hasStroke, strokeColor);
}

// Fonction pour tra
void line(int xBegin, int yBegin, int xEnd, int yEnd, color colour) {
  stroke(colour);
  line(xBegin, yBegin, xEnd, yEnd);
  noStroke();
}

// Fonction pour faire un quadrilatère
void quad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color colour, boolean hasStroke, color strokeColor) {
  if (hasStroke) {
    stroke(strokeColor);
  } else {
    noStroke();
  }
  fill(colour);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
  fill(defaultColor);
  noStroke();
}

// Fonction pour faire un triangle
void triangle(int x1, int y1, int x2, int y2, int x3, int y3, color colour, boolean hasStroke, color strokeColor) {
  if (hasStroke) {
    stroke(strokeColor);
  } else {
    noStroke();
  }
  fill(colour);
  triangle(x1, y1, x2, y2, x3, y3);
  fill(defaultColor);
  noStroke();
}

// Fonction pour faire un cube en 3D
void box(int width, int height, int depth, int x, int y, int z, float rotateX, float rotateY) {
  stroke(rectLineColor);
  pushMatrix();
  translate(x, y, z);
  rotateX(rotateX);
  rotateY(rotateY);
  box(width, height, depth);
  popMatrix();
  noStroke();
}

void keyPressed() {
  switch(key) {
   case '1':
     new GuiMainMenu(true);
   break;
   case '2':
     new GuiOptionsSound(true);
   break;
   case '3':
     new GuiMatchHistory(true);
   break;
   case '4':
     new GuiGame(true);
   break;
  }
}

void mousePressed() {
  // Curseur orange
  cursor(cursorTronClicked, 0, 0);
}

void mouseReleased() {
  // Curseur bleu
  cursor(cursorTron, 0, 0);
}

// Fonction de processing qui retourne si le programme est en plein écran ou non
boolean sketchFullScreen() {
  return false;
}
