class KinectManager
{
  boolean person1Here;
  boolean person2Here;
  
  PVector person1Hand;
  PVector person2Hand;
  PImage hand1Image;
  PImage hand2Image;

  int handWidth = 50;
  int handHeight;
  
  boolean isOverHand1;
  boolean isOverHand2;

  public KinectManager()
  { 
    person1Hand = new PVector();
    person2Hand = new PVector();
    hand1Image = loadImage("hand1.png");
    hand2Image = loadImage("hand2.png");
    handHeight = handWidth*hand1Image.height/hand1Image.width;

    person1Hand.x = width/3;
    person1Hand.y = height/2;
    person2Hand.x = width*2/3;
    person2Hand.y = height/2;
  }

  void draw()
  {
    pushStyle();
    imageMode(CENTER);
    image(hand1Image, person1Hand.x, person1Hand.y, handWidth, handHeight);
    image(hand2Image, person2Hand.x, person2Hand.y, handWidth, handHeight);
    popStyle();
  }

  void mousePressed()
  {
     isOverHand1 = false;
     isOverHand2 = false;
     if(isMouseOverHand(person1Hand)) isOverHand1 = true;
     else if(isMouseOverHand(person2Hand)) isOverHand2 = true;
  }
  
  boolean isMouseOverHand(PVector handPos)
  {
    float distX= abs(mouseX-handPos.x);
    float distY= abs(mouseY-handPos.y);
    
    return distX < handWidth/2 && distY < handHeight/2;
  }

  void mouseReleased()
  {
    isOverHand1 = false;
    isOverHand2 = false;
  }

  void mouseDragged()
  {
    if(isOverHand1)
    {
      person1Hand.set(mouseX,mouseY);
    }else if(isOverHand2)
    {
      person2Hand.set(mouseX,mouseY);
    }
  }
  
  void keyPressed(KeyEvent e)
  {
    switch(e.getKeyCode())
    {
      case 65: //a
      person1Here = !person1Here; //we inverse the value of person1Here (if true then set to false and vice versa)
      break;
      
      case 90: //z
      person2Here = !person2Here;
      break;
    }
  }
}