// obj_DeltaruneStuff - Draw Event

/*SoulMode, Color
0 = Normal, 0 = Red
1 = Integrity, 170 = Blue
*/

if (global.SoulMode == 0)
{
	global.SoulColour = 0
}
if (global.SoulMode == 1)
{
	global.SoulColour = 171
}

//Placeholder characters
if !variable_instance_exists(id, "FunnyAnim")
{
	FunnyAnim = 0
}
	
FunnyAnim += 0.2;

draw_sprite_ext(spr_Iscream, 0, 400, 1080/2, 1.3, 1.3, 0, c_white, 1)
draw_sprite_ext(spr_ChikenGod, 0, 1920-400, 1080/2, 1.3, 1.3, 0, c_white, 1)
