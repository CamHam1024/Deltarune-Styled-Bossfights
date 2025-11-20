// obj_ParentBullet - Step

#region Bullet Kill

if (x < 0-sprite_width) or (x > room_width+sprite_width) or (y < 0-sprite_height) or (y > room_height+sprite_height)
{
	instance_destroy()
}