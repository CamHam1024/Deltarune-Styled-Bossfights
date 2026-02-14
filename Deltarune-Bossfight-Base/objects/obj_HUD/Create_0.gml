//Background Variables
MoveVariable = 0;
depth = 1

#region Camera and Screen Setup
//General Varaiables
angle = 0;
zoomrate = 1;
zoomtime = 0;
zoomMinMax = 1;
Zooming = false

wheel = 0;

//Window Variables
Dis_W = display_get_width(); // 1920 | 2560 | 640
Dis_H = display_get_height(); // 1080 | 1440 | 360

if (Dis_W > 1920)
{
	Res_Scale = 1.3;
}
else
{
	Res_Scale = 1;
}

Res_W = 1920;
Res_H = 1080;

Cam_Smooth = 0.1

//Create Camera
camera = camera_create_view(room_width/2, room_height/2, Res_W, Res_H, 0);

view_set_camera(0, camera);

//Center window
window_width = ceil(Res_W * Res_Scale) - (64*3);
window_height = ceil(Res_H * Res_Scale) - (36*3);

window_set_position(Dis_W/2 - window_width/2, Dis_H/2 - window_height/2);

//Resize window & application surface
window_set_size(window_width, window_height);
surface_resize(application_surface, window_width, window_height);

display_set_gui_size(Res_W, Res_H); // gui size

//Enable veiws
view_enabled = true;
view_visible[0] = true;

//Mouse Previous for panning
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);

camWS = camera_get_view_width(camera);
camHS = camera_get_view_height(camera);

#endregion