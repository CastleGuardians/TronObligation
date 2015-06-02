class GuiMainMenu extends Gui {
  
  Button buttonPlay;
  Button matchHistory;
  Button levelEditor;
  Button options;
  Button quit;
  float vehicleRotateY = 0.0;
  
  GuiMainMenu(boolean render) {
    super(render);
    this.buttonPlay = new Button("Play", tronTitleFont, 145, 45, color(230, 230, 230, 255), titleColor, 75, 150, -1, -1, color(255, 255, 255, 0), color(255, 255, 255, 0), color(255, 255, 255, 0));
    this.matchHistory = new Button("Match History", tronTitleFont, 40, 15, color(230, 230, 230, 255), titleColor, 105, 355, -1, -1, color(255, 255, 255, 0), color(255, 255, 255, 0), color(255, 255, 255, 0));
    this.levelEditor = new Button("Level Editor", tronTitleFont, 40, 15, color(230, 230, 230, 255), titleColor, 105, 425, -1, -1, color(255, 255, 255, 0), color(255, 255, 255, 0), color(255, 255, 255, 0));
    this.options = new Button("Options", tronTitleFont, 40, 15, color(230, 230, 230, 255), titleColor, 105, 495, -1, -1, color(255, 255, 255, 0), color(255, 255, 255, 0), color(255, 255, 255, 0));
    this.quit = new Button("Quit", tronTitleFont, 40, 15, color(230, 230, 230, 255), titleColor, 105, 565, -1, -1, color(255, 255, 255, 0), color(255, 255, 255, 0), color(255, 255, 255, 0));
    //this.slidertest = new Slider(200, 500, 200, 50, true, true, textFont, 11, color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), 0, 300, 50);
  }
  
  void render() {
    this.buttonPlay.update();
    this.matchHistory.update();
    this.levelEditor.update();
    this.options.update();
    this.quit.update();
    
    if(this.buttonPlay.buttonClicked()) {
      new GuiGame(true);
    }
    if(this.matchHistory.buttonClicked()) {
      new GuiMatchHistory(true);
    }
    if(this.levelEditor.buttonClicked()) {
      new GuiLevelEditor(true);
    }
    if(this.options.buttonClicked()) {
      new GuiOptionsGraphics(true);
    }
    if(this.quit.buttonClicked()) {
      exit();
    }
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  boolean isPlayingMenuMusic() {
    return true;
  }
  
  String menuMusicLayerToPLay() {
    return "NONE";
  }
  
  String getID() {
    return "gui-main-menu";
  }
  
  String getTitle() {
    return "";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
