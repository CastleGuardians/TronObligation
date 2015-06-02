class GuiOptionsGraphics extends Gui {
  
  Button buttonSounds;
  Button buttonControls;
  
  GuiOptionsGraphics(boolean render) {
    super(render);
    this.buttonSounds = new Button("Sounds", subtitleFont, 35, 20, color(223, 116, 12), color(223, 116, 12), width / 2 - 600, 150, 300, 50, color(12, 23, 31), color(0, 47, 47), color(0, 57, 57));
    this.buttonControls = new Button("Controls", subtitleFont, 35, 20, color(223, 116, 12), color(223, 116, 12), width / 2 + 301, 150, 299, 50, color(12, 23, 31), color(0, 47, 47), color(0, 57, 57));
  }
  
  void render() {
    new Text().write("Graphics", width / 2, 110, 50, true, subtitleColor, subtitleFont);// Bouton+Onglet "sounds"
    rect(400, 5,  width / 2 - 200, 100, color(111, 195, 223), true, color(111, 195, 223));//bordure haut
    rect(400, 5, width / 2 - 200, 180, color(111, 195, 223), true, color(111, 195, 223));//bordure bas   
    rect(5, 80, width / 2 -200, 100, color(111, 195, 223), true, color(111, 195, 223));//bordure gauche
    rect(5, 85, width / 2 + 200, 100,  color(111, 195, 223), true, color(111, 195, 223));//bordure droite
    this.buttonSounds.update();
    
    rect(300, 50,  width / 2 - 600, 150, color(111, 195, 223, 0), true, color(111, 195, 223));
    
    rect(300, 50,  width / 2 + 300, 150, color(111, 195, 223, 0), true, color(111, 195, 223));
    this.buttonControls.update();
    
    //Fleches
    rect(width / 2 - 200, 10, 0, 140, color(111, 195, 223), true, color(111, 195, 223));
    rect(width / 2 - 200, 10,width / 2 + 200 , 140, color(111, 195, 223), true, color(111, 195, 223));
    
   if(this.buttonSounds.buttonClicked()) {
     new GuiOptionsSound(true);
   }
   
   if(this.buttonControls.buttonClicked()) {
     new GuiOptionsControls(true);
   }
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  boolean isPlayingMenuMusic() {
    return true;
  }
  
  String menuMusicLayerToPLay() {
    return "SECOND";
  }
  
  String getID() {
    return "gui-options-graphics";
  }
  
  String getTitle() {
    return "Options";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
