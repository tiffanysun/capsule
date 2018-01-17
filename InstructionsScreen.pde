public class InstructionScreen extends CapsuleScreen
{
  SelectionZone zone;
  boolean instructionsAreUnderstood;
  
  float timeAtValidation; //time when the 2 hands were fist inside
  float validationTime = 2; //it take 2 seconds to validates
  
  public InstructionScreen(String id)
  {
    super(id);
    zone = new SelectionZone(new PVector(width/2,height-100), 80);
    timeAtValidation = 0;
  }
  
  public void draw()
  {
    super.draw();
    
    pushStyle();

    textSize(30);
    fill(150, 200);
    textAlign(CENTER);
    text("Please move your hands on to the circle", 0, height/2-20, width, 40);
    
    
    
    //check hand pos for zone
    int numHandsOver = 0;
    if(zone.isPointOver(kinectManager.person1Hand)) numHandsOver++;
    if(zone.isPointOver(kinectManager.person2Hand)) numHandsOver++;
    
    color targetColor = color(200);
    if(numHandsOver == 1) targetColor = color(200,100,0);
    else if(numHandsOver == 2) targetColor = color(80,250,0);
    
    zone.zoneColor = targetColor;
    zone.draw();
    
    if(numHandsOver == 2) 
    {
      if(timeAtValidation == 0) timeAtValidation = millis()/1000.0f;
      else 
      {
         float currentTime = millis()/1000.0f;
         float validationProgression = map(currentTime-timeAtValidation,0,validationTime,0,1);
         fill(100);
         rect(zone.position.x+zone.radius+10,zone.position.y-zone.radius/2,10,zone.radius);
          fill(255,255,0);
         rect(zone.position.x+zone.radius+10,zone.position.y-zone.radius/2,10,zone.radius*validationProgression);
         
         if(currentTime > timeAtValidation + validationTime) instructionsAreUnderstood = true;
      }
    }else
    {
      timeAtValidation = 0;
    }
    
    
    popStyle();
  }
  
  public void show()
  {
    super.show();
    instructionsAreUnderstood = false;
  }
  
  public void hide()
  {
    super.hide();
  }
}