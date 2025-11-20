function lanturn_effect(xpos, ypos ,MaxSize, RingNumber, InnerRing)
{
	/* 
	MaxSize: The size of the whole spotlight
	RingNumber: Number of gradient rings
	minSize: how far into the circle gradent goes
	*/
		
	draw_set_color(c_black);

	var alp = 0; 
	var Size = 0;
		
	for(var i = 0; i <= RingNumber; i++)
	{
		draw_set_alpha(alp);
		draw_circle(xpos, ypos, MaxSize-Size, 0);
		alp += 1/RingNumber;
		Size += InnerRing/RingNumber;
	}
	draw_set_alpha(1);
}

