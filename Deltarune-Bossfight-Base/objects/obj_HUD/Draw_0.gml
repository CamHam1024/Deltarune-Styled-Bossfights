#region test background

StageBG_MiddyLab(MoveVariable);
draw_set_alpha(0.6);
draw_rectangle_colour(0, 0, 2500, 1500, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);

MoveVariable += 1;

//draw_sprite(spr_testBackground1, 0, room_width/2, 1500)

#endregion