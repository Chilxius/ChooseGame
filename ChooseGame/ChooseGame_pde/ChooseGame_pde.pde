//Room data
String [] description =
  {
    "Ye find yeself in a dungeon. Ye see a gate and a hole in the wall.",
    "You are in the LEFT CHAMBER. Go left to return to start, go right to see the dog statue.",
    "You went right",
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
