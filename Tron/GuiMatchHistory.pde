  class GuiMatchHistory extends Gui {
    
      GuiMatchHistory(boolean render) {
      super(render);
    }
    
    void render() {
       new Text().write("Match History", 50, 50, 50, false, titleColor, tronTitleFont);
      quad(width / 55, 40, width / 4 + 75 , 40, width / 4 + 75, 100, width / 55 , 100, color(100, 100, 100, 0), true, color(111, 195, 223, 255)); //<>//
      
    }
    
    String getID() {
      return "gui-match-history";
    }
    
    boolean isRendered() {
      return this.isRendered;
    }
  }
