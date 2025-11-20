// obj_PlayInandOut - Step

#region Movement

direct = point_direction(startPosX, startPosY,destPosX,destPosY);
dist = floor(point_distance(startPosX, startPosY,destPosX,destPosY));

x = startPosX + lengthdir_x(Move, direct);
y = startPosY + lengthdir_y(Move, direct);

if (Move < dist)
{
	Move += dist/20;
}
else 
{
    instance_create_depth(x, y, -2, obj_PlayerDeltarune)	
    instance_destroy()
}

#endregion