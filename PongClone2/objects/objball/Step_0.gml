/// @descriptison Bounce &reset

//this takes care of the ball bouncing off ceiling and floor

if(y <=sprite_height/2 || y>= room_height-(sprite_height/2))	// || is the same as OR
{
	vspeed *=-1;
}

//this takes care of reseting after the ball goes past the paddle on each side

if (x<=0 || x >= room_width)
{
	x=xstart
	y=ystart
}