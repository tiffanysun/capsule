public class RecapScreen extends CapsuleScreen
{
  
  public RecapScreen(String id)
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
    text("Recap", 0, height/2-20, width, 40);
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