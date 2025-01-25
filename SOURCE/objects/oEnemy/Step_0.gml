
if(x < oPlayer.x)
{
	xSpeed = min(moveSpeed, oPlayer.x - x);
	//if(x + xSpeed > oPlayer.x) xSpeed = oPlayer.x - x;
	//else xSpeed = moveSpeed;
}
else if(x > oPlayer.x)
{
	//xSpeed = min(abs(moveSpeed), abs(x - oPlayer.x)) * -1;
	xSpeed = min(-moveSpeed, x - oPlayer.x);
	
	//if(x - xSpeed < oPlayer.x) xSpeed = x - oPlayer.x;
	//else xSpeed = -moveSpeed;
}
else xSpeed = 0;

if(y < oPlayer.y)
{
	ySpeed = min(moveSpeed, oPlayer.y - y);
}
else if(y > oPlayer.y)
{
	ySpeed = min(-moveSpeed, y - oPlayer.y);
}
else ySpeed = 0;

event_inherited();

