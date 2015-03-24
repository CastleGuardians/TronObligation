class GuiMainMenu extends Gui {
  
  Button buttonPlay;
  
  GuiMainMenu(boolean render) {
    super(render);
    this.buttonPlay = new Button("Play", 5, 200, 275, 60, subtitleFont, 70, backgroundColor, color(230, 230, 230, 255));
  }
  
  void render() {
    new Text().write(gameTitle, width / 2, 40, 140, true, titleColor, tronTitleFont);
    new Text().write(gameSubtitle, width / 2 + 4, 162, 47, true, subtitleColor, subtitleFont);
    //new Text().write(gameSubtitle, width / 2 + 4, 172, 60, true, subtitleColor, tronTitleFont);
    quad(width / 2, 155, width / 2 + 300, 160, width / 2, 165, width / 2 - 300, 160, rectLineColor, false, 0);
    this.buttonPlay.update();
    lights();
    //box(150, 150, 150, 250, 350, 0);
    //box(150, 150, 150, 450, 350, 0);
    //box(150, 150, 150, 250, 550, 120);
    //box(150, 150, 150, 600, 350, -100);
    noLights();
  }
  
  String getID() {
    return "gui-main-menu";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
