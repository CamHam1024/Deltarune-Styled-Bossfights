//Move the light
if (mouse_x > x - sprite_width/2) and (mouse_x < x + sprite_width/2) and (mouse_y > y - sprite_height/2) and (mouse_y < y + sprite_height/2)
{
    col = c_green
    if mouse_check_button_pressed(mb_left)
    {
        following =! following
    }
}

if following == true
{
    x = mouse_x;
    y = mouse_y;
}
//===

ds_list_clear(points);
ds_list_clear(walls);
ds_list_clear(rays);

#region Setup Walls

//Outer walls
Rectangle(boxX, boxY, boxW, boxH, 0);

for (var i = 0; i < instance_number(obj_LightWall); i++;)
{
    var inst = instance_find(obj_LightWall, i);
    Rectangle(inst.x, inst.y, inst.sprite_width / 2 - 2, inst.sprite_height /2 - 2, inst.image_angle)
}

#endregion

#region Create Rays

grid = ds_grid_create(2, ds_list_size(points) * 3);

var count = 0;
for (var i = 0; i < ds_list_size(points); i++;)
{
    var c = new Vec2(x, y);
    var p = points[| i];
    var dir = point_direction(c.x, c.y, p.x, p.y);
    
    var o = 0.1;
    for (var j = -o; j <= o; j += o)
    {
        p = new Vec2(x + lengthdir_x(32, dir+j), y + lengthdir_y(32, dir + j));
        m = new Line(c, p);
        p = m.Hit();
        
        ds_grid_set(grid, 0, count, p);
        ds_grid_set(grid, 1, count, point_direction(m.a.x, m.a.y, p.x, p.y));
        
        count++
    }
}

ds_grid_sort(grid, 1, true);

#endregion