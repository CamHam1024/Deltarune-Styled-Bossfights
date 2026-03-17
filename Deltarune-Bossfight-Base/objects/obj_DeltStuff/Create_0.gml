// obj_DeltStuff - Create

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

SoulMode = 0
if (SoulMode = 0){SoulColour = 0}
if (SoulMode = 1){SoulColour = 170}

figtArea = instance_create_depth(room_width/2, room_height/2, 0, obj_PlayArea);
figtArea.xsize = 500;
figtArea.ysize = 250;

#endregion

//instance_create_depth(random_range(-1000, 1000), random_range(-1000, 1000), -1, obj_BadHeart);
//instance_create_depth(1920/2, 1040 - 50, -1, obj_Player);
instance_create_depth(room_width/2, room_height/2-300, -2, obj_TestSpawner);
//instance_create_depth(room_width/2+300, room_height/2+300, -2, obj_TestSpawner);