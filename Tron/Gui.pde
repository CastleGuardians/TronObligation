abstract class Gui {
  
  boolean isRendered;
    
  Gui(boolean render) {
    if(Tron.guis.size() > 0) {
      for(int a = 0; a < Tron.guis.size(); a++) {
        if(this.getID().equals(Tron.guis.get(a).getID())) {
          Tron.guiHistory.add(this.getID());
          Tron.guis.get(a).isRendered = true;
          for(int b = 0; b < Tron.guis.size(); b++) {
            if(!this.getID().equals(Tron.guis.get(b).getID())) {
              Tron.guis.get(b).isRendered = false;
            }
          }
        } else if(a == Tron.guis.size() - 1) {
          for(int c = 0; c < Tron.guis.size(); c++) {
            Tron.guis.get(c).isRendered = false;
          }
          Tron.guiHistory.add(this.getID());
          this.isRendered = render;
          Tron.guis.add(this);
        }
      }
    } else {
          Tron.guiHistory.add(this.getID());
          this.isRendered = render;
          Tron.guis.add(this);
    }
  }
  
  abstract void render();
  
  abstract String getID();
  
  abstract String getTitle();
  
  abstract boolean isRendered();
  
  abstract void screenEntered(Gui lastGui);
  
  abstract void screenLeft(Gui newGui);
  
  abstract boolean renderOverlayMenu();
}
