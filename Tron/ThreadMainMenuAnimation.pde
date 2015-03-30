class ThreadMainMenuAnimation extends Thread {
  
  GuiMainMenu gui;
 
  ThreadMainMenuAnimation(GuiMainMenu gui) {
    this.gui = gui;
    this.start();
  }
  
  void run() {
    while(true) {
      gui.vehicleRotateY += ONE_DEGREE_RADIAN / 10;
      try {
       Thread.sleep(30); 
      } catch(Exception e) {
        e.printStackTrace();
      }
    }
  }
}
