  class GuiMatchHistory extends Gui {
    
      GuiMatchHistory(boolean render) {
      super(render);
    }
    
    void render() {
       new Text().write("Match History", 50, 50, 50, false, titleColor, tronTitleFont);
      quad(width / 55, 40, width / 55 + 475 , 40, width / 55 + 475, 100, width / 55 , 100, color(100, 100, 100, 0), true, color(111, 195, 223, 255)); //<>//
      quad(200 , height / 2 , 400 , height / 2 , 400 , height / 2 + 150 , 200 , height / 2 + 150,  color(111, 195, 223, 255), false, 0);
      quad(width / 15 +250, 300, width / 15 +335, 300, width / 15 +335, 380, width / 15 +250, 380,  color(111, 195, 223, 255), false, 0);
      quad(width / 15 +250, 450, width / 15 +335, 450, width / 15 +335, 530, width / 15 +250, 530,  color(111, 195, 223, 255), false, 0);
      quad(width / 15 +250, 600, width / 15 +335, 600, width / 15 +335, 680, width / 15 +250, 680,  color(111, 195, 223, 255), false, 0);
    }
    
    String getID() {
      return "gui-match-history";
    }
    
    boolean isRendered() {
      return this.isRendered;
    }
  }
