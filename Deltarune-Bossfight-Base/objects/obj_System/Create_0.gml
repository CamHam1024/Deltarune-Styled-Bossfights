// obj_System - Create Event - Depth = 0

#region Macros and Funky Code
//Create Macros
#macro screen_center_w room_width/2  //The center of the screen width.
#macro screen_center_h room_height/2 //The center of the screen height.

//Delta Time (built in Delta_time is actually Frame time, these variables actually make DeltaTime)
target_delta = 1/60; //Divide 1 by target FPS. (in this case its 60)
global.actual_delta = delta_time / 1000000 //use this for Timers and clocks!
global.delta_multi = global.actual_delta / target_delta //Delta Multiplier: use this for everything else?
//Look in the Step event for the actual code, as this needs to be continously updated,
//I've made a macro for this.

#endregion

#region Global Variables
//Play Area
global.PlayAreaX1 = 0 // top left x
global.PlayAreaY1 = 0; // top left y

global.PlayAreaX2 = 0; // bottom right x
global.PlayAreaY2 = 0; // Bottom right y


global.xdiff = room_width - global.PlayAreaX2 + global.PlayAreaX1
global.ydiff = room_height - global.PlayAreaY2 + global.PlayAreaY1

//Multipliers
global.Paused = false; //checks if the game is paused 
PrevWorldSpeed = 1; //mostly used to restore world speed after pausing
global.WorldSpeed = 1; //General world speed (useful for slow motion effects!)

//Game Related Globals
global.PlayerMaxHP = 100; //Maximum Player HP
global.PlayerHP = 100; //Current Player HP
global.PlayerMaxMana = 100; //Maximum Player Mana
global.PlayerMana = 100; //Current Player Mana

global.PlayerHPRegenMulti = 1; // HP Regen Multiplier
global.PlayerManaRegenMulti = 1; //Mana Regen Multiplier

global.PlayerScore = 0;
global.PlayerScoreMulti = 1; // Player Score Multiplier

#endregion

#region Other Bits

//instance_create_depth(960, 400, -1, obj_BadHeart);
instance_create_depth(0, 16, -10, obj_Debug);
//instance_create_depth(1920/2, 1040 - 50, -1, obj_Player);

//instance_create_depth(960, 400, 1, obj_HUD);

#endregion

