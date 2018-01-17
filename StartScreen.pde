public class StartScreen extends CapsuleScreen
{
  
  boolean personsAreReady;
  
  public StartScreen(String id)
  {
    super(id);
  }

  public void draw()
  {
    super.draw();

    pushStyle();

    textSize(30);
    fill(150, 200);
    textAlign(CENTER);
    if(kinectManager.person2Here) //Both persons are here
    {
      text("All set !", 0, height/2-20, width, 40);
    }else if(kinectManager.person1Here) //Only one person is here
    {
      
      text("Waiting for 1 user...", 0, height/2-20, width, 40);
    }else //Nobody is here, so sad...
    {
      text("Waiting for 2 users...", 0, height/2-20, width, 40);
    }
    popStyle();
    
    personsAreReady = kinectManager.person1Here && kinectManager.person2Here;
  }


  public void show()
  {
    super.show();
  }

  public void hide()
  {
    super.hide();
  }
}