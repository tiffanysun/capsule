class SelectionZone
{
  int radius;
  PVector position;
  color zoneColor;
  
  public SelectionZone(PVector pos, int r)
  {
    position = pos;
    radius = r;
    zoneColor = color(200);

  }
  
  void draw()
  {
    
    pushStyle();
    
    //check hand pos for zone
    
    fill(zoneColor);
    noStroke();
    ellipse(position.x, position.y, radius*2, radius*2);
    
    popStyle();
  }
  
  boolean isPointOver(PVector point)
  {
    return position.dist(point) < radius;
  }
  
}