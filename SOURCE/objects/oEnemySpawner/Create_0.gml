health_points = 1;

spawn_cooldown = 3;
var _spawn_method = function()
{
	if(!place_meeting(x, y, [oWall, oEntity, oDoor]))
	{
		var _enemy_instance = instance_create_layer(x, y, "Instances", oEnemy);
	}
}

spawner = time_source_create(time_source_game, spawn_cooldown, time_source_units_seconds, _spawn_method, [], -1, time_source_expire_after)

time_source_start(spawner);