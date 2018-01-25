public class CapsuleScreenManager
{
  CapsuleScreen[] screens; //List of the screens for the app
  CapsuleScreen currentScreen; //Keep track of the currentScreen

  public CapsuleScreenManager()
  {
    screens = new CapsuleScreen[] //Initialization of all the screens
    {
        new StartScreen("start"), 
        new InstructionScreen("instructions"), 
        new QuestionScreen("question1", "Person X, ask person Y gnagnagna"), 
        new QuestionScreen("question2", "Person Y, ask person X gnignigni"), 
        new QuestionScreen("question3", "Person X, ask person Y gnognogno"), 
        new QuestionScreen("question4", "Person Y, ask person X gneugneugneu"), 
        new QuestionScreen("question5", "Person X, ask person Y what's the capital of Albany"), 
        new StickyHandsScreen("sticky_hands"), 
        new RecapScreen("Recap")
    };

    setCurrentScreen(screens[0]);
  }

  public void draw()
  {
    if(currentScreen != null) currentScreen.draw();
    
    int index= getScreenIndex(currentScreen);
    switch(index)
    {
       case 0: //start
       {
         StartScreen s = (StartScreen)currentScreen;
         if(s.personsAreReady) nextScreen();
       }
       break;
       
       case 1: //instructions
       {
         InstructionScreen s = (InstructionScreen)currentScreen;
         if(s.instructionsAreUnderstood) nextScreen();
       }
       break;
       
       case 2: //Question1
       {
         QuestionScreen s = (QuestionScreen)currentScreen;
         if(s.sevenZone.colorIsSelected) nextScreen();
       }
       break;
       
       case 3: //Question2
       {
         QuestionScreen s = (QuestionScreen)currentScreen;
         if(s.sevenZone.colorIsSelected) nextScreen();
       }
       break;
       
       case 4: //Question3
       {
         QuestionScreen s = (QuestionScreen)currentScreen;
         if(s.sevenZone.colorIsSelected) nextScreen();
       }
       break;
       
       case 5: //Question4
       {
         QuestionScreen s = (QuestionScreen)currentScreen;
         if(s.sevenZone.colorIsSelected) nextScreen();
       }
       break;
       
       case 6: //Question5
       {
         QuestionScreen s = (QuestionScreen)currentScreen;
         if(s.sevenZone.colorIsSelected) nextScreen();
       }
       break;
       
       case 7: //StickyHands
       {
         StickyHandsScreen s = (StickyHandsScreen)currentScreen;
         if(s.highFive) nextScreen();
       }
       break;
       
    }
  }
  
  //This is the screen switching function that will manage the changing of screens
  public void setCurrentScreen(CapsuleScreen newScreen)
  {
    //Then we check the new screen is different than the previous, if it's the same, we do nothing
    if(newScreen == currentScreen) return; //If same screen, stop here
    
    if(currentScreen != null)
    {
      //If there was already a screen shown, we hide it
      currentScreen.hide(); 
    }
    
    //We set the currentScreen variable to be the new screen
    currentScreen = newScreen; 
    
    if(currentScreen != null) 
    {
      //We check here if the new currentScreen is not null, if not we show it
      currentScreen.show();
    }
  }

  //Helper functions

  //This function helps automatically go to the next screen
  public void nextScreen()
  {
    int index = getScreenIndex(currentScreen); //get the current screen index

    if (index == -1) 
    {
      //If we didn't found any screen, it probably means that there is no current screen. 
      //Let's say then that the next screen will be the first screen in the list.
      index = 0;
    } else
    {
      //If not, we add 1 to the index so we are targeting the next screen in the list
      index = index+1;
    }

    //Before setting it up, we have to check that the index is not greater than the number of screens, 
    //otherwise it will crash because it can't access an element "outside" the array
    //So we are checking if the index is greater or equal to the length of the array, because the last "valid" index is 1 less
    //than the actual size ( index 0 = first element, so index <size-1> is the last element in the array)
    if (index >= screens.length)
    {
      //We are probably on the last screen, what should be do ?
      //For now, let's go the the first screen again
      println("We are on the last screen, go the the first screen again");
      index = 0;
    }

    //Now we are sure that our target screen exist, let's set it as the current Screen
    CapsuleScreen targetScreen = screens[index];
    setCurrentScreen(targetScreen);
  }

  //This function helps automatically go to the previous screen
  public void previousScreen()
  {
    int index = getScreenIndex(currentScreen); //get the current screen index

    if (index == -1) 
    {
      //Same as in the nextScreen() function
      index = 0;
    } else
    {
      //If not, we subtract 1 to the index so we are targeting the next screen in the list
      index = index-1;
    }

    //Because this is previous Screen, we don't have to check if it's the last screen 
    //but if it was first screen, then the index would be -1
    if (index < 0)
    {
      //We were probably on the first screen, what should be do ?
      //For now, let's do nothing
      println("We already are on the first screen, doing nothing");
      return;
    }

    //Now we are sure that our target screen exist, let's set it as the current Screen
    CapsuleScreen targetScreen = screens[index];
    setCurrentScreen(targetScreen);
  }

  int getScreenIndex(CapsuleScreen screenToCheck)
  {
    for (int i=0; i<screens.length; i++) //We go through all screens
    {
      //When the screen checked is the same as the one we are looking for, it will return the index at which it is in the screens array.
      if (screens[i] == screenToCheck) return i;
    }

    //If we didn't find the screen, we return -1 to signal that it was not found (this is a convention)
    return -1;
  }
}