var cameraX = camera_get_view_x(view_camera[0]);
var cameraY = camera_get_view_y(view_camera[0]);

var targetX = oPlayer.x - camera_get_view_width(view_camera[0]) / 2;
var targetY = oPlayer.y - camera_get_view_height(view_camera[0]) / 2;

targetX = clamp(targetX, 0, room_width - 800);
targetY = clamp(targetY, 0,  room_height - 640);

cameraX = lerp(cameraX, targetX, cameraSpeed);
cameraY = lerp(cameraY, targetY, cameraSpeed);



camera_set_view_pos(view_camera[0], cameraX, cameraY);

//camera_set_view_pos(view_camera[0], oPlayer.x - (view_wport[0] / 2), oPlayer.y - (view_hport[0] / 2));