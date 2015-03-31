class GuiOptionsSound extends Gui {
  
  GuiOptionsSound(boolean render) {
    super(render);
  }
  
  void render() {
    
    new Text().write("Sounds", width / 2, 110, 50, true, subtitleColor, subtitleFont);// Bouton+Onglet "sounds"
    rect(400, 5,  width / 2 - 200, 100, color(111, 195, 223), true, color(111, 195, 223));//bordure haut
    rect(400, 5, width / 2 - 200, 180, color(111, 195, 223), true, color(111, 195, 223));//bordure bas   
    rect(5, 80, width / 2 -200, 100, color(111, 195, 223), true, color(111, 195, 223));//bordure gauche
    rect(5, 85, width / 2 + 200, 100,  color(111, 195, 223), true, color(111, 195, 223));//bordure droite
    
    
    new Text().write("Controls", width / 2 - 450, 155, 35, true, subtitleColor, subtitleFont);// Bouton Controls
    //quad(width / 2 -520, 245, width / 2 - 240, 245, width / 2 - 240, 290, width / 2 - 520, 290, color(111, 195, 223, 0), true, color(111, 195, 223));//235-175=60
    rect(350, 50,  width / 4 - 200, 150, color(111, 195, 223, 0), true, color(111, 195, 223));
    
    //new Text().write("Graphics", width / 2 - 450, 155, 35, true, subtitleColor, subtitleFont);// Bouton Graphics
    
    //Fleches
    rect(width / 2 - 200, 10, 0, 140, color(111, 195, 223), true, color(111, 195, 223));
    rect(width / 2 - 200, 10,width / 2 + 200 , 140, color(111, 195, 223), true, color(111, 195, 223));
    
   
     
    
  }
  
  void screenEntered(Gui lastGui) {
    
  }
  
  void screenLeft(Gui newGui) {
    
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  String getID() {
    return "gui-options-sound";
  }
  
  String getTitle() {
    return "Options";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
