//Input
var leftKey = keyboard_check(vk_left) || keyboard_check(ord("A"));
var rightKey = keyboard_check(vk_right) || keyboard_check(ord("D"));
var upKey = keyboard_check(vk_up) || keyboard_check(ord("W"));
var downKey = keyboard_check(vk_down) || keyboard_check(ord("S"));

var spaceKey = keyboard_check(vk_space);
if(spaceKey && nextArrowReady <= 0)
{
	var lastDirX = currentDirectionVector[0];
	var lastDirY = currentDirectionVector[1];
	var arrowInstance = instance_create_layer(x + (lastDirX * 15), y + (lastDirY * 15), "Instances", oArrow);
	with(arrowInstance)
	{
		xDir = lastDirX;
		yDir = lastDirY;
		
		if(yDir > 0 && xDir > 0) image_angle = 315;
		if(yDir > 0 && xDir == 0) image_angle = 270;
		if(yDir > 0 && xDir < 0) image_angle = 225;

		if(yDir == 0 && xDir < 0) image_angle = 180;

		if(yDir < 0 && xDir < 0) image_angle = 135;
		if(yDir < 0 && xDir == 0) image_angle = 90;
		if(yDir < 0 && xDir > 0) image_angle = 45;

		if(yDir == 0 && xDir > 0) image_angle = 0;
	}
	
	nextArrowReady = arrowCooldown;
}
if(nextArrowReady > 0) nextArrowReady -= delta_time / 1000000;

//MoveSpeed
xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

var doorInstance  = instance_place(x + xSpeed, y + ySpeed, oDoor);
var keyInstance = instance_place(x + xSpeed, y + ySpeed, oKey);

event_inherited();


if(doorInstance != noone)
{
	if(global.collectedKeys[doorInstance.keyColor] > 0)
	{
		global.collectedKeys[doorInstance.keyColor] -= 1;
		instance_destroy(doorInstance);	
	}
}

if(keyInstance  != noone)
{
	global.collectedKeys[keyInstance.keyColor] += 1;
	instance_destroy(keyInstance);
}