//We will have our "global" variables here, mainly all the managers
CapsuleScreenManager screenManager;
PumpManager pumpManager;


void setup()
{
  //setup the screen here
  size(800,600);
  
  screenManager = new CapsuleScreenManager();
  pumpManager = new PumpManager(this);
}


void draw()
{
  background(255);
  screenManager.draw();
  pumpManager.update();
  
  if(pumpManager.isConnected) fill(50,240,0);
  else fill(240,50,0);
  
  ellipse(width-20,20,10,10);
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
}