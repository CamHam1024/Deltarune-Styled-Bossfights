//obj_System - Create Event - Depth = 0

#region Macros and Funky Code
//Create Macros
#macro roomcenter_w room_width/2  //The center of the screen width.
#macro roomcenter_h room_height/2 //The center of the screen height.

//Delta Time (built in Delta_time is actually Frame time, these variables actually make DeltaTime)
target_delta = 1/60; //Divide 1 by target FPS. (in this case its 60)
actual_delta = delta_time / 1000000 //use this for Timers and clocks!
delta_multi = actual_delta / target_delta //Delta Multiplier: use this for everything else?
//Look in the Step event for the actual code, as this needs to be continously updated,
//I've made a macro for this.

//Draw Pos Fixed stuff
vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();

#endregion

#region Global Variables
//Play Area
PlayAreaX1 = 0 // top left x
PlayAreaY1 = 0; // top left y

PlayAreaX2 = 0; // bottom right x
PlayAreaY2 = 0; // Bottom right y

xdiff = room_width - PlayAreaX2 + PlayAreaX1
ydiff = room_height - PlayAreaY2 + PlayAreaY1

//Multipliers
Paused = false; //checks if the game is paused 
PrevWorldSpeed = 1; //mostly used to restore world speed after pausing
WorldSpeed = 1; //General world speed (useful for slow motion effects!)
ComboMulti = delta_multi * WorldSpeed; //combines Delta_Multi with the WorldSpeed (obj_System.ComboMulti)

//Game Related Globals
PlayerMaxHP = 100; //Maximum Player HP
PlayerHP = 100; //Current Player HP
PlayerMaxMana = 100; //Maximum Player Mana
PlayerMana = 100; //Current Player Mana

PlayerHPRegenMulti = 1; // HP Regen Multiplier
PlayerManaRegenMulti = 1; //Mana Regen Multiplier

PlayerScore = 0;
PlayerScoreMulti = 1; // Player Score Multiplier

#endregion

#region Screen Setup
//Window Variables
Dis_W = display_get_width(); // 1920 | 2560 | 640
Dis_H = display_get_height(); // 1080 | 1440 | 360

if (Dis_W > 1920)
{
	Res_Scale = 1.3;
}
else
{
	Res_Scale = 1;
}

Res_W = 1920;
Res_H = 1080;

Cam_Smooth = 0.1

//Center Window
window_width = ceil(Res_W * Res_Scale) - (64*3);
window_height = ceil(Res_H * Res_Scale) - (36*3);

window_set_position(Dis_W/2 - window_width/2, Dis_H/2 - window_height/2);

//Resize window & application surface
window_set_size(window_width, window_height);
surface_resize(application_surface, window_width, window_height);

display_set_gui_size(Res_W, Res_H); // gui size
#endregion

//instance_create_depth(500, 600, 0, obj_OverworldPlayer);
//instance_create_depth(0, 0, -10, obj_Debug);
