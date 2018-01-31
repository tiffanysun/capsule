public class RecapScreen extends CapsuleScreen
{
  String b; 
  String c; 
  String d; 
  String e; 
  String f; 
  String g; 

  int Y_AXIS = 1; 
  int X_AXIS = 2; 
  color b1, b2, c1, c2;


{
b1 = color(255);
b2 = color (0); 
c1 = color (204, 102, 0); 
c2 = color (0, 102, 153); 
}

  public RecapScreen(String id)
  {
    super(id);
  }
  
  public void draw()
  {
    super.draw();
    
    fill(100);
  noStroke();
  ellipse(width/8, height/3, 80, 80);
  String g = "perfume 7";
  fill(50);
  text(g, width/8*7.5, height/3, 80, 80); 

  fill(100);
  noStroke();
  ellipse(2*width/8, 2*height/4, 80, 80);
  String f = "perfume 6";
  fill(50);
  text(f, width/8*1.5, height/3, 80, 80); 

  fill(100);
  noStroke();
  ellipse(3*width/8, height/3, 80, 80);
  String e = "perfume 5";
  fill(50);
  text(e, width/8*3.5, height/3, 80, 80); 


  fill(100);
  noStroke();
  ellipse(4*width/8, 2*height/4, 80, 80);
  String d = "perfume 4";
  fill(50);
  text(d, width/8*5.5, height/3, 80, 80);  

  fill(100);
  noStroke();
  ellipse(5*width/8, height/3, 80, 80);
  String c = "perfume 3";
  fill(50);
  text(c, width/8*4.5, height/3*1.5, 80, 80); 

  fill(100);
  noStroke();
  ellipse(6*width/8, 2*height/4, 80, 80);
  String s= "perfume 1";
  fill(50);
  text(s, width/8*.8, height/3*1.5, 80, 80);  

  fill(100);
  noStroke();
  ellipse(7*width/8, height/3, 80, 80);
  String  b = "perfume 2";
  fill(50);
  text(b, width/8*2.9, height/3*1.5, 80, 80);  
  
  
    
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
