public class PumpManager
{
  public PumpManager()
  {
  }
  
  public void sendPumpCommand(int pumpID, int ml)
  {
    println("Sending pump command for #"+pumpID+" for "+ml+" ml");
    myPort.write((byte)pumpID);
    myPort.write((byte)ml);
    myPort.write(255); //end message
  }
}