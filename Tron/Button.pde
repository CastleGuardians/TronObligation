class Button {
  
  String text;
  int x;
  int y;
  int buttonWidth;
  int buttonHeight;
  int fontSize;
  PFont font;
  color buttonColor;
  color textColor;

  Button(String text, int x, int y, int buttonWidth, int buttonHeight, PFont font, int fontSize, color buttonColor, color textColor) {
    this.text = text;
    this.x = x;
    this.y = y;
    this.buttonWidth = buttonWidth;
    this.buttonHeight = buttonHeight;
    this.fontSize = fontSize;
    this.font = font;
    this.buttonColor = buttonColor;
    this.textColor = textColor;
  }
  
  void update() {
    quad(x, y, x + this.buttonWidth, y, x + this.buttonWidth, y + this.buttonHeight, x, y + this.buttonHeight, this.buttonColor, false, 0);
    new Text().write(this.text, this.x + this.buttonWidth / 2, this.y - 13, this.fontSize, true, this.textColor, this.font);
  }
}
