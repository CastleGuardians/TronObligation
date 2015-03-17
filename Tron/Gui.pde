abstract class Gui {
  
  ControlP5 cp5;
  
  boolean isRendered;
    
  Gui(boolean render) {
    this.isRendered = render;
    Tron.guis.add(this);
    cp5 = new ControlP5(Tron.tron);
  }
  
  abstract void render();
  
  abstract String getID();
  
  abstract boolean isRendered();
}
