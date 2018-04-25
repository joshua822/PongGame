/// @descriptison Bounce &reset

//this takes care of the ball bouncing off ceiling and floor
if(y <=sprite_height/2 || y>= room_height-(sprite_height/2))	// || is the same as OR
{
	vspeed *=-1;
}

//check if player scored

if (x<=0 )||(x>=1024) // 0 is the left side of screen and 1024 is right side.
{
	// which player scored
	if (x>=1024)
	global.player1_score+=1;
	else
	global.player2_score+=1;



	//check if winning score is reached is so show new room
	if (global.player1_score=10)	//change this number to 10 after test
	{
		room_goto(rmP1Win)
	}
	if (global.player2_score=10)//change this number to 10 after test
	{
	room_goto(rmP2Win)	
	}
}

//this takes care of reseting after the ball goes past the paddle on each side

if (x<=0 || x >= room_width)
{
	x=xstart
	y=ystart
}