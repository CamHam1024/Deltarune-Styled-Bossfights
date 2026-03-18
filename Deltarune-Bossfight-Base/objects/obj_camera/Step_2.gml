//Camera manipulations
//varaibles
camX = camera_get_view_x(camera);
camY = camera_get_view_y(camera);
camW = camera_get_view_width(camera);
camH = camera_get_view_height(camera);

//resets the camera
//view_set_camera(0, camera);

//Moving
/* Example when callign out side of camera
obj_camera.x = lerp(obj_camera.x,x, 0.1)
obj_camera.y = lerp(obj_camera.y,y, 0.1) */

//Set target camera pos
moveposX = x - camW/2;
moveposY = y - camH/2;

//Zooming
#region Example (Mouse scroll)
//wheel = mouse_wheel_down() - mouse_wheel_up();

//if (Zooming == true)
//{
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
//}

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

//Apply cam Pos
camera_set_view_pos(camera, moveposX, moveposY);
camera_set_view_angle(camera, angle);
camera_set_view_size(camera, Res_W*zoomrate, Res_H*zoomrate)

// store previous
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);
