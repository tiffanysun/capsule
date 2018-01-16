public class CapsuleScreen
{
  String id;
  public CapsuleScreen(String id)
  {
    this.id = id;
  }
  
  public void draw()
  {
    pushStyle();
    fill(0);
    text("Screen : "+id,10,10,200,20);
    popStyle();
  }
  
  public void show()
  {
    
  }
  
  public void hide()
  {
    
  }
}