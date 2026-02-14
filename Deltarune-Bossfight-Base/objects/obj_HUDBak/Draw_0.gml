// obj_HUD - Draw Event
//== Before drawing on surfaces ==

//Check spellcard is active
if (global.SpellActive == true)
{
	if (SpellAlpha < 1)
	{
		SpellAlpha += 1/30 * global.WorldSpeed;
	}
}
else
{
	if (SpellAlpha > 0)
	{
		SpellAlpha -= 1/30 * global.WorldSpeed;
	}	
}

// == draw stuff ==

StageBackground[global.StageBG](-StageBGVar);
SpellBackground[global.SpellBG]();

//===========