enum keyColors
{
	yellow,
	blue,
	green,
	aqua,
	purple,
	pink,
	red,
	lastIndex
}

global.collectedKeys = [];
global.keySprites = [];

for(var i = 0; i < keyColors.lastIndex; i++)
{
	array_set(global.collectedKeys, i, 0);
}

array_set(global.keySprites, keyColors.yellow, sKeyYellow);
array_set(global.keySprites, keyColors.blue, sKeyBlue);
array_set(global.keySprites, keyColors.aqua, sKeyAqua);
array_set(global.keySprites, keyColors.green, sKeyGreen);
array_set(global.keySprites, keyColors.pink, sKeyPink);
array_set(global.keySprites, keyColors.purple, sKeyPurple);
array_set(global.keySprites, keyColors.red, sKeyRed);

instance_create_layer(0, 0, "Instances", oCamera);
instance_create_layer(0, 0, "Instances", oGUI);