class GuiGame extends Gui {
  
  GuiGame(boolean render) {
    super(render);
  }
  
  void render() {
  }
  
  void screenEntered(Gui lastGui) {
    
  }
  
  void screenLeft(Gui newGui) {
    
  }
  
  boolean renderOverlayMenu() {
    return false;
  }
  
  boolean isPlayingMenuMusic() {
    return false;
  }
  
  String menuMusicLayerToPLay() {
    return "NONE";
  }
  
  String getID() {
    return "gui-game";
  }
  
  String getTitle() {
    return "";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
