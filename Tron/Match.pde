class Match {
  
  int gridWidth;
  int gridHeight;
  int yPosition;
  color defaultBackgroundColor;
  List<Tiles> tileList;
  
  public Match(int gridWidth, int gridHeight, color defaultBackgroundColor, List<Tiles> tileList) {
    this.gridWidth = gridWidth;
    this.gridHeight = gridHeight;
    this.defaultBackgroundColor = defaultBackgroundColor;
    this.tileList = tileList;
    this.yPosition = (height - 33 * gridHeight) / 2;
  }
  
  void tickMatch() {
    background(color(180, 180, 220));
    int tiles = 0;
    int columns = 0;
    for(int a = 0; a < tileList.size(); a++) {
      println(columns);
      image(tileList.get(a).texture, 0 + columns * 33, this.yPosition + tiles * 33, 32, 32);
      //rect(33, 33, 0 + columns * 33 + 32, 0 + columns * 33 + 32, color(255, 255, 255), false, 0);
      tiles++;
      if(tiles == gridHeight) {
        columns++;
        tiles = 0;
      }
    }
  }
  
  List<Tiles> getTileList() {
   return tileList;
  }
}
