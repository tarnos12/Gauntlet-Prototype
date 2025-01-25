/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_black);
draw_rectangle(0, 0, 1400, 50, false);
	
draw_set_color(c_white);
for(var i = 0; i < array_length(global.collectedKeys); i++)
{
	var xPos = 20 + (50 * i);
	draw_sprite(global.keySprites[i], 0, xPos, 10);
	draw_text(xPos + 10, 30, global.collectedKeys[i]);
}

