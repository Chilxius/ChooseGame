//Room data
String [] description =
{
  //0
  "Welcome to FIND THE TREASURE ADVENTURE. Let's find the treasure. Go LEFT to the woods or RIGHT to the old factory. More text.",
  //1
  "The woods are dark. You shouldn't have come here at night. Head LEFT to the river or RIGHT to the cliffs.",
  //2
  "You went right",
  //3
  "The dog statue is so cool.",
  //4
  "The dog statue is so cool.",
  //5
  "The dog statue is so cool.",
  //6
  "The dog statue is so cool.",
  //7
  "The dog statue is so cool.",
  //8
  "The dog statue is so cool.",
  //9
  "The dog statue is so cool.",
  //10
  "The dog statue is so cool.",
  //11
  "The dog statue is so cool.",
  //12
  "The dog statue is so cool.",
  //13
  "The dog statue is so cool."
};

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(40);
}

int changeRoom()
{
  if( choice == 1 )
    switch( currentRoom )
    {
      case 0:
        return 1;
      default:
        return 0;
    }
  else
    switch( currentRoom )
    {
      case 0:
        return 2;
      case 1:
        return 3;
      default:
        return 0;
    }
}

//********************************************//

void draw()
{
  background(0);
  
  drawButtons();
  
  //Draws the text in the middle of the screen
  fill(255);
  text(description[currentRoom],width/2-250,height/2,500,400);
}

void drawButtons()
{
  stroke(100);
  strokeWeight(4);
  
  //First Button
  fill(160);
  if(mousePressed && mouseX < 100)
  {
    fill(120);
  }
  rect(0,0,100,height);
  
  //Second Button
  fill(160);
  if(mousePressed && mouseX > width-100)
  {
    fill(120);
  }
  rect(width,0,-100,height);
}

void mouseReleased()
{
  choice = -1; //<>//
  if( mouseX > width-100 )
    choice = 2;
  if( mouseX < 100 )
    choice = 1;
    
  if( mouseX > width-100 || mouseX < 100 )
    currentRoom = changeRoom();
  choice = -1;
}
