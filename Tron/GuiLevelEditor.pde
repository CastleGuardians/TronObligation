class GuiLevelEditor extends Gui {
  
  int lines;
  int columns;
  int size;
  List<Tiles> tileList;
  String levelName;
  PImage grassTexture;
  
  Button addLine;
  Button addColumn;
  Button removeLine;
  Button removeColumn;
  Button buildBlocks;
  
  boolean isTabBlocksOpen;
  
  Tiles tileInHand;
  
  GuiLevelEditor(boolean render) {
    super(render);
    this.lines = 15;
    this.columns = 20;
    this.size = lines * columns;
    this.addLine = new Button("Add Line", bikoFont, 20, 7, color(255, 255, 255, 255), color(150, 150, 150, 255), 1, 61, 210, 35, color(0, 0, 0, 255), color(0, 0, 0, 255), color(0, 0, 0, 255));
    this.addColumn = new Button("Add Column", bikoFont, 20, 7, color(255, 255, 255, 255), color(150, 150, 150, 255), 212, 61, 210, 35, color(0, 0, 0, 255), color(0, 0, 0, 255), color(0, 0, 0, 255));
    this.removeLine = new Button("Remove Line", bikoFont, 20, 7, color(255, 255, 255, 255), color(150, 150, 150, 255), 423, 61, 210, 35, color(0, 0, 0, 255), color(0, 0, 0, 255), color(0, 0, 0, 255));
    this.removeColumn = new Button("Remove Column", bikoFont, 20, 7, color(255, 255, 255, 255), color(150, 150, 150, 255), 634, 61, 210, 35, color(0, 0, 0, 255), color(0, 0, 0, 255), color(0, 0, 0, 255));
    this.buildBlocks = new Button("Blocks", bikoFont, 20, 7, color(255, 255, 255, 255), color(150, 150, 150, 255), 1, height - 36, 210, 35, color(0, 0, 0, 255), color(0, 0, 0, 255), color(0, 0, 0, 255));
    this.isTabBlocksOpen = false;
    this.tileList = new ArrayList<Tiles>();
    for(int a = 0; a < size; a++) {
      this.tileList.add(new Tiles(true, 0, "grass", "Grass"));
    }
  }
  
  void render() {
    background(color(180, 180, 220));
    this.addLine.update();
    this.addColumn.update();
    this.removeLine.update();
    this.removeColumn.update();
    this.buildBlocks.update();
    int line = 0;
    int column = 0;
    textFont(bikoFont, 20);
    for(int a = 0; a < tileList.size(); a++) {
      image(tileList.get(a).getTexture(), 40 + column * 33, 150 + line * 33);
      if(mouseX > 40 + column * 33 && mouseX < 40 + column * 33 + 32 && mouseY > 150 + line * 33 && mouseY < 150 + line * 33 + 32) {
        if(mousePressed) {
          if(tileInHand.getTextureName().equals("grass")) {
            tileList.set(a, new Tiles(true, 0, "grass", "Grass"));
          } else if(tileInHand.getTextureName().equals("tower")) {
            tileList.set(a, new Tiles(true, 10, "tower", "Tower"));
          } else if(tileInHand.getTextureName().equals("hardrock")) {
            tileList.set(a, new Tiles(true, 1000000, "hardrock", "Strong Rock"));
          } else if(tileInHand.getTextureName().equals("spawner")) {
            tileList.set(a, new Tiles(true, 1000, "spawner", "Spawner"));
          } else if(tileInHand.getTextureName().equals("nexus")) {
            tileList.set(a, new Tiles(true, 1000, "nexus", "Nexus"));
          }
        }
        rect(250, 135, width - 255, 65, color(190, 190, 230, 255), true, color(255, 255, 255, 255));
        image(tileList.get(a).getTexture(), width - 74, 71, 64, 64);
        new Text().write(tileList.get(a).getName(), width - 240, 80, 20, false, color(0, 0, 0, 255), bikoFont);
        new Text().write("Tile #" + a, width - 240, 110, 20, false, color(0, 0, 0, 255), bikoFont);
        new Text().write("Resistance : " + tileList.get(a).getResistance(), width - 240, 150, 20, false, color(0, 0, 0, 255), bikoFont);
        new Text().write("Can walk through : " + tileList.get(a).canGoThrough(), width - 240, 175, 20, false, color(0, 0, 0, 255), bikoFont);
      }
      line++;
      if(line == lines) {
        column++;
        line = 0;
      }
    }
    
    if(isTabBlocksOpen) {
      rect(width - 20, 80, 10, height - 140, color(190, 190, 230, 255), true, color(255, 255, 255, 255));
      for(int b = 0; b < Tron.tileList.size(); b++) {
        image(Tron.tileList.get(b).getTexture(), 47 + b * 101, height - 135);
        new Text().write(Tron.tileList.get(b).getName(), 63 + b * 101, height - 90, 20, true, color(0, 0, 0, 255), bikoFont);
        if(mouseX > 47 + b * 101 && mouseX < 47 + b * 101 + 30 && mouseY > height - 135 && mouseY < height - 135 + 32) {
          if(mousePressed) {
            tileInHand = Tron.tileList.get(b);
          }
        }
      }
    }
    if(tileInHand != null) {
        image(tileInHand.getTexture(), 150, 105);
        new Text().write("Tool in hand : ", 15, 110, 22, false, color(0, 0, 0, 255), bikoFont);
        new Text().write("(" + tileInHand.getName() + "), click on a tile to place it", 190, 110, 22, false, color(0, 0, 0, 255), bikoFont);
    }
    
    if(this.addColumn.buttonClicked()) {
      changeShape(false, true);
    }
    if(this.addLine.buttonClicked()) {
      changeShape(true, true);
    }
    if(this.removeColumn.buttonClicked()) {
      changeShape(false, false);
    }
    if(this.removeLine.buttonClicked()) {
      changeShape(true, false);
    }
    if(this.buildBlocks.buttonClicked()) {
      if(isTabBlocksOpen)
        isTabBlocksOpen = false;
      else
        isTabBlocksOpen = true;
    }
  }
  
  void changeShape(boolean changeLine, boolean addRow) {
    if(changeLine) {
      if(addRow) {
        this.lines++;
      } else {
        this.lines--;
      }
    } else {
      if(addRow) {
        this.columns++;
      } else {
        this.columns--;
      }
    }
    this.size = this.lines * this.columns;
    this.tileList.clear();
    for(int a = 0; a < size; a++) {
      this.tileList.add(new Tiles(true, 0, "grass", "Grass"));
    }
  }
  
  boolean renderOverlayMenu() {
    return true;
  }
  
  boolean isPlayingMenuMusic() {
    return false;
  }
  
  String menuMusicLayerToPLay() {
    return "NONE";
  }
  
  String getID() {
    return "gui-level-editor";
  }
  
  String getTitle() {
    return "";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
