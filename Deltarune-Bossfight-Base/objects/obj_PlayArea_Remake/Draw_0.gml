// obj_PlayArea - Draw event

#region PA Adjustments

PAX1 = x-xsize; // top left x
PAY1 = y-ysize; // top left y

PAX2 = x+xsize; // bottom right x
PAY2 = y+ysize; // Bottom right y

dis = point_distance(x, y, PAX1, PAY1); // left
dis1 = point_distance(x, y, PAX1, PAY1); // left

dir1 =  point_direction(x, y, PAX1, PAY1); // top left
dir2 =  point_direction(x, y, PAX2, PAY1); // top right

dir3 = point_direction(x, y, PAX1, PAY2); // bottom left
dir4 = point_direction(x, y, PAX2, PAY2); // bottom right

#endregion

#region Playable Area Animation
time = 30;

if (keyboard_check_pressed(vk_control))
{
	AttackStart =! AttackStart
}

if(spindir < 360)
{
    Part = instance_create_depth(x, y, -1, obj_PAIntroParticle)	

    Part.X[0] = (x + lengthdir_x(radius*dis, dir3+spindir)) + lengthdir_x(mag, spindir+adg1);
    Part.X[1] = (x + lengthdir_x(radius*dis, dir4+spindir)) + lengthdir_x(mag, spindir+adg2);
    Part.X[2] = (x + lengthdir_x(radius*dis, dir1+spindir)) + lengthdir_x(mag, spindir+adg3);
    Part.X[3] = (x + lengthdir_x(radius*dis, dir2+spindir)) + lengthdir_x(mag, spindir+adg4);

    Part.X[4] = x + lengthdir_x(radius*dis, dir3+spindir);
    Part.X[5] = x + lengthdir_x(radius*dis, dir4+spindir);
    Part.X[6] = x + lengthdir_x(radius*dis, dir1+spindir);
    Part.X[7] = x + lengthdir_x(radius*dis, dir2+spindir);

    Part.Y[0] = (y + lengthdir_y(radius*dis, dir3+spindir)) + lengthdir_y(mag, spindir+adg1);
    Part.Y[1] = (y + lengthdir_y(radius*dis, dir4+spindir)) + lengthdir_y(mag, spindir+adg2);
    Part.Y[2] = (y + lengthdir_y(radius*dis, dir1+spindir)) + lengthdir_y(mag, spindir+adg3);
    Part.Y[3] = (y + lengthdir_y(radius*dis, dir2+spindir))+ lengthdir_y(mag, spindir+adg4);
    
    Part.Y[4] = y + lengthdir_y(radius*dis, dir3+spindir);
    Part.Y[5] = y + lengthdir_y(radius*dis, dir4+spindir);
    Part.Y[6] = y + lengthdir_y(radius*dis, dir1+spindir);
    Part.Y[7] = y + lengthdir_y(radius*dis, dir2+spindir);

}

if (AttackStart == true)
{
	if (spindir < 360)
	{
		spindir += 360/time;
	}

	if (radius < 1)
	{
		radius += 1/time;
	}
	obj_System.PlayAreaX1 = x + lengthdir_x(dis, dir1) // top left x
    obj_System.PlayAreaY1 = y + lengthdir_y(dis, dir1); // top left y

    obj_System.PlayAreaX2 = x + lengthdir_x(dis, dir4)-1; // bottom right x
    obj_System.PlayAreaY2 = y + lengthdir_y(dis, dir4)-1; // Bottom right y	
}
else
{
	if (spindir > 0)
	{
		spindir -= 360/time;
	}


	if (radius > 0)
	{
		radius -= 1/time;
	}
}

#endregion

#region Playable area outline
draw_primitive_begin(pr_trianglestrip);

//1 bottom left V
draw_vertex_color((x + lengthdir_x(radius*dis, dir3+spindir)) + lengthdir_x(mag, spindir+adg1), (y + lengthdir_y(radius*dis, dir3+spindir)) + lengthdir_y(mag, spindir+adg1), c_green, 1); 

//2 bottom right
draw_vertex_color((x + lengthdir_x(radius*dis, dir4+spindir)) + lengthdir_x(mag, spindir+adg2), (y + lengthdir_y(radius*dis, dir4+spindir)) + lengthdir_y(mag, spindir+adg2), c_green, 1); 

//3 top left
draw_vertex_color((x + lengthdir_x(radius*dis, dir1+spindir)) + lengthdir_x(mag, spindir+adg3), (y + lengthdir_y(radius*dis, dir1+spindir)) + lengthdir_y(mag, spindir+adg3), c_green, 1); 

//4 top right
draw_vertex_color((x + lengthdir_x(radius*dis, dir2+spindir))+ lengthdir_x(mag, spindir+adg4), (y + lengthdir_y(radius*dis, dir2+spindir))+ lengthdir_y(mag, spindir+adg4), c_green, 1); 

draw_primitive_end();
#endregion

#region Play area
#region Surface Drawing
//re creating surface if its gone
if (!surface_exists(battleSurface))
{
    battleSurface = surface_create(room_width, room_height); //Normal playable Area Surface
}

//draw_surface_ext(battleSurface, 0, 0, 1, 1, 0, c_white, 1);

//set surface
surface_set_target(battleSurface); //Set the Surface to the Global set surface
draw_clear_alpha(c_black, 0); //Cleans up the surface (unless you want MSPaint!)

	//Draw Stuff here
	//= Light background =
	LightBGVar -= 1
	StageBG_MiddyLab(LightBGVar);
	
	
	
	//====================

surface_reset_target();
//Reset surface target

#endregion
tex = surface_get_texture(battleSurface)

draw_set_color(c_white)
draw_set_alpha(1)

draw_primitive_begin_texture(pr_trianglestrip, tex);
//1 bottom left 3
draw_vertex_texture(x + lengthdir_x(radius*dis, dir3+spindir), y + lengthdir_y(radius*dis, dir3+spindir), 0, 1); 

//2 bottom right 4
draw_vertex_texture(x + lengthdir_x(radius*dis, dir4+spindir), y + lengthdir_y(radius*dis, dir4+spindir), 1, 1); 

//3 top left 1
draw_vertex_texture(x + lengthdir_x(radius*dis, dir1+spindir), y + lengthdir_y(radius*dis, dir1+spindir), 0, 0); 

//4 top right 2
draw_vertex_texture(x + lengthdir_x(radius*dis, dir2+spindir), y + lengthdir_y(radius*dis, dir2+spindir), 1, 0); 

draw_primitive_end();


#endregion