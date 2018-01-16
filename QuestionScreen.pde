public class QuestionScreen extends CapsuleScreen
{
  int id;
  String question;
  
  public QuestionScreen(String id, String question)
  {
    super(id);
    this.question = question;
  }
  
  public void draw()
  {
    super.draw();
    
    pushStyle();
    textSize(24);
    fill(150, 200);
    textAlign(CENTER);
    text("Question 1 : "+question, 0, 10, width, 40);
    
    fill(230);
    stroke(210);
    strokeWeight(2);
    ellipse(width/2,height/2,500,500);
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