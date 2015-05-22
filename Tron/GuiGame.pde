class GuiGame extends Gui {
  
  PeasyCam cam;
  
  GuiGame(boolean render) {
    super(render);
    cam = new PeasyCam(Tron.tron, 100);
    cam.setMinimumDistance(50);
    cam.setMaximumDistance(500);
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
