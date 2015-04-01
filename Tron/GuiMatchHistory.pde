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
    
    rect(width - 350, 100, 250, height / 2 - 245, color(111, 195, 223, 255), false, color(111, 195, 223, 255)); // les rectangle au centre
    rect(width - 350, 100, 250, height / 2 - 95, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 350, 100, 250, height / 2 + 50, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    rect(width - 350, 100, 250, height / 2 + 205, color(111, 195, 223, 255), false, color(111, 195, 223, 255));
    
    new Text().write("time:",width / 2 - 490 , 208 ,20 , true, color(255, 0, 0, 255), matchHistoryFont);//les "time 
    new Text().write("time:",width / 2 - 390 , 208 ,20 , true, color(0, 255, 0, 255), matchHistoryFont);
    new Text().write("time:",width / 2 - 290 , 208 ,20 , true, color(0, 0, 255, 255), matchHistoryFont);
    new Text().write("time:",width / 2 - 190 , 208 ,20 , true, color(0, 0, 0, 255), matchHistoryFont);
    new Text().write("time:",width / 2 - 90 , 208 ,20 , true, color(0, 255, 239, 255), matchHistoryFont);
    new Text().write("time:",width / 2 + 10 , 208 ,20 , true, color(255, 255, 255, 255), matchHistoryFont);
    new Text().write("time:",width / 2 + 110 , 208 ,20 , true, subtitleColor, matchHistoryFont);
    new Text().write("time:",width / 2 + 210 , 208 ,20 , true, color(255, 0, 218, 255), matchHistoryFont);
    new Text().write("time:",width / 2 + 310 , 208 ,20 , true, color(17, 0, 255, 255), matchHistoryFont); //#BleuMarine 
    new Text().write("time:",width / 2 + 410 , 208 ,20 , true, color(112, 112, 112, 255), matchHistoryFont); //#50NuanceDeGray
    
    new Text().write("your bike:",127 , height / 2 - 265 ,20 , true, color(112, 112, 112, 255), matchHistoryFont);
    


    
    
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
