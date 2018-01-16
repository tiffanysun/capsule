//We will have our "global" variables here, mainly all the managers
CapsuleScreenManager screenManager;
PumpManager pumpManager;


void setup()
{
  //setup the screen here
  size(1280,800);
  
  screenManager = new CapsuleScreenManager();
  pumpManager = new PumpManager();
}


void draw()
{
  background(255);
  screenManager.draw();
}

void keyPressed(KeyEvent e)
{
  
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
}