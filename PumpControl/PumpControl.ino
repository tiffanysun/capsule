#define NUM_PUMPS 6
#define PUMP_FORCE 150

int pumps[NUM_PUMPS]{3,4,5,6,7,8};

byte serialBuffer[32];
int bufferIndex;

void setup()
{
  for(int i=0;i<NUM_PUMPS;i++) pinMode(pumps[i], OUTPUT);

  Serial.begin(9600);
  bufferIndex = 0;
}

void loop()
{
  while(Serial.available() > 0)
  {
    byte b = Serial.read();
    if(b == 255)
    {
      processMessage();
      bufferIndex = 0;
    }else
    {
      if(bufferIndex < 32) serialBuffer[bufferIndex] = b;
      bufferIndex++;
    }
  }
}

void processMessage()
{
  int pumpID = (int)serialBuffer[0];
  int ml = (int)serialBuffer[1];

  pumpMyVial(pumpID, ml);
}

void pumpMyVial(int pumpID, int ml)
{
  if(pumpID >= NUM_PUMPS)
  {
    Serial.print("Pump ");
    Serial.print(pumpID);
    Serial.println(" doesn't exist");
    return;
  }
  
  long pumpTime = getOpenTimeForMilliters(ml);
  
  Serial.print("Yo ! will pump #");
  Serial.print(pumpID);
  Serial.print(" for ");
  Serial.print(ml);
  Serial.print(" ml = ");
  Serial.print(pumpTime);
  Serial.print(" ms. Kiss ... ");
  
  analogWrite(pumps[pumpID], PUMP_FORCE);
  delay(pumpTime);
  analogWrite(pumps[pumpID], 0);
  
  Serial.println(" --> done !");
  
}

long getOpenTimeForMilliters(int ml)
{
  return ml*(long)1050; // 1050 ms equals to 1ml
}

