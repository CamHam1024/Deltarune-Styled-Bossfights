// obj_PlayArea - Create Event
AttackStart = true;

xsize = 150;
ysize = 100;

PAX1 = x-xsize; // top left x
PAY1 = y-ysize; // top left y

PAX2 = x+xsize; // bottom right x
PAY2 = y+ysize; // Bottom right y

dis = point_distance(x, y, PAX1, PAY1); // left
dis1 = point_distance(x, y, PAX1, PAY1); // left

dir1 =  point_direction(x, y, PAX1, PAY1); // top left
dir2 =  point_direction(x, y, PAX2, PAY1); // top right

dir3 = point_direction(x, y, PAX1, PAY2); // bottom left
dir4 = point_direction(x, y, PAX2, PAY2); // bottom right

mag = 10;
adg1 = 45+180//225;
adg2 = 45+270//345;
adg3 = 45+90//165;
adg4 = 45//75;

AniTimer = 0;

radius = 0; //Radius of the length_dir
spindir = 0;

//Battle Surface
battleSurface = surface_create(room_width, room_height); 
LightBGVar = 0
//create soul when box is created
PlaySoul = instance_create_depth(400, room_height/2, -2, obj_PlayInandOut);
PlaySoul.destPosX = room_width/2;
PlaySoul.destPosY = room_height/2;

