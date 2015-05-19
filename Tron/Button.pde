class Button {
  
  String text;
  PFont font;
  int fontHeight;
  int fontSize;
  color textColor;
  int x;
  int y;
  int buttonWidth;
  int buttonHeight;
  color normalColor;
  color hoverColor;
  color activeColor;
  color renderColor;
  boolean mouseLastFrameOn;
  boolean buttonClicked;
  

  Button(String text, PFont font, int fontSize, int fontHeight, color textColor, int x, int y, int buttonWidth, int buttonHeight, color normalColor, color hoverColor, color activeColor) {
    this.text = text;
    this.font = font;
    this.fontSize = fontSize;
    this.fontHeight = fontHeight;
    this.textColor = textColor;
    this.x = x;
    this.y = y;
    textFont(font, fontSize);
    println(textWidth(text));
    if(buttonWidth == -1) {
      this.buttonWidth = (int)textWidth(text) + 20;
    } else {
      this.buttonWidth = buttonWidth;
    }
    if(buttonHeight == -1) {
      this.buttonHeight = (int)textAscent() + (int)textDescent() + 10;
    } else {
      this.buttonHeight = buttonHeight;
    }
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
      } else {
        renderColor = hoverColor;
      }
    } else {
      renderColor = normalColor;
    }
    rect(buttonWidth, buttonHeight, x, y, renderColor, false, 0);
    new Text().write(text, x + buttonWidth / 2, y + buttonHeight / 2 - fontHeight, fontSize, true, textColor, font);
  }
  
  boolean buttonClicked() {
    return buttonClicked;
  }
}
