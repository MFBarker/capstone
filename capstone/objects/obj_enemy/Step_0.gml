/// @description Insert description here
// You can write your code in this editor

//converted gml visual to code from tutorial (https://gamemaker.io/en/tutorials/heros-trail-dnd-4)
var l1C896CD8_0 = collision_rectangle(x + -200, y + -200, x + 200, y + 200, player, true, 1);
if((l1C896CD8_0))
{
	if(!global.player_hidden)
	{
		speed = 2;
		direction = point_direction(x, y, player.x, player.y);
	
		show_debug_message("Player Spotted");
		if(path_to_follow != -1)
		{
			path_end();
			path_broken = true;
		}
	}
	else
	{
		speed = 2;
		if(path_broken)
		{
			show_debug_message("Path Reset - End Chase")
			path_start(path_to_follow, path_spd, path_actn, path_absol);
			path_broken = false;
		}
	}
}
else
{
	speed = 2;
	if(path_broken)
	{
		path_start(path_to_follow, path_spd, path_actn, path_absol);
		show_debug_message("Path Reset - no chase");
		path_broken = false;
	}
}

switch(state)
{
	case ANIM._IDLE:
		sprite_index = spr_idle;
		break;
	case ANIM._RUN:
		sprite_index = spr_run;
		break;
	case ANIM._ATTACK:
		sprite_index = spr_attack;
		break;
	case ANIM._HIT:
		sprite_index = spr_hit;
		break;
	case ANIM._DEATH:
		sprite_index = spr_death;
		break;
}

/* COLLISIONS */
if(place_meeting(x, y,player))
{
	if(!global.player_hidden)
	{
		if (atk_count == 0)
		{
			health -= 10;
			atk_count++;
		}
		else
		{
			if(alarm[1] == -1)
			{
				alarm[1] = 100;
			}
		}
	}
}

if(place_meeting(x, y, obj_walkable))
{
	while (!place_meeting(x,y, obj_walkable))
	{
		speed = 2;
		direction += 4;
	}
}