// obj_HUD - Destroy Event
//just to clear the play surface
if (surface_exists(global.Background_Surface[0])){ surface_free(global.Background_Surface[0]); }
if (surface_exists(global.Background_Surface[1])){ surface_free(global.Background_Surface[1]); }