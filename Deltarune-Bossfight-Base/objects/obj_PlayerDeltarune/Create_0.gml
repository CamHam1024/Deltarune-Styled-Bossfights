// obj_Player - Create Event
//General variables
depth = -1;

currentPlayer = 0; //Whos the player
moveMulti = 1; //How fast or slow the player is moving (good for "Goo" or other slow down effects)
focused = false; //Is the player focused?

Invuln = false; //Is the player invulnrable?
InvulnTimer = -1; //the timer for the player to become vulnrable.


SSTimer = 0;
SoulSat = 255;

//Animation Variables
playerAnimation = 0; //Player frame variables
playerAlpha = 1;
hitboxAlpha = 0;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;

//Player Specific

if (currentPlayer = 0)
{
	playerSpeed = 3;
	//sprite_index = spr_TestPlayer;
}

if (currentPlayer = 1)
{
	playerSpeed = 3;
}
