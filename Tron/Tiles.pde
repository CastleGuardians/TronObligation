class Tiles {
  
  boolean canGoThrough;
  int resistance;
  PImage texture;
  
  //Tiles grass = new Tiles(true, 0, "grass");
  
  public Tiles(boolean canGoThrough, int resistance, String texture) {
    this.canGoThrough = canGoThrough;
    this.resistance = resistance;
    this.texture = loadImage("textures/" + texture + ".png");
  }
  
  boolean canGoThrough() {
    return canGoThrough;
  }
  
  int getResistance() {
    return resistance;
  }
  
  PImage getTexture() {
    return texture;
  }
}
