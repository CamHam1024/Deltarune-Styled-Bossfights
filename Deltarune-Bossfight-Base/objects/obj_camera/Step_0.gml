//Camera manipulations
//Zooming
#region Example (Mouse scroll)
//wheel = mouse_wheel_down() - mouse_wheel_up();

//if (Zooming == true)
//{ 
/*
	wheel = zoomrate	
	
	//Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	//Position
	camX -= addW / 2;
	camY -= addH / 2;
	
	Zooming = false */
//}

//resets the camera
//view_set_camera(0, camera);

//Moving
/* Example when callign out side of camera
obj_camera.x = lerp(obj_camera.x,x, 0.1)
obj_camera.y = lerp(obj_camera.y,y, 0.1) */

#endregion

//Create Event Variables (for screenshot)
Res_W = 1920;
Res_H = 1080;

//Step eve
camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);
camW = camera_get_view_width(view_camera[0]);
camH = camera_get_view_height(view_camera[0]);


//Set target camera pos (Makes sure the camera is centered no matter it's size)
moveposX = x - camW/2;
moveposY = y - camH/2;

#region Zoom Attempts
//wheel = mouse_wheel_down() - mouse_wheel_up();

if keyboard_check_pressed(ord("K"))
{
	zoomrate += 0.5
}

if keyboard_check_pressed(ord("L"))
{
	zoomrate -= 0.5
}

if keyboard_check_pressed(ord("J"))
{
	zoomrate = 1

}
#endregion

//zoomrate = lerp(zoomrate, 1, 0.05)	


//Apply cam Pos
camera_set_view_pos(view_camera[0], moveposX, moveposY);
camera_set_view_angle(view_camera[0], angle);

// store previous
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);
