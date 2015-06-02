class GuiGame extends Gui {
  
  Match match;
  
  GuiGame(boolean render) {
    super(render);
    List<Tiles> tiles = new ArrayList<Tiles>();
    for(int a = 0; a < 395; a++) {
      //tiles.add(new Tiles(true, 0, "grass"));
    }
    //tiles.add(new Tiles(true, 1, "tower"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 1, "tower"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 1, "tower"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 0, "grass"));
    //tiles.add(new Tiles(true, 1, "tower"));
    for(int a = 0; a < 395; a++) {
      //tiles.add(new Tiles(true, 0, "grass"));
    }
    match = new Match(40, 20, color(100, 100, 100), tiles);
  }
  
  void render() {
    match.tickMatch();
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
    return "gui-game";
  }
  
  String getTitle() {
    return "";
  }
  
  boolean isRendered() {
    return this.isRendered;
  }
}
