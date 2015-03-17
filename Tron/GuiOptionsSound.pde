class GuiOptionsSound extends Gui {
  
  GuiOptionsSound(boolean render) {
    super(render);
  }
  
  void render() {
    new Text().write("options", displayWidth / 2, 50, 100, true, titleColor, tronTitleFont);// Le texte qui est dans le cadre
    quad(width / 2 -300, 20, width / 2 + 300, 20, width / 2 + 300, 35, width / 2 - 300, 35, color(111, 195, 223), true, color(111, 195, 223));// Bordure au dessus de "Options"
    quad(width / 2 - 225, 150, width / 2 + 225, 150, width / 2 + 225, 165, width / 2 - 225, 165, color(111, 195, 223), true, color(111, 195, 223));//Bordure en dessous "Options"
    
    new Text().write("Sounds", displayWidth / 2, 210, 50, true, subtitleColor, subtitleFont);
    quad(width / 2 -200, 200, width / 2 + 200, 200, width / 2 + 200, 205, width / 2 - 200, 205, color(111, 195, 223), true, color(111, 195, 223));
    quad(width / 2 -200, 275, width / 2 + 200, 275, width / 2 + 200, 280, width / 2 - 200, 280, color(111, 195, 223), true, color(111, 195, 223));
    
    
    new Text().write("Controls", displayWidth / 4, 200, 35, true, subtitleColor, subtitleFont);
    quad(width / 4 -150, 200, width / 4 + 150, 200, width / 4 + 150, 260, width / 4 - 150, 260, color(111, 195, 223, 0), true, color(111, 195, 223));
     
    
  }
  
  String getID() {
    return "gui-option";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
