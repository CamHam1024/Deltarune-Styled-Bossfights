//Camera manipulations

//Zooming
#region Example (Mouse scroll)
/*
//wheel = mouse_wheel_down() - mouse_wheel_up();

if (Zooming == true)
{
	wheel = zoomrate	
	
	//Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	//Position
	camX -= addW / 2;
	camY -= addH / 2;
	
	Zooming = false
}
*/
#endregion

#region Zoom Attempts
//wheel = mouse_wheel_down() - mouse_wheel_up();

if keyboard_check_pressed(ord("K"))
{
	zoomrate += 0.5
	//camX = (Res_W - camW) * zoomrate;
	//camY = (Res_H - camH) * zoomrate;
}

if keyboard_check_pressed(ord("L"))
{
	zoomrate -= 0.5
	//camX = (Res_W - camW) * zoomrate;
	//camY = (Res_H - camH) * zoomrate;
}

if keyboard_check_pressed(ord("J"))
{
	zoomrate = 1
	//camX = Res_W/2 - camW/2;
	//camY = Res_H/2 - camH/2;
}
#endregion

//camera moving
if instance_exists(obj_PlayerDeltarune)
{
	targX = obj_PlayerDeltarune.x;
	targY = obj_PlayerDeltarune.y;	
}

cameraMovement(camera, targX, targY, Cam_Smooth)

//Apply cam Pos
camera_set_view_pos(camera, camX, camY);
camera_set_view_angle(camera, angle);
camera_set_view_size(camera, Res_W*zoomrate, Res_H*zoomrate)

//Spinning += 0.1

// store previous
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);