class GuiMatchHistory extends Gui { //<>//
  
  PFont matchHistoryFont;  // On initialise la variablede la police 
  
  GuiMatchHistory(boolean render) {
    super(render);
    matchHistoryFont = loadFont("Large9Normal-48.vlw");
  }
  
  void render() {
    new Text().write("Match History", 50, 50, 50, false, titleColor, tronTitleFont); // le titre 
     
    quad(width / 55, 40, width / 55 + 475 , 40, width / 55 + 475, 100, width / 55 , 100, color(100, 100, 100, 0), true, color(111, 195, 223, 255)); // l'encadrer du titre
    
    quad(100 , height / 2 - 300 , 200 , height / 2 - 300 , 200 , height / 2 - 200 , 100 ,  height / 2 - 200,  color(111, 195, 223, 255), false, 0); // les 4 carré sur la gauche
    quad(100 , height / 2 - 150 , 200 , height / 2 - 150 , 200 , height / 2 - 50  , 100 ,  height / 2 - 50 ,  color(111, 195, 223, 255), false, 0);      
    quad(100 , height / 2 , 200 , height / 2 , 200 , height / 2 +100 , 100 ,  height / 2 + 100,  color(111, 195, 223, 255), false, 0);
    quad(100 , height / 2 + 150 , 200 , height / 2 + 150 , 200 , height / 2 + 250 , 100 ,  height / 2 + 250,  color(111, 195, 223, 255), false, 0);
    
    quad(300 , height / 2 - 300 , 1300 , height / 2 - 300 , 1300 , height / 2 - 200 , 300 ,  height / 2 - 200,  color(111, 195, 223, 255), false, 0); // les 4 rectangle sur la droite 
    quad(300 , height / 2 - 150 , 1300 , height / 2 - 150 , 1300 , height / 2 - 50  , 300 ,  height / 2 - 50 ,  color(111, 195, 223, 255), false, 0);      
    quad(300 , height / 2 , 1300 , height / 2 , 1300 , height / 2 +100 , 300 ,  height / 2 + 100,  color(111, 195, 223, 255), false, 0);
    quad(300 , height / 2 + 150 , 1300 , height / 2 + 150 , 1300 , height / 2 + 250 , 300 ,  height / 2 + 250,  color(111, 195, 223, 255), false, 0);
    
    quad(1300 , height / 2 + 300 , 1580 , height / 2 + 300 , 1580 , height / 2 + 350 , 1300 ,  height / 2 + 350,  color(111, 195, 223, 255), false, 0); // la fléche en bas a droite 
    triangle(1300, height / 2 + 300, 1300, height / 2 + 350, 1250, height / 2 + 325, color(111, 195, 223, 255), false, 0);
    
    new Text().write("time", 310, 155, 20, false, color(255, 0, 0, 255), matchHistoryFont); // le texte dans les rectangle 
    new Text().write("time", 410, 155, 20, false, color(0, 255, 0, 255), matchHistoryFont);
    new Text().write("time", 510, 155, 20, false, color(0, 0, 255, 255), matchHistoryFont);
    new Text().write("time", 610, 155, 20, false, color(7, 248, 248, 255), matchHistoryFont);
    new Text().write("time", 710, 155, 20, false, color(231, 255, 2, 255), matchHistoryFont);
    new Text().write("time", 810, 155, 20, false, color(0, 0, 0, 255), matchHistoryFont);
    new Text().write("time", 910, 155, 20, false, color(255, 255, 255, 255), matchHistoryFont);
    
    new Text().write("Backup  main  menu", 1290, 765, 20, false, color(0, 0, 0, 255), matchHistoryFont); // le texte dans la fléche
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
  
  boolean isRendered() {
    return this.isRendered;
  }
}
