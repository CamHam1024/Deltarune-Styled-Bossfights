draw_set_color(c_green);
draw_set_font(fnt_System);

var adj = 170
draw_text(50, 1080-adj, "Zoom Time: " + string(zoomtime));
draw_text(50, 1080-adj, "\nZoom rate: " + string(zoomrate));
draw_text(50, 1080-adj, "\n\nZoom Min max: " + string(zoomMinMax));
draw_text(50, 1080-adj, "\n\n\nCam W: " + string(camW));
draw_text(50, 1080-adj, "\n\n\n\nCam H: " + string(camH));