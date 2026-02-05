// obj_DeltaStuff - Create

#region Set Up

depth = 0;
image_xscale = 0.5;
image_yscale = 0.5;

#endregion

#region Deltarune, Exclusive Variables
/*
SoulMode, Color
0 = Normal, 0 = Red
1 = Integrity, 170 = Blue
*/

global.SoulMode = 0
if (global.SoulMode = 0){global.SoulColour = 0}
if (global.SoulMode = 1){global.SoulColour = 170}

#endregion

figtArea = instance_create_depth(room_width/2, room_height/2, 0, obj_PlayArea);
figtArea.xsize = 500;
figtArea.ysize = 500;

//instance_create_depth(1920/2-100, 1080/2-300, -2, obj_TestSpawner);
//instance_create_depth(1920/2+100, 1080/2-300, -2, obj_TestSpawner);

PlaySoul = instance_create_depth(400, room_height/2, -2, obj_PlayInandOut);
PlaySoul.destPosX = room_width/2;
PlaySoul.destPosY = room_height/2;