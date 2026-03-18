// obj_TestSpawner - Step Event

#region Spawner animations

image_angle += 1;

#endregion

#region Spawner behaviour

if SpawnTimer = 0
{
	AtAngle = 0
	AtNum = 26
	
	repeat(AtNum)
	{
		bullet = instance_create_depth(x, y, -3, obj_CircleBulletClipped);
		bullet.direction = AtAngle;
		bullet.speed = 3
		bullet.image_xscale = 1;
		bullet.image_yscale = 1;
		
		AtAngle += 360/AtNum
	}
}

SpawnTimer += 1;
SpawnTimer = SpawnTimer mod 300;
#endregion
