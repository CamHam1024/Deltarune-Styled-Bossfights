// lighting

#region LIGHT TEX
//create surface
if (!surface_exists(Light_Surface))
{
    Light_Surface = surface_create(room_width, room_height); //Normal playable Area Surface
}

sL = global.PlayAreaX1;
sT = global.PlayAreaY1;
sW = obj_PlayArea.xsize*2;
sH = obj_PlayArea.ysize*2;
sX = global.PlayAreaX1;
sY = global.PlayAreaY1;

draw_surface_part_ext(Light_Surface, sL, sT, sW, sH, sX, sY, 1, 1, c_white, 1);

//draw on surface
//set surface
surface_set_target(Light_Surface); //Set the Surface to the Global set surface
draw_clear_alpha(c_black, 0); //Cleans up the surface (unless you want MSPaint!)

//= Light background =
LightBGVar += 0.3 * global.WorldSpeed
StageBG_MiddyLab(LightBGVar);

var PlayAlph = 0.5

with(obj_PlayerDeltarune)
{
    draw_sprite_ext(spr_TestPlayer, image_index, x, y, image_xscale, image_yscale, 0, make_colour_hsv(global.SoulColour,255,SoulSat), PlayAlph);
}

//Reset
surface_reset_target();

#endregion


#region SHADE TEX
if (!surface_exists(Shade_Surface))
{
    Shade_Surface = surface_create(room_width, room_height); //Normal playable Area Surface
}
//Shade
draw_surface_part_ext(Shade_Surface, sL, sT, sW, sH, sX, sY, 1, 1, c_white, 1);

//draw on surface
//set surface
surface_set_target(Shade_Surface); //Set the Surface to the Global set surface
draw_clear_alpha(c_black, 0); //Cleans up the surface (unless you want MSPaint!)
//= darkness background =
draw_set_color(c_black)
draw_rectangle(0, 0, room_width, room_height, 0);

with(obj_PlayerDeltarune)
{
    draw_sprite_ext(spr_TestPlayer, image_index, x, y, image_xscale, image_yscale, 0, make_colour_hsv(global.SoulColour,255,SoulSat), 1);
}

// ====
#region Draw Light beam

//draw light
gpu_set_blendmode(bm_subtract);

gpu_set_ztestenable(true);
gpu_set_zfunc(cmpfunc_less);

var _tex = surface_get_texture(Shade_Surface)

draw_set_color(c_white)
draw_set_alpha(1)

draw_primitive_begin(pr_trianglestrip);
for (var i = 0; i < ds_grid_height(grid); i++)
{
    var p = grid[# 0, i];
    var q = grid[# 0, (i < ds_grid_height(grid) - 1) ? (i + 1) : 0];
    
    draw_vertex_color(x, y, col, TriAlpha);
    draw_vertex_color(p.x, p.y, col, TriAlpha);
    draw_vertex_color(q.x, q.y, col, TriAlpha);
    
}
draw_primitive_end();
draw_set_color(c_black)
draw_set_alpha(1)

gpu_set_zfunc(cmpfunc_lessequal);
gpu_set_ztestenable(false);

#endregion

// ====
gpu_set_blendmode(bm_normal);
//==
surface_reset_target();

#endregion

//After draw
draw_self()
