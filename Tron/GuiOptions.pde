class GuiOptions extends Gui {
  
  GuiOptions(boolean render) {
    super(render);
  }
  
  void render() {
    
  }
  
  String getID() {
    return "gui-options";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
