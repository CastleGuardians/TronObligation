  class GuiMatchHistory extends Gui {
    
      GuiMatchHistory(boolean render) {
      super(render);
    }
    
    void render() {
       new Text().write("Match History", 50, 50, 50, false, titleColor, tronTitleFont);
      quad(width / 55, 40, width / 55 + 475 , 40, width / 55 + 475, 100, width / 55 , 100, color(100, 100, 100, 0), true, color(111, 195, 223, 255)); //<>//
      quad(width / 15, 150, width / 15 +200, 150, width / 15 +200, 250, width / 15, 250,  color(111, 195, 223, 255), false, 0);
      quad(width / 15, 300, width / 15 +200, 300, width / 15 +200, 400, width / 15, 400,  color(111, 195, 223, 255), false, 0);
      quad(width / 15, 450, width / 15 +200, 450, width / 15 +200, 550, width / 15, 550,  color(111, 195, 223, 255), false, 0);
      quad(width / 15, 600, width / 15 +200, 600, width / 15 +200, 700, width / 15, 700,  color(111, 195, 223, 255), false, 0);
    }
    
    String getID() {
      return "gui-match-history";
    }
    
    boolean isRendered() {
      return this.isRendered;
    }
  }
