moveSpeed = 2;
xSpeed = 0;
ySpeed = 0;
health_points = 1;

enum moveDirection
{
	left = 0,
	right = 1,
	up = 2,
	down = 3,
	upLeft = 4,
	upRight = 5,
	downLeft = 6,
	downRight = 7
}

moveDirectionVector = [];

moveDirectionVector[moveDirection.left] = [-1, 0];
moveDirectionVector[moveDirection.right] = [1, 0];
moveDirectionVector[moveDirection.up] = [0, -1];
moveDirectionVector[moveDirection.down] = [0, 1];

moveDirectionVector[moveDirection.upLeft] = [-1, -1];
moveDirectionVector[moveDirection.upRight] = [1, -1];
moveDirectionVector[moveDirection.downLeft] = [-1, 1];
moveDirectionVector[moveDirection.downRight] = [1, 1];



currentDirection = moveDirection.down;
currentDirectionVector = moveDirectionVector[currentDirection];

walkSpriteList =
[
	sPlayerWalkLeft,
	sPlayerWalkRight,
	sPlayerWalkUp,
	sPlayerWalkDown,
	sPlayerWalkUpLeft,
	sPlayerWalkUpRight,
	sPlayerWalkDownLeft,
	sPlayerWalkDownRight
]
