var xSpeed = xDir * moveSpeed;
var ySpeed = yDir * moveSpeed;

if(place_meeting(x + xSpeed, y + ySpeed, [oWall, oDoor]))
{
	instance_destroy(self);
}

var targetInstance = instance_place(x + xSpeed, y + ySpeed, [oEnemy, oEnemySpawner]);

with(targetInstance)
{
	targetInstance.health_points -= 1;
	if(targetInstance.health_points <= 0) instance_destroy(targetInstance);
	instance_destroy(other);
}

x += xSpeed;
y += ySpeed;