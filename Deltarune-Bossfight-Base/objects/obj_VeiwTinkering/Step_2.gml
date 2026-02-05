//Get current camera Pos
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

//Set target camera pos
if instance_exists(obj_PlayerDeltarune)
{
	targetX = obj_PlayerDeltarune.x - Res_W/2;
	targetY = obj_PlayerDeltarune.y - Res_H/2;
}else{
	targetX = room_width/2 - Res_W/2;
	targetY = room_height/2 - Res_H/2;
}

//Clamp the Target to room bounds
targetX = clamp(targetX, 0, room_width - Res_W);
targetY = clamp(targetY, 0, room_height - Res_H);

//Smoothly Move the Camera
camX = lerp(camX, targetX, Cam_Smooth);
camY = lerp(camY, targetY, Cam_Smooth);

//Apply cam Pos
camera_set_view_pos(camera, camX, camY);
camera_set_view_angle(camera, Spinning)

//Spinning += 0.1