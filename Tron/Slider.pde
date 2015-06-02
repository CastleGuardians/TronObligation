class Slider {
  
  int x;
  int y;
  int sliderWidth;
  int sliderHeight;
  int valueHeight;
  PFont valueFont;
  boolean isFillingSlider;
  boolean showValue;
  color strokeColor;
  color backgroundColor;
  color fillColor;
  float minValue;
  float maxValue;
  float value;
  boolean isClicking;
  int mousePosition;
  

  Slider(int x, int y, int sliderWidth, int sliderHeight, boolean isFillingSlider, boolean showValue, PFont valueFont, int valueHeight, color strokeColor, color backgroundColor, color fillColor, float minValue, float maxValue, float value) {
    this.x = x;
    this.y = y;
    this.sliderWidth = sliderWidth;
    this.sliderHeight = sliderHeight;
    this.valueHeight = valueHeight;
    this.valueFont = valueFont;
    this.isFillingSlider = isFillingSlider;
    this.showValue = showValue;
    this.strokeColor = strokeColor;
    this.backgroundColor = backgroundColor;
    this.fillColor = fillColor;
    this.minValue = minValue;
    this.maxValue = maxValue;
    this.value = value;
    this.isClicking = false;
  }
  
  void update() {
    rect(sliderWidth, sliderHeight, x, y, backgroundColor, false, 0);
    rect((int)((value / maxValue * 100) * sliderWidth / 100), sliderHeight, x, y, fillColor, false, 0);
    line(x, y, x + sliderWidth, y, strokeColor);
    line(x, y + sliderHeight, x + sliderWidth, y + sliderHeight, strokeColor);
    line(x, y, x, y + sliderHeight, strokeColor);
    line(x + sliderWidth, y, x + sliderWidth, y + sliderHeight, strokeColor);
    if(mouseX >= x && mouseX <= x + sliderWidth && mouseY >= y && mouseY <= y + sliderHeight) {
      if(mousePressed && !this.isClicking) {
        this.isClicking = true;
      }
    }
    if(mouseX >= x && mouseX <= x + sliderWidth) {
      mousePosition = 0;
    } else if(mouseX < x) {
      mousePosition = -1;
    } else if(mouseX > x + sliderWidth) {
      mousePosition = 1;
    }
    if(!mousePressed && this.isClicking) {
      this.isClicking = false;
    }
    if(this.isClicking) {
      if(mousePosition == -1)
      value = minValue;
      if(mousePosition == 0)
      value = (((float)mouseX) - x) * 100 / sliderWidth * maxValue / 100;
      if(mousePosition == 1)
      value = maxValue;
    }
    textFont(textFont, 20);
    if(showValue) {
      if(textWidth(String.valueOf((int)value)) < ((value / maxValue * 100) * sliderWidth / 100)) {
        new Text().write(String.valueOf((int)value), (int)(x + ((value / maxValue * 100) * sliderWidth / 100) - (int)textWidth(String.valueOf((int)value))) - 2, y + valueHeight, 20, false, backgroundColor, valueFont);
      } else {
        new Text().write(String.valueOf((int)value), (int)(x + ((value / maxValue * 100) * sliderWidth / 100) + 2), y + valueHeight, 20, false, fillColor, valueFont);
      }
    }
  }
  
  void setMaxValue(float maxValue) {
    this.maxValue = maxValue;
  }
  
  float getMaxValue() {
    return maxValue;
  }
  
  void setMinValue(float minValue) {
    this.minValue = minValue;
  }
  
  float getMinValue() {
    return minValue;
  }
  
  void setValue(float value) {
    this.value = value;
  }
  
  float getValue() {
    return value;
  }
}
