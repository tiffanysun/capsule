import processing.serial.*;

public class PumpManager
{
  Serial myPort;
  boolean isConnected;
  public PumpManager(PApplet parent)
  {
    println("Serial ports :");
    printArray(Serial.list());

    String portName = "/dev/tty.usbmodem1411";//Serial.list()[0];
    try
    {
      myPort = new Serial(parent, portName, 9600);
      isConnected = true;
    }catch(Exception e)
    {
      println("Couldn't connect to the port : "+e.getMessage());
    }
  }

  public void update()
  {
    if(isConnected) while (myPort.available() > 0) print((char)myPort.read());
  }

  public void sendPumpCommand(int pumpID, int ml)
  {
    if(!isConnected) return;
    
    println("Sending pump command for #"+pumpID+" for "+ml+" ml");
    myPort.write((byte)pumpID);
    myPort.write((byte)ml);
    myPort.write(255); //end message
  }
}