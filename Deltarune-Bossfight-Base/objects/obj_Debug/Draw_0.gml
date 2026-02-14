if keyboard_check_pressed(ord("P"))
{
	DisplayPlayArea = !DisplayPlayArea;
}
if (DisplayPlayArea == true)
{
	var Col1 = c_black, Col2 = c_red;
	draw_rectangle_color(obj_System.PlayAreaX1, obj_System.PlayAreaY1, obj_System.PlayAreaX2, obj_System.PlayAreaY2, Col2, Col2, Col2, Col2, 1);
}