class GuiMatchHistory extends Gui { //<>//
  
  PFont matchHistoryFont;  
  
  GuiMatchHistory(boolean render) {
    super(render);
    // On initialise la variable de la police 
    matchHistoryFont = loadFont("fonts/Large9Normal-48.vlw");
  }
  
  void render() {
 
    rect(100, 100, 100, height / 2 - 245, color(111, 195, 223, 255), false, color(111, 195, 223, 255)); //les carré sur la droite
    rect(100, 100, 100, height / 2 - 95, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(100, 100, 100, height / 2 + 50 , color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(100, 100, 100, height / 2 + 205, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    
    rect(width - 800, 100, 250, height / 2 - 245, color(111, 195, 223, 255), false, color(111, 195, 223, 255)); // les rectangle au centre
    rect(width - 800, 100, 250, height / 2 - 95, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 800, 100, 250, height / 2 + 50, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 800, 100, 250, height / 2 + 205, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    
    rect(100, 100, width / 2 + 400, height / 2 - 245, color(111, 195, 223, 0), true, color(111, 195, 223)); //les carré sur la gauche
    rect(100, 100, width / 2 + 400, height / 2 - 95, color(111, 195, 223, 0), true, color(111, 195, 223));
    rect(100, 100, width / 2 + 400, height / 2 + 50 , color(111, 195, 223, 0), true, color(111, 195, 223));
    rect(100, 100, width / 2 + 400, height / 2 + 205, color(111, 195, 223, 0), true, color(111, 195, 223)); 
    
    new Text().write("Time: ", width / 2 - 520,  height / 2 - 240 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Kill(s): ", width / 2 - 220,  height / 2 - 210 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Date: ", width / 2 - 520,  height / 2 - 180 , 20, false, color(16, 72, 145), matchHistoryFont);
    
    new Text().write("Time: ", width / 2 - 520,  height / 2 - 90 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Kill(s): ", width / 2 - 220,  height / 2 - 60 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Date: ", width / 2 - 520,  height / 2 - 30 , 20, false, color(16, 72, 145), matchHistoryFont);
    
    new Text().write("Time: ", width / 2 - 520,  height / 2 + 55 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Kill(s): ", width / 2 - 220,  height / 2 + 80 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Date: ", width / 2 - 520,  height / 2 + 105 , 20, false, color(16, 72, 145), matchHistoryFont);
    
    new Text().write("Time: ", width / 2 - 520,  height / 2 + 210 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Kill(s): ", width / 2 - 220,  height / 2 + 240 , 20, false, color(16, 72, 145), matchHistoryFont);
    new Text().write("Date: ", width / 2 - 520,  height / 2 + 270 , 20, false, color(16, 72, 145), matchHistoryFont);
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  boolean isPlayingMenuMusic() {
    return true;
  }
  
  String menuMusicLayerToPLay() {
    return "TOP";
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
