var xSpeed = xDir * moveSpeed;
var ySpeed = yDir * moveSpeed;

if(place_meeting(x + xSpeed, y + ySpeed, [oWall, oDoor]))
{
	instance_destroy(self);
}

var enemyInstance = instance_place(x + xSpeed, y + ySpeed, oEnemy);

with(enemyInstance)
{
	instance_destroy(enemyInstance);
	instance_destroy(other);
}

x += xSpeed;
y += ySpeed;