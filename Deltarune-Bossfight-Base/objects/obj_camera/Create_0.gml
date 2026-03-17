// Camera

#region Camera Setup
//Camera Varaiables
angle = 0;
zoomrate = 1;
zoomtime = 0;
zoomMinMax = 1;
Zooming = false

wheel = 0;

Res_W = 1920;
Res_H = 1080;

camX = x - Res_W/2
camY = y - Res_H/2

Cam_Smooth = 0.1

//Create Camera
camera = camera_create_view(camX, camY, Res_W, Res_H, 0);

camWS = camera_get_view_width(camera);
camHS = camera_get_view_height(camera);

view_set_camera(0, camera);

//Enable veiws
view_enabled = true;
view_visible[0] = true;

//Mouse Previous for panning
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);


#endregion