//General

//background variables
MoveVariable = 0

//veiw Variables
angle = 0

#macro Res_W 1920
#macro Res_H 1080
#macro Res_Scale 1

#macro Cam_Smooth 0.1

//Enable veiws
view_enabled = true;
view_visible[0] = true;

//Create Camera
camera = camera_create_view(0, 0, Res_W, Res_H);

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