class GuiMatchHistory extends Gui { //<>//
  
  PFont matchHistoryFont;  
  
  GuiMatchHistory(boolean render) {
    super(render);
    // On initialise la variable de la police 
    matchHistoryFont = loadFont("fonts/Large9Normal-48.vlw");
  }
  
  void render() {
 
    rect(100, 100, 100, height / 2 - 245, color(111, 195, 223, 255), false, color(111, 195, 223, 255)); //les carré a gauche
    rect(100, 100, 100, height / 2 - 95, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(100, 100, 100, height / 2 + 50 , color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(100, 100, 100, height / 2 + 205, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    
    rect(width - 350, 100, 250, height / 2 - 245, color(111, 195, 223, 255), false, color(111, 195, 223, 255)); //les rectangle au centre 
    rect(width - 350, 100, 250, height / 2 - 95, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 350, 100, 250, height / 2 + 50, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 350, 100, 250, height / 2 + 205, color(111, 195, 223, 255), false, color(111, 195, 223, 255));

    
    

    
    
  }
  
  void screenEntered(Gui lastGui) {
    
  }
  
  void screenLeft(Gui newGui) {
    
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  String getID() {
    return "gui-match-history";
  }
  
  String getTitle() {
    return "Match History";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
