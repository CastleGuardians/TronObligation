abstract class Gui {
  
  boolean isRendered;
    
  Gui(boolean render) {
    this.isRendered = render;
  }
  
  abstract void render();
  
  abstract String getID();
  
  abstract boolean isRendered();
}
