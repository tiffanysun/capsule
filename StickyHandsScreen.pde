public class StickyHandsScreen extends CapsuleScreen
{
  
  boolean handsOverlapping;
  float timeAtValidation; //time when the 2 hands were fist inside
  float validationTime; //it take 2 seconds to validates
  boolean highFive;
  
  public StickyHandsScreen(String id)
  {
    super(id);
    handsOverlapping = false;
    timeAtValidation = 0;
    validationTime = 2;
    highFive = false;

  }
  
  public void draw()
  {
    super.draw();
    
    pushStyle();
    textSize(30);
    fill(150, 200);
    textAlign(CENTER);
    text("Sticky Hands !", 0, height/2-20, width, 40);
    
    if (areHandsOverlapping()) handsOverlapping = true;
    else handsOverlapping = false;
    
    if(handsOverlapping) 
    {
      if(timeAtValidation == 0) timeAtValidation = millis()/1000.0f;
      else 
      {
         float currentTime = millis()/1000.0f;
         float validationProgression = map(currentTime-timeAtValidation,0,validationTime,0,1);
         fill(100);
         rect(width/2,height/2,10,100);
         fill(255,255,0);
         rect(width/2,height/2,10,100*validationProgression);
         
         if(currentTime > timeAtValidation + validationTime) highFive = true;
      }
    }else
    {
      timeAtValidation = 0;
    }
    
    popStyle();
  }
  
  boolean areHandsOverlapping() 
    {
      float overlapping1 = abs(kinectManager.person1Hand.x - kinectManager.person2Hand.x + kinectManager.handWidth);
      float overlapping2 = abs(kinectManager.person2Hand.x - kinectManager.person1Hand.x + kinectManager.handWidth);
      return overlapping1<=2*kinectManager.handWidth||overlapping2<=kinectManager.handWidth;
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