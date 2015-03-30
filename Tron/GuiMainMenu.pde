class GuiMainMenu extends Gui {
  
  Button buttonPlay;
  OBJModel lightCycle;
  float vehicleRotateY = 0.0;
  
  GuiMainMenu(boolean render) {
    super(render);
    this.buttonPlay = new Button("Play", 5, 200, 275, 60, subtitleFont, 70, backgroundColor, color(230, 230, 230, 255));
    this.lightCycle = new OBJModel(Tron.tron, "quad.obj", "relative", TRIANGLES);
    this.lightCycle.scale(1);
    new ThreadMainMenuAnimation(this);
  }
  
  void render() {
    
    //new Text().write(gameTitle, width / 2, 40, 140, true, titleColor, tronTitleFont);
    //new Text().write(gameSubtitle, width / 2 + 4, 162, 47, true, subtitleColor, subtitleFont);
    new Text().write("MAJ + 1 = GuiMainMenu", width / 2 + 4, 300, 25, true, subtitleColor, textFont);
    new Text().write("MAJ + 2 = GuiOptionsSound", width / 2 + 4, 350, 25, true, subtitleColor, textFont);
    new Text().write("MAJ + 3 = GuiMatchHistory", width / 2 + 4, 400, 25, true, subtitleColor, textFont);
    //new Text().write(gameSubtitle, width / 2 + 4, 172, 60, true, subtitleColor, tronTitleFont);
    quad(width / 2, 155, width / 2 + 300, 160, width / 2, 165, width / 2 - 300, 160, rectLineColor, false, 0);
    this.buttonPlay.update();
    //ambientLight(102, 102, 102);
    pushMatrix();
    translate(width/2, height/2 + 250, 0);
    //directionalLight(255, 255, 255, 0, 0, 0);
    box(10, 10, 10, 0, 0, 0, 0, 0);
    rotateY(vehicleRotateY);
    this.lightCycle.draw();
    popMatrix();
    //box(150, 150, 150, 250, 350, 0);
    //box(150, 150, 150, 450, 350, 0);
    //box(150, 150, 150, 250, 550, 120);
    //box(150, 150, 150, 600, 350, -100);
    noLights();
    //println(frameRate);
  }
  
  void screenEntered(Gui lastGui) {
    
  }
  
  void screenLeft(Gui newGui) {
    
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  String getID() {
    return "gui-main-menu";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
