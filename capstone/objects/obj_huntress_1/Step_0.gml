/// @description Insert description here
var move = x* speed;
if(place_meeting(x + move, y,obj_walkable))
{
	while (!place_meeting(x + sign(move),y, obj_walkable))
	{
		x += sign(move);
	}
	move = 0;
}


//animation
enum ANIM
{
	_IDLE,
	_RUN,
	_ATTACK,
	_HIT,
	_DEATH
}

switch(state)
{
	case ANIM._IDLE:
		sprite_index = spr_idle;
		speed = 0;
		break;
	case ANIM._RUN:
		sprite_index = spr_run;
		speed = 2;
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

//path stuff ()
if (path_endaction == path_action_stop)
{
	// make the enemy pause for a few seconds then reverse
	var _timer = 40;
	while ( _timer != 0)
	{
		if (state != ANIM._IDLE)
		{
			state = ANIM._IDLE;
			speed = 0;
			_timer--;
		}
		else _timer--;
	}
	
	if (_timer == 0)
	{
		path_endaction = path_action_reverse;
		state = ANIM._RUN;
	}
}

