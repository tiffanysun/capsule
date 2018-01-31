int analog3= 3;
int analog4= 4;
int analog5= 5;
int analog6= 6;
int analog7= 7;
int analog8= 8;//
int val = 180;

void setup()
{
pinMode(analog3, OUTPUT); //sets the digital pin as output
pinMode(analog4, OUTPUT);
pinMode(analog5, OUTPUT);
pinMode(analog6, OUTPUT);
pinMode(analog7, OUTPUT);
pinMode(analog8, OUTPUT);
}

void loop()
{
analogWrite(analog3,val);
//delay(1700);
//analogWrite(analog3,0);
analogWrite(analog4,val);
//delay(1700);
//analogWrite(analog4,0);
analogWrite(analog5,val);
//delay(1700);
//analogWrite(analog5,0);
analogWrite(analog6,val);
//delay(1700);
//analogWrite(analog6,0);
analogWrite(analog7,val);
//delay(1700);
//analogWrite(analog7,0);
analogWrite(analog8,val);
//delay(1700);
//analogWrite(analog8,0);
//delay(10000);
//3'30'' => 200 ml

}
