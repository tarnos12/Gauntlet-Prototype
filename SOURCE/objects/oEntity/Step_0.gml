// Update sprite to match direction we walk


if(ySpeed > 0 && xSpeed == 0) currentDirection = moveDirection.down;
if(ySpeed > 0 && xSpeed > 0) currentDirection = moveDirection.downRight;
if(ySpeed > 0 && xSpeed < 0) currentDirection = moveDirection.downLeft;

if(ySpeed == 0 && xSpeed > 0) currentDirection = moveDirection.right;
if(ySpeed == 0 && xSpeed < 0) currentDirection = moveDirection.left;

if(ySpeed < 0 && xSpeed == 0) currentDirection = moveDirection.up;
if(ySpeed < 0 && xSpeed > 0) currentDirection = moveDirection.upRight;
if(ySpeed < 0 && xSpeed < 0) currentDirection = moveDirection.upLeft;

currentDirectionVector = moveDirectionVector[currentDirection];

sprite_index = walkSpriteList[currentDirection];

// Check collision
if(place_meeting(x + xSpeed, y, [oWall, oEntity, oDoor]))
{
	while(!place_meeting(x + sign(xSpeed), y, [oWall, oEntity, oDoor]))
	{
		x += sign(xSpeed);
	}
	xSpeed = 0;
}
if(place_meeting(x, y + ySpeed, [oWall, oEntity, oDoor]))
{
	while(!place_meeting(x, y + sign(ySpeed), [oWall, oEntity, oDoor]))
	{
		y += sign(ySpeed);
	}
	ySpeed = 0;
}
// Check collision

//Move
x += xSpeed;
y += ySpeed;
