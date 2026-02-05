/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1040C533
/// @DnDArgument : "code" "//Box Sizes$(13_10)depth = -3$(13_10)$(13_10)spin = 0$(13_10)following = false;$(13_10)$(13_10)col = c_black$(13_10)TriAlpha = 1$(13_10)$(13_10)boxX = 0;$(13_10)boxY = 0;$(13_10)boxW = room_width;$(13_10)boxH = room_height;$(13_10)$(13_10)//Lists Init$(13_10)points = ds_list_create();$(13_10)walls = ds_list_create();$(13_10)rays = ds_list_create();$(13_10)$(13_10)LightBGVar = 0$(13_10)$(13_10)#region Functions$(13_10)Vec2 = function(_x, _y) constructor $(13_10){$(13_10)    x = _x;$(13_10)    y = _y;$(13_10)}$(13_10)$(13_10)Line = function(_a, _b) constructor $(13_10){$(13_10)    a = _a$(13_10)    b = _b$(13_10)    $(13_10)    Hit = function()$(13_10)    {$(13_10)        var closest_wall = -1;$(13_10)        var closest_t = -1;$(13_10)        var closest_u = -1;$(13_10)        $(13_10)        for (var i = 0; i < ds_list_size(obj_LightEmitt.walls); i++;)$(13_10)        {$(13_10)            var wall = obj_LightEmitt.walls[| i];$(13_10)            $(13_10)            var wall_dist_x = wall.a.x - wall.b.x;$(13_10)            var wall_dist_y = wall.a.y - wall.b.y;$(13_10)            var ray_dist_x = a.x - b.x;$(13_10)            var ray_dist_y = a.y - b.y;$(13_10)            var dist_x = wall.a.x - a.x;$(13_10)            var dist_y = wall.a.y - a.y;$(13_10)            $(13_10)            var den = (wall_dist_x * ray_dist_y) - (wall_dist_y * ray_dist_x); $(13_10)            $(13_10)            var t = ((dist_x * ray_dist_y) - (dist_y * ray_dist_x)) / den;$(13_10)            $(13_10)            if median(t, 0, 1) == t$(13_10)            {$(13_10)                var u = -((wall_dist_x * dist_y) - (wall_dist_y * dist_x)) / den;$(13_10)                $(13_10)                if u > 0 and (u < closest_u or closest_u == -1)$(13_10)                {$(13_10)                    closest_wall = wall;$(13_10)                    closest_u = u;$(13_10)                    closest_t = t;$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)        $(13_10)        return new obj_LightEmitt.Vec2(closest_wall.a.x + closest_t * (closest_wall.b.x - closest_wall.a.x), closest_wall.a.y + closest_t * (closest_wall.b.y - closest_wall.a.y))$(13_10)    }$(13_10)}$(13_10)$(13_10)function Rectangle(_x, _y, _width, _height, _angle)$(13_10){$(13_10)    var lxw = lengthdir_x(_width, _angle);$(13_10)    var lxh = lengthdir_x(_height, _angle - 90);$(13_10)    var lyw = lengthdir_y(_width, _angle);$(13_10)    var lyh = lengthdir_y(_height, _angle - 90);$(13_10)    $(13_10)    var a = new Vec2(_x - lxw - lxh, _y - lyw - lyh);$(13_10)    var b = new Vec2(_x + lxw - lxh, _y + lyw - lyh);$(13_10)    var c = new Vec2(_x + lxw + lxh, _y + lyw + lyh);$(13_10)    var d = new Vec2(_x - lxw + lxh, _y - lyw + lyh);$(13_10)    $(13_10)    ds_list_add(points, a, b, c, d);$(13_10)    $(13_10)    ds_list_add(walls,$(13_10)    new Line(a,b),$(13_10)    new Line(b,c),$(13_10)    new Line(c,d),$(13_10)    new Line(d,a));$(13_10)}$(13_10)$(13_10)#endregion$(13_10)$(13_10)instance_create_depth(x-100, y, -3, obj_Wall)$(13_10)instance_create_depth(x+100, y, -3, obj_Wall)$(13_10)instance_create_depth(x, y-100, -3, obj_Wall)$(13_10)instance_create_depth(x, y+100, -3, obj_Wall)$(13_10)$(13_10)Light_Surface = surface_create(room_width, room_height); $(13_10)Shade_Surface = surface_create(room_width, room_height); "
//Box Sizes
depth = -3

spin = 0
following = false;

col = c_black
TriAlpha = 1

boxX = 0;
boxY = 0;
boxW = room_width;
boxH = room_height;

//Lists Init
points = ds_list_create();
walls = ds_list_create();
rays = ds_list_create();

LightBGVar = 0

#region Functions
Vec2 = function(_x, _y) constructor 
{
    x = _x;
    y = _y;
}

Line = function(_a, _b) constructor 
{
    a = _a
    b = _b
    
    Hit = function()
    {
        var closest_wall = -1;
        var closest_t = -1;
        var closest_u = -1;
        
        for (var i = 0; i < ds_list_size(obj_LightEmitt.walls); i++;)
        {
            var wall = obj_LightEmitt.walls[| i];
            
            var wall_dist_x = wall.a.x - wall.b.x;
            var wall_dist_y = wall.a.y - wall.b.y;
            var ray_dist_x = a.x - b.x;
            var ray_dist_y = a.y - b.y;
            var dist_x = wall.a.x - a.x;
            var dist_y = wall.a.y - a.y;
            
            var den = (wall_dist_x * ray_dist_y) - (wall_dist_y * ray_dist_x); 
            
            var t = ((dist_x * ray_dist_y) - (dist_y * ray_dist_x)) / den;
            
            if median(t, 0, 1) == t
            {
                var u = -((wall_dist_x * dist_y) - (wall_dist_y * dist_x)) / den;
                
                if u > 0 and (u < closest_u or closest_u == -1)
                {
                    closest_wall = wall;
                    closest_u = u;
                    closest_t = t;
                }
            }
        }
        
        return new obj_LightEmitt.Vec2(closest_wall.a.x + closest_t * (closest_wall.b.x - closest_wall.a.x), closest_wall.a.y + closest_t * (closest_wall.b.y - closest_wall.a.y))
    }
}

function Rectangle(_x, _y, _width, _height, _angle)
{
    var lxw = lengthdir_x(_width, _angle);
    var lxh = lengthdir_x(_height, _angle - 90);
    var lyw = lengthdir_y(_width, _angle);
    var lyh = lengthdir_y(_height, _angle - 90);
    
    var a = new Vec2(_x - lxw - lxh, _y - lyw - lyh);
    var b = new Vec2(_x + lxw - lxh, _y + lyw - lyh);
    var c = new Vec2(_x + lxw + lxh, _y + lyw + lyh);
    var d = new Vec2(_x - lxw + lxh, _y - lyw + lyh);
    
    ds_list_add(points, a, b, c, d);
    
    ds_list_add(walls,
    new Line(a,b),
    new Line(b,c),
    new Line(c,d),
    new Line(d,a));
}

#endregion

instance_create_depth(x-100, y, -3, obj_Wall)
instance_create_depth(x+100, y, -3, obj_Wall)
instance_create_depth(x, y-100, -3, obj_Wall)
instance_create_depth(x, y+100, -3, obj_Wall)

Light_Surface = surface_create(room_width, room_height); 
Shade_Surface = surface_create(room_width, room_height);