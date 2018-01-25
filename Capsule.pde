//We will have our "global" variables here, mainly all the managers
CapsuleScreenManager screenManager;
PumpManager pumpManager;
KinectManager kinectManager;


void setup()
{
  //setup the screen here
  size(800,600);
  
  screenManager = new CapsuleScreenManager();
  pumpManager = new PumpManager(this);
  kinectManager = new KinectManager();
}


void draw()
{
  background(255);
  pumpManager.update();
  
  screenManager.draw();
  kinectManager.draw();
  pumpManager.draw();
}


void mousePressed()
{
  kinectManager.mousePressed();
}

void mouseReleased()
{
  kinectManager.mouseReleased();
}

void mouseDragged()
{
  kinectManager.mouseDragged();
}


void keyPressed(KeyEvent e)
{
  println(e.getKeyCode());
  
  switch(e.getKeyCode())
  {
    case 37: //Arrow Left
      screenManager.previousScreen();
      break;
      
    case 38: //Arrow up
      break;
      
    case 39: //Arrow right
      screenManager.nextScreen();
      break;
      
    case 40: //Arrow down
      break; 
   }
   
   kinectManager.keyPressed(e);
}