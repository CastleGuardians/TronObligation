abstract class Gui {
  
  boolean isRendered;
    
  Gui(boolean render) {
    this.isRendered = render;
    Tron.guis.add(this);
  }
  
  abstract void render();
  
  abstract String getID();
  
  abstract boolean isRendered();
  
  abstract void screenEntered(Gui lastGui);
  
  abstract void screenLeft(Gui newGui);
  
  abstract boolean renderOverlayMenu();
}
