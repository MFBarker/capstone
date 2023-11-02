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
//if (path_to_follow == "huntresspath1" && x == 1312 && y == 512)
switch(stage){
    case 1:
        //moving from path position 0 to 1
        if path_position == 1 {
            stage = 2;
            //how long to wait at end of path for
            pause_timer = room_speed * 2;
        }
    break;
    case 2:
        //pausing at path position 1
        pause_timer--;
        if pause_timer <= 0 {
            //start path again
            path_start(path, spd, path_action_stop, 0);
            //this time reverse the movement though
            path_reverse(path)
            //ensure stage only runs once
            stage = 3;
        }
    break
    case 3:
        //enable animation to play again by reseting
        if path_position == 1 {
            path_reverse(path);
            stage = 0;
        }
    break;
}

