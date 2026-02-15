//Camera manipulations
//Get current camera Pos
camX = camera_get_view_x(camera);
camY = camera_get_view_y(camera);
camW = camera_get_view_width(camera);
camH = camera_get_view_height(camera);

//Set target camera pos
if instance_exists(obj_PlayerDeltarune)
{
	targetX = obj_PlayerDeltarune.x - camW/2;
	targetY = obj_PlayerDeltarune.y - camH/2;
}
else
{
	targetX = room_width/2 - camW/2;
	targetY = room_height/2 - camH/2;
}

//Clamp the Target to room bounds
targetX = clamp(targetX, 0, room_width - camW);
targetY = clamp(targetY, 0, room_height - camH);

//Smoothly Move the Camera
camX = lerp(camX, targetX, Cam_Smooth);
camY = lerp(camY, targetY, Cam_Smooth);	


//Zooming
#region Example (Mouse scroll)
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


#endregion

if keyboard_check_pressed(ord("K"))
{
	//zoomtime = 30
	zoomrate = -0.1
	Zooming = true;
}

if keyboard_check_pressed(ord("L"))
{
	//zoomtime = 30
	zoomrate = 0.1
	Zooming = true;
}

if keyboard_check_pressed(ord("J"))
{
	zoomtime = 30
	zoomrate = 1
}

//Apply cam Pos
camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH)
camera_set_view_angle(camera, angle);

//Spinning += 0.1

// store previous
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);