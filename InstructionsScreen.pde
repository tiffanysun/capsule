public class InstructionScreen extends CapsuleScreen
{
  
  public InstructionScreen(String id)
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
    text("Please move your hands on to the circle", 0, height/2-20, width, 40);
    
    fill(230);
    stroke(210);
    strokeWeight(2);
    ellipse(width/2,height-180,230,230);
    popStyle();
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