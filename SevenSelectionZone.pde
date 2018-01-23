class SevenSelectionZone
{
  SelectionZone zone1;
  SelectionZone zone2;
  SelectionZone zone3;
  SelectionZone zone4;
  SelectionZone zone5;
  SelectionZone zone6;
  SelectionZone zone7;

  int radius;
  PVector position;
  color zoneColor;
  int hypo;
  float difx;
  float dify;
  boolean colorIsSelected;
  int numHandsOver;
  int numHandsOver1;
  int numHandsOver2;
  int numHandsOver3;
  int numHandsOver4;
  int numHandsOver5;
  int numHandsOver6;
  int numHandsOver7;
  color targetColor1;
  color targetColor2;
  color targetColor3;
  color targetColor4;
  color targetColor5;
  color targetColor6;
  color targetColor7;
 
  float timeAtValidation; //time when the 2 hands were fist inside
  float validationTime; //it take 2 seconds to validates
  
  public SevenSelectionZone(PVector pos, int r, int h)
  {

    position = pos;
    radius = r;
    hypo = h;
    zoneColor = color(200);
    hypo = 200;
    difx = hypo*sin(radians(60))/sin(radians(90));
    dify = hypo*sin(radians(30))/sin(radians(90));
    colorIsSelected = false;
    numHandsOver = 0;
    numHandsOver1 = 0;
    numHandsOver2 = 0;
    numHandsOver3 = 0;
    numHandsOver4 = 0;
    numHandsOver5 = 0;
    numHandsOver6 = 0;
    numHandsOver7 = 0;
    targetColor1 = color(200);
    targetColor2 = color(200);
    targetColor3 = color(200);
    targetColor4 = color(200);
    targetColor5 = color(200);
    targetColor6 = color(200);
    targetColor7 = color(200);
    
    timeAtValidation = 0;
    validationTime = 2;


    zone1 = new SelectionZone(new PVector(position.x, position.y), radius);
    zone2 = new SelectionZone(new PVector(position.x, position.y-hypo), radius);
    zone3 = new SelectionZone(new PVector(position.x, position.y+hypo), radius);
    zone4 = new SelectionZone(new PVector(position.x-difx, position.y-dify), radius);
    zone5 = new SelectionZone(new PVector(position.x+difx, position.y+dify), radius);
    zone6 = new SelectionZone(new PVector(position.x+difx, position.y-dify), radius);
    zone7 = new SelectionZone(new PVector(position.x-difx, position.y+dify), radius);
  }

  void draw()
  {
    pushStyle();

    fill(zoneColor);
    noStroke();

    //check hand pos for zone
    int numHandsOver1 = 0;
    if (zone1.isPointOver(kinectManager.person1Hand)) numHandsOver1++;
    if (zone1.isPointOver(kinectManager.person2Hand)) numHandsOver1++;
    color targetColor1 = color(200);
    if (numHandsOver1 == 1) targetColor1 = color(200, 100, 0);
    else if (numHandsOver1 == 2) targetColor1 = color(80, 250, 0);

    zone1.zoneColor = targetColor1;

    zone1.draw();

    //check hand pos for zone
    int numHandsOver2 = 0;
    if (zone2.isPointOver(kinectManager.person1Hand)) numHandsOver2++;
    if (zone2.isPointOver(kinectManager.person2Hand)) numHandsOver2++;
    color targetColor2 = color(200);
    if (numHandsOver2 == 1) targetColor2 = color(200, 100, 0);
    else if (numHandsOver2 == 2) targetColor2 = color(80, 250, 0);

    zone2.zoneColor = targetColor2;

    zone2.draw();

    //check hand pos for zone
    int numHandsOver3 = 0;
    if (zone3.isPointOver(kinectManager.person1Hand)) numHandsOver3++;
    if (zone3.isPointOver(kinectManager.person2Hand)) numHandsOver3++;
    color targetColor3 = color(200);
    if (numHandsOver3 == 1) targetColor3 = color(200, 100, 0);
    else if (numHandsOver3 == 2) targetColor3 = color(80, 250, 0);

    zone3.zoneColor = targetColor3;

    zone3.draw();

    //check hand pos for zone
    int numHandsOver4 = 0;
    if (zone4.isPointOver(kinectManager.person1Hand)) numHandsOver4++;
    if (zone4.isPointOver(kinectManager.person2Hand)) numHandsOver4++;
    color targetColor4 = color(200);
    if (numHandsOver4 == 1) targetColor4 = color(200, 100, 0);
    else if (numHandsOver4 == 2) targetColor4 = color(80, 250, 0);

    zone4.zoneColor = targetColor4;

    zone4.draw();

    //check hand pos for zone
    int numHandsOver5 = 0;
    if (zone5.isPointOver(kinectManager.person1Hand)) numHandsOver5++;
    if (zone5.isPointOver(kinectManager.person2Hand)) numHandsOver5++;
    color targetColor5 = color(200);
    if (numHandsOver5 == 1) targetColor5 = color(200, 100, 0);
    else if (numHandsOver5 == 2) targetColor5 = color(80, 250, 0);

    zone5.zoneColor = targetColor5;

    zone5.draw();

    //check hand pos for zone
    int numHandsOver6 = 0;
    if (zone6.isPointOver(kinectManager.person1Hand)) numHandsOver6++;
    if (zone6.isPointOver(kinectManager.person2Hand)) numHandsOver6++;
    color targetColor6 = color(200);
    if (numHandsOver6 == 1) targetColor6 = color(200, 100, 0);
    else if (numHandsOver6 == 2) targetColor6 = color(80, 250, 0);

    zone6.zoneColor = targetColor6;

    zone6.draw();

    //check hand pos for zone
    int numHandsOver7 = 0;
    if (zone7.isPointOver(kinectManager.person1Hand)) numHandsOver7++;
    if (zone7.isPointOver(kinectManager.person2Hand)) numHandsOver7++;
    color targetColor7 = color(200);
    if (numHandsOver7 == 1) targetColor7 = color(200, 100, 0);
    else if (numHandsOver7 == 2) targetColor7 = color(80, 250, 0);

    zone7.zoneColor = targetColor7;

    zone7.draw();
    
    int numHandsOver = numHandsOver1+numHandsOver2+numHandsOver3+numHandsOver4+numHandsOver5+numHandsOver6+numHandsOver7;
    
    if(numHandsOver == 2) 
    {
      if(timeAtValidation == 0) timeAtValidation = millis()/1000.0f;
      else 
      {
         float currentTime = millis()/1000.0f;
         float validationProgression = map(currentTime-timeAtValidation,0,validationTime,0,1);
         fill(100);
         rect(position.x+radius+10,position.y-radius/2,10,radius);
         fill(255,255,0);
         rect(position.x+radius+10,position.y-radius/2,10,radius*validationProgression);
         
         if(currentTime > timeAtValidation + validationTime) colorIsSelected = true;
      }
    }else
    {
      timeAtValidation = 0;
    }

    popStyle();
  }

  boolean isPointOver(PVector point)
  {
    return position.dist(point) < radius;
  }
}