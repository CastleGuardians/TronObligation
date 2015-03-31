class GuiOptions extends Gui {
  
  GuiOptions(boolean render) {
    super(render);
  }
  
  void render() {
    
  }
  
  void screenEntered(Gui lastGui) {
    
  }
  
  void screenLeft(Gui newGui) {
    
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  String getID() {
    return "gui-options";
  }
  
  String getTitle() {
    return "Options";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
