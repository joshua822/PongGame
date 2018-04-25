/// @description Move player 2 paddle

mySpeed=20

if keyboard_check(vk_up)
{
	y=y-mySpeed
}

if keyboard_check(vk_down)
{
	y=y+mySpeed
}

y=clamp(y, sprite_height/2, room_height-(sprite_height/2));

