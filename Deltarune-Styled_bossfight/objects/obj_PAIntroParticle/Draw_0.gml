// obj_PAIntroPart - Draw event
if (Alpha > 0)
{
	Alpha -= 1/10
}
else
{
	instance_destroy();	
}

#region Playable area outline
//draw_primitive_begin(pr_trianglestrip);

//1 bottom left
//draw_vertex_color(X[0], Y[0], c_green, Alpha); 

//2 bottom right
//draw_vertex_color(X[1], Y[1], c_green, Alpha); 

//3 top left
//draw_vertex_color(X[2], Y[2], c_green, Alpha); 

//4 top right
//draw_vertex_color(X[3], Y[3], c_green, Alpha); 

//draw_primitive_end();

draw_set_alpha(Alpha);
//bottom Line
draw_line_width_color(X[0], Y[0], X[1], Y[1], 7, c_green, c_green)
//top Line
draw_line_width_color(X[2], Y[2], X[3], Y[3], 7, c_green, c_green)
//left line
draw_line_width_color(X[0], Y[0], X[2], Y[2], 7, c_green, c_green)
//right line
draw_line_width_color(X[1], Y[1], X[3], Y[3], 7, c_green, c_green)

draw_set_alpha(1);
#endregion


