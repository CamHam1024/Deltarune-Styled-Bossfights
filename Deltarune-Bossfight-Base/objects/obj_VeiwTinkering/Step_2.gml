//Get current camera Pos
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

//panning
if (mouse_check_button(mb_middle))
{
	var move_x = device_mouse_x_to_gui(0) - mouse_x_prev;
	var move_y = device_mouse_y_to_gui(0) - mouse_y_prev;
	
	camX -= move_x;
	camY -= move_y;
}
else
{
	//Set target camera pos
	if instance_exists(obj_PlayerDeltarune)
	{
		targetX = obj_PlayerDeltarune.x - camW/2;
		targetY = obj_PlayerDeltarune.y - camH/2;
	}else{
		targetX = room_width/2 - camW/2;
		targetY = room_height/2 - camH/2;
	}

	//Clamp the Target to room bounds
	targetX = clamp(targetX, 0, room_width - camW);
	targetY = clamp(targetY, 0, room_height - camH);

	//Smoothly Move the Camera
	camX = lerp(camX, targetX, Cam_Smooth);
	camY = lerp(camY, targetY, Cam_Smooth);	
}

//Zooming
#region Example (Mouse scroll)
/*wheel = mouse_wheel_down() - mouse_wheel_up();

if (wheel != 0)
{
	wheel *= 0.5	
	
	//Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	//Position
	camX -= addW / 2;
	camY -= addH / 2;
}*/
#endregion

//wheel = mouse_wheel_down() - mouse_wheel_up();


//Add to size
var addW = camW * zoom;
var addH = camH * zoom;
	
camW += addW;
camH += addH;
	
//Position
camX -= addW;
camY -= addH;
	
if keyboard_check_pressed(ord("K"))
{
	zoom += 0.01
}
if keyboard_check_pressed(ord("L"))
{
	zoom -= 0.01
}

//Apply cam Pos
camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH)
camera_set_view_angle(camera, angle);

//Spinning += 0.1

// store previous
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);













