class ButtonImage {
  
  PImage normalImage;
  PImage hoverImage;
  PImage activeImage;
  PImage renderImage;
  int x;
  int y;
  int buttonWidth;
  int buttonHeight;
  int imageWidth;
  int imageHeight;
  color normalColor;
  color hoverColor;
  color activeColor;
  color renderColor;
  boolean mouseLastFrameOn;
  boolean buttonClicked;
  

  ButtonImage(PImage image, int x, int y, int buttonWidth, int buttonHeight, int imageWidth, int imageHeight, color normalColor, color hoverColor, color activeColor) {
    this(image, image, image, x, y , buttonWidth, buttonHeight, imageWidth, imageHeight, normalColor, hoverColor, activeColor);
  }
  
  ButtonImage(PImage normalImage, PImage hoverImage, PImage activeImage, int x, int y, int buttonWidth, int buttonHeight, int imageWidth, int imageHeight, color normalColor, color hoverColor, color activeColor) {
    this.normalImage = normalImage;
    this.hoverImage = hoverImage;
    this.activeImage = activeImage;
    this.x = x;
    this.y = y;
    this.buttonWidth = buttonWidth;
    this.buttonHeight = buttonHeight;
    this.imageWidth = imageWidth;
    this.imageHeight = imageHeight;
    this.normalColor = normalColor;
    this.hoverColor = hoverColor;
    this.activeColor = activeColor;
  }
  
  void update() {
    if(buttonClicked == true) {
      buttonClicked = false;
    }
    if(mousePressed) {
      mouseLastFrameOn = true;
    } else {
      if(mouseLastFrameOn) {
        if(mouseX >= x && mouseX <= x + buttonWidth && mouseY >= y && mouseY <= y + buttonHeight) {
          buttonClicked = true;
        }
        mouseLastFrameOn = false;
      }
    }
    if(mouseX >= x && mouseX <= x + buttonWidth && mouseY >= y && mouseY <= y + buttonHeight) {
      if(mousePressed) {
        renderColor = activeColor;
        renderImage = activeImage;
      } else {
        renderColor = hoverColor;
        renderImage = hoverImage;
      }
    } else {
      renderColor = normalColor;
      renderImage = normalImage;
    }
    rect(buttonWidth, buttonHeight, x, y, renderColor, false, 0);
    image(renderImage, x + buttonWidth / 2 - imageWidth / 2, y + buttonHeight / 2 - imageHeight / 2, imageWidth, imageHeight);
  }
  
  boolean buttonClicked() {
    return buttonClicked;
  }
}
