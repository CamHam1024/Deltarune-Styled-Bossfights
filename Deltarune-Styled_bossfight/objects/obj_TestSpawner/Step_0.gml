// obj_TestSpawner - Step Event

#region Spawner animations

image_angle += 3.5;

#endregion

#region Spawner behaviour

if SpawnTimer = 0
{
	bullet = instance_create_depth(x, y, -3, obj_ParentBullet);
	bullet.direction = -90;
	bullet.speed = 3
	bullet.image_xscale = 1;
	bullet.image_yscale = 1;
}

SpawnTimer += 1;
SpawnTimer = SpawnTimer mod 30;
#endregion
