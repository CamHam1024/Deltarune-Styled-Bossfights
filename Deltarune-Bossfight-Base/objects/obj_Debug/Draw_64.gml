// obj_Debug - Draw Event
draw_set_color(c_green);
draw_set_font(fnt_System);

#region Draw playable Area
var Col1 = c_black, Col2 = c_red;

if (keyboard_check_pressed(ord("P")))
{
	DisplayPA =! DisplayPA;
}

if (DisplayPA == true)
{
	
	draw_rectangle_color(global.PlayAreaX1, global.PlayAreaY1, global.PlayAreaX2, global.PlayAreaY2, Col2, Col2, Col2, Col2, 1);
}
#endregion

//========================

#region Draw Text

if (keyboard_check_pressed(ord("T")))
{
	DisplayText =! DisplayText;
}

if (DisplayText == true)
{
	//Debug Text and values
	draw_text(25, 50, "Current Room: " + room_get_name(room) + "\n" + "\nDebug Settings Enabled. Press ESC to exit. | 1: Main Game Room. | 2: Middy's Test Lab. | 3: Hedge's Test Lab.");
	draw_text(25, 50, "\n\n\n\n\n\n\n\nPlayable Area:" + "\nX1: " + string(global.PlayAreaX1) + "\n" + "X2:" + string(global.PlayAreaX2) + "\n" 
	+ "Y1: " + string(global.PlayAreaY1) + "\n" + "Y2: " + string(global.PlayAreaY2));
	
	draw_text(325, 1080/2+75, "\n\n" + "HP: " + string(global.PlayerHP) + " / " + string(global.PlayerMaxHP));
	
	if (instance_exists(obj_Player))
	{
		with(obj_Player)
		{
			draw_text(25, 50*10, "Player Variables:\n" + "Focused: " + string(obj_Player.focused));
		}
	}
}
#endregion
image_xscale = 0.5;
image_yscale = 0.5;
draw_self();