class Tiles {
  
  boolean canGoThrough;
  int resistance;
  String textureName;
  PImage texture;
  String name;
  
  public Tiles(boolean canGoThrough, int resistance, String texture, String name) {
    this.canGoThrough = canGoThrough;
    this.resistance = resistance;
    this.textureName = texture;
    this.texture = loadImage("textures/" + texture + ".png");
    this.name = name;
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
  
  String getTextureName() {
    return textureName;
  }
  
  String getName() {
   return name; 
  }
}
