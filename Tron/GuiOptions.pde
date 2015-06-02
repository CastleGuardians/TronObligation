class GuiOptions extends Gui {
  
  GuiOptions(boolean render) {
    super(render);
  }
  
  void render() {
    
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  boolean isPlayingMenuMusic() {
    return true;
  }
  
  String menuMusicLayerToPLay() {
    return "SECOND";
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
