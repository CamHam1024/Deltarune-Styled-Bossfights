// obj_HUD - Create Event

// Dont forget to use global.WorldSpeed on anything that moves viually or animates!

//Funky Variables
global.SpellActive = false;
SpellAlpha = 0; //Alpha for Spellcard backgrounds
oneTimeSwitch = false;

global.Darkness = false; //toggles on and off the darkness effect
//global.Paused = false; //is the game paused?

//surface creation
HudActive = false;
global.Background_Surface[0] = surface_create(room_width, room_height); //SEffects
global.Background_Surface[1] = surface_create(room_width, room_height); //HUD

//Camera
#region ScreenShake

camera = view_camera[0];
camPos_x = camera_get_view_x(camera);
camPos_y = camera_get_view_y(camera);

Shaking = false;
Shake_Amount = 10;
Shake_Timer = 30;

#endregion

//Stage Backgrounds
global.StageBG = 0;
StageBGVar = 0;
StageBackground[0] = StageBG_MiddyLab;

//Spell Backgrounds
global.SpellBG = 0;
SpellBackground[0] = SpellBG_Kami;
