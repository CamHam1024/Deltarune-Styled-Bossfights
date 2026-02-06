//General

//background variables
MoveVariable = 0

//veiw Variables
#macro Res_W 1920
#macro Res_H 1080
#macro Res_Scale 1

#macro Cam_Smooth 0.1

angle = 0;
zoomrate = 0;
zoomtime = 0;

wheel = 0;

//Enable veiws
view_enabled = true;
view_visible[0] = true;

//Create Camera
camera = camera_create_view(room_width/2, room_height/2, Res_W, Res_H, 0);

view_set_camera(0, camera);

//Resize window & application surface
window_set_size(Res_W * Res_Scale, Res_H * Res_Scale);
surface_resize(application_surface, Res_W * Res_Scale, Res_H * Res_Scale);

display_set_gui_size(Res_W, Res_H); // gui size

//Center window
var display_width = display_get_width();
var display_height = display_get_height();

var window_width = Res_W * Res_Scale;
var window_height = Res_H * Res_Scale;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);

//Mouse Previous for panning
mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);