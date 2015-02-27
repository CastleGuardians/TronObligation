public class Text {

  public void write(Object text, int x, int y, int size, boolean centeredX, color colour, PFont font) {
    textFont(font, size);
    fill(colour);
    if(centeredX) {
      text(String.valueOf(text), x - textWidth(String.valueOf(text)) / 2, y);
    } else {
      text(String.valueOf(text), x, y);
    }
  }

}
