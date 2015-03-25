class GuiOptionsSound extends Gui {
  
  GuiOptionsSound(boolean render) {
    super(render);
  }
  
  void render() {
    new Text().write("options", width / 2, 50, 100, true, titleColor, tronTitleFont);// Le texte qui est dans le cadre
    quad(width / 2 -300, 20, width / 2 + 300, 20, width / 2 + 300, 35, width / 2 - 300, 35, color(111, 195, 223), true, color(111, 195, 223));// Bordure au dessus de "Options"
    quad(width / 2 - 225, 150, width / 2 + 225, 150, width / 2 + 225, 165, width / 2 - 225, 165, color(111, 195, 223), true, color(111, 195, 223));//Bordure en dessous "Options"
    
    new Text().write("Sounds", width / 2, 210, 50, true, subtitleColor, subtitleFont);// Bouton+Onglet "sounds"
    quad(width / 2 -200, 200, width / 2 + 200, 200, width / 2 + 200, 205, width / 2 - 200, 205, color(111, 195, 223), true, color(111, 195, 223));//bordure haut
    quad(width / 2 -200, 275, width / 2 + 200, 275, width / 2 + 200, 280, width / 2 - 200, 280, color(111, 195, 223), true, color(111, 195, 223));//bordure bas
    quad(width / 2 -200, 200, width / 2 - 195, 200, width / 2 - 195, 280, width / 2 - 200, 280, color(111, 195, 223), true, color(111, 195, 223));//bordure gauche
    quad(width / 2 +200, 200, width / 2 + 195, 200, width / 2 + 195, 280, width / 2 + 200, 280, color(111, 195, 223), true, color(111, 195, 223));//bordure droite
    
    new Text().write("Controls", width / 2 - 380, 245, 35, true, subtitleColor, subtitleFont);
    quad(width / 2 -520, 245, width / 2 - 240, 245, width / 2 - 240, 290, width / 2 - 520, 290, color(111, 195, 223, 0), true, color(111, 195, 223));//235-175=60
    
    //Fleches
    
    quad(width / 2 -843, 235, width / 2 - 200, 235, width / 2 - 200, 245, width / 2 - 843, 245, color(111, 195, 223), true, color(111, 195, 223));
     
    
  }
  
  String getID() {
    return "gui-option";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
