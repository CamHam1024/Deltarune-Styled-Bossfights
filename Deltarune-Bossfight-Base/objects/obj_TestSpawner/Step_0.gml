// obj_TestSpawner - Step Event

#region Spawner animations

image_angle += 10.1;

#endregion

#region Spawner behaviour

if SpawnTimer = 0
{
	bullet = instance_create_depth(x, y, -3, obj_CircleBulletClipped);
	bullet.direction = image_angle;
	bullet.speed = 3
	bullet.image_xscale = 0.5;
	bullet.image_yscale = 0.5;
	
	bullet = instance_create_depth(x, y, -3, obj_CircleBullet);
	bullet.direction = image_angle-180;
	bullet.speed = 3
	bullet.image_xscale = 0.5;
	bullet.image_yscale = 0.5;
}

SpawnTimer += 1;
SpawnTimer = SpawnTimer mod 10;
#endregion
