// Camera

#region Camera Setup
//Camera Varaiables
//Static varaiables (For Create event)
Res_W = 1920; //screen resolution width
Res_H = 1080; //screen resolution height

//Continueous Variables (For Step event)
//Init variables that get constantly updated
camX = x;
camY = y;
camW = Res_W;
camH = Res_H;

angle = 0;
zoomrate = 1;
zoomtime = 0;
zoomMinMax = 1;
Zooming = false

wheel = 0;

//The position the camera goes towards
//targX = x;
//targY = y;

Cam_Smooth = 0.1

//Create Camera
//camera = camera_create_view(x, y, camW, camH, 0);

moveposX = x - camW/2;
moveposY = y - camH/2;

view_set_camera(0, view_camera[0]);

//Enable veiws
view_enabled = true;
view_visible[0] = true;

//Mouse Previous for panning
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);


#endregion