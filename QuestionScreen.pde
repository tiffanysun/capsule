public class QuestionScreen extends CapsuleScreen
{
  SevenSelectionZone sevenZone;
  int id;
  String question;
  
  public QuestionScreen(String id, String question)
  {
    super(id);
    this.question = question;

    sevenZone = new SevenSelectionZone(new PVector(width/2,height/2), 80, 200);
  }
  
  public void draw()
  {
    super.draw();
    
    pushStyle();
    textSize(24);
    fill(150, 200);
    textAlign(CENTER);
    text("Question 1 : "+question, 0, 10, width, 40);
    
    fill(100);
    noStroke();
    ellipse(width/2,height/2,600,600);
    
    sevenZone.draw();
    
    popStyle();
  }
  
  public void show()
  {
    super.show();
    sevenZone.colorIsSelected = false;
  }
  
  public void hide()
  {
    super.hide();
  }
}