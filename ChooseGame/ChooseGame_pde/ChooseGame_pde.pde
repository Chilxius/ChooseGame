//Room data //<>//
String [] description =
{
  //0
  "Welcome to FIND THE TREASURE ADVENTURE. Let's find the treasure. Go LEFT to the woods or RIGHT to the old factory.",
  //1
  "The woods are dark. You shouldn't have come here at night. Head LEFT to the river or RIGHT to the cliffs.",
  //2
  "The factory is rusty and falling apart. You smell oil and grime. Head LEFT to the coal chute or RIGHT to the garage.",
  //3
  "The river has swollen from the recent rainstorm, and is running quickly. Head LEFT to jump across or RIGHT to try to swim.",
  //4
  "The cliff overlooks the valley below, but you can see nothing through the mist. Head LEFT to blindly jump into the mist or RIGHT to climb the large rocks.",
  //5
  "The coal chute slides down into the dark storehouse below, where it forks. Take the LEFT path toward a rocky cave or the RIGHT toward a mine shaft.",
  //6
  "You hear noises in the garage. Someone, or something, is in here with you. Do you leap LEFT into a hole in the wall or RIGHT into a convertible.",
  //7
  "You leap with all your might and whack your head on an overhanging limb. Your drowned body is discovered seven miles away a month later.\nDEAD",
  //8
  "You plunge into the water. Barely able to keep your head up, you are swept downstream. LEFT to grab a branch, RIGHT to trust your swimming skills.",
  //9
  "The rocks were larger than you thought, and less stable. But hey, auto-burying grave, so there's that.\nDEAD",
  //10
  "There is an old salt mine here, a massive chamber hollowed out by swarthy workmen long ago. LEFT is a storehouse, RIGHT is a rusty barred gate.",
  //11
  "You land in the back seat next to a briefcase full of money. And a tommygun. And the mobster holding the gun. So...\nDEAD",
  //12
  "Branch snaps.\nHead bonked.\nYou drown.\nThanks for playing.\nDEAD",
  //13
  "You swim forward. Right off a waterfall. Um...\nDEAD?",
  //14
  "You flick your lighter on to view the storehouse's contents. Poorly stored dynamite. Hilarious.\nBOOM",
  //15
  "The gate is locked, but seems rickety enough to break. LEFT to try to kick it open, RIGHT to pick the lock.",
  //16 (left from 15)
  "You shatter the door with a mighty kick. You also realize just how old this old cave system is, and how rotten the support beams were.\nDEAD",
  //17 (right from 15)
  "You don't know how to pick a lock, but the mechanism crumbles to rust at your touch. Beyond the gate is an ancient chamber, and inside...\nTHE DOG STATUE\nSo awesome...",
  //18 (left or right from 13)
  "NO!\nYou are swept over the falls onto an outcropping of stone. There is a cave here behind the falling water. LEFT to enter the cave, RIGHT to jump down the falls.",
  //19 (right from 18)
  "Really?\n...\n...\n...\nDEAD",
  //20 (left from 18)
  "You emerge dripping wet into a long tunnel of stone. After following your lighter's glow for a few minutes, you find a treasure chamber. It's mostly empty, but you do find a\nGOLDEN FISH STATUE!\nIt's not as cool as the dog statue, but it's still a treasure!"
};

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(30);
}

int changeRoom()
{
  if( choice == 1 ) //went left
    switch( currentRoom )
    {
      case 0:
        return 1;
      case 1:
        return 3;
      case 2:
        return 5;
      case 3:
        return 7;
      case 4:
        return 8;
      case 5:
        return 9;
      case 6:
        return 10;
      case 8:
        return 12;
      case 10:
        return 14;
      case 13:
        return 18;
      case 15:
        return 16;
      case 17:
        return 17;
      case 18:
        return 20;
      case 20:
        return 20;
      default:
        return 0;
    }
  else //went right
    switch( currentRoom )
    {
      case 0:
        return 2;
      case 1:
        return 4;
      case 2:
        return 6;
      case 3:
        return 8;
      case 4:
        return 9;
      case 5:
        return 10;
      case 6:
        return 11;
      case 8:
        return 13;
      case 10:
        return 15;
      case 13:
        return 18;
      case 15:
        return 17;
      case 17:
        return 17;
      case 18:
        return 19;
      case 20:
        return 20;
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
  text(description[currentRoom],width/2-300,height/2-100,600,400);
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
  fill(100);
  triangle(30,height/2, 60,height/2-30, 60,height/2+30);
  
  //Second Button
  fill(160);
  if(mousePressed && mouseX > width-100)
  {
    fill(120);
  }
  rect(width,0,-100,height);
  fill(100);
  triangle(width-30,height/2, width-60,height/2-30, width-60,height/2+30);

}

void mouseReleased()
{
  choice = -1;
  if( mouseX > width-100 )
    choice = 2;
  if( mouseX < 100 )
    choice = 1;
    
  if( mouseX > width-100 || mouseX < 100 )
    currentRoom = changeRoom();
  choice = -1;
}
