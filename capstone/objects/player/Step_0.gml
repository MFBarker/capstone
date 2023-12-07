/// @description Movement
CheckAnimation();

//(Tutorial 1)
//inputs
var keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);

var keyJump = keyboard_check_pressed(vk_space);
var keyJumpReleased = keyboard_check_released(vk_space);

var isGrounded = place_meeting(x, y + 1,obj_wall);

var isDead = (health == 0);

//custom ones
var keySword = keyboard_check(ord("T"));
var keyCrouch = keyboard_check(ord("S")) || keyboard_check(vk_down);
var keyHide = keyboard_check(ord("V"));


var keyInventory = keyboard_check(vk_tab);


//------------Horizontal Movement

//direction
var move = (keyRight - keyLeft) * movespd;

var sprint = 2;

if(global.can_move != true) move = 0;
if(global.tb == true) move = 0;

if (keyboard_check(vk_shift) && move)
{
	if(_facing == 1) //right
	{
		move *= sprint;
	}
	else //left or -1
	{
		move *= (sprint*movespd);
	}
	
	image_speed = 2;
}
else if(keyboard_check_released(vk_shift))
{
	image_speed = 1;
}
else if(keyboard_check(vk_shift))
{
	//no movement
	if (_facing == -1)
	{
		sprite_index = player_idle_left;
	}
	else //(_facing == 1)
	{
		sprite_index = player_idle;
	}
}

//collision check
if(place_meeting(x + move, y,obj_walkable))
{
	while (!place_meeting(x + sign(move),y, obj_walkable))
	{
		x += sign(move);
	}
	move = 0;
}
//commit to move
if(!keyHide) x += move; //hide functionality


//----------Vertical Movement
vspd += grav; //apply gravity

//collision check
if(place_meeting(x, y+vspd,obj_walkable))
{
	while (!place_meeting(x, y + sign(vspd),obj_walkable))
	{
		y+= sign(vspd);
	}
	vspd = 0;
}

if(isGrounded) // on ground
{
	canJump = 10;
	canDoubleJump = false;
}
else canJump -= 1;

//jumping move
if(canDoubleJump and keyJump) //double jump
{
	vspd = 0;
	vspd -= jumpheight;
	canDoubleJump = false;
	
}
if (canJump and keyJump) //normal jump
{
	vspd = 0
	canJump = 0;
	canDoubleJump = true;
	vspd -= jumpheight;
	
}

//commit to move
y += vspd;

//------------------------
	
//Animation
if (global.tb != true)
{
	if(global.can_move == true)
	{
		if(keyLeft)
		{
			sprite_index = player_run_l;
			_facing = -1;
		}
		else if(keyRight)
		{
			sprite_index = player_run_r;
			_facing = 1;
		}
		else if (keyboard_check(vk_nokey))
		{
			if (image_speed != 1) image_speed = 1;
			if (_facing == -1)
			{
				sprite_index = player_idle_left;
			}
			else //(_facing == 1)
			{
				sprite_index = player_idle;
			}
		}
	
		//Crouch
		if(keyCrouch)
		{
			sprite_index = player_crouch_idle;
			if (keyCrouch && keyLeft)
			{
				sprite_index = player_crouch_walk_left;
			}
			else if (keyCrouch && keyRight)
			{
				sprite_index = player_crouch_walk_right;
			}
		}

		var canPlay = true;
		//hide (will change once the thing is able to be unlocked)
		if(keyHide && global.cloak == true)
		{
			
			global.player_hidden = true;
			//restrict movement is done above (ln 66)
			if (_facing == -1)
			{
				sprite_index = player_hide_left;
			}
			else //(_facing == 1)
			{
				sprite_index = player_hide;
			}
			
			
		}
		else if(!keyHide) 
		{
			if(global.player_hidden != false)
			{
				global.player_hidden = false;
			}
			
		}
		
		if(keyboard_check_pressed(ord("V")))
		{
			if(canPlay)
			{
				audio_play_sound(snd_cloak,50,false);
				canPlay = false;
			}
		}
		else if(keyboard_check_released(ord("V")))
		{
			canPlay = true;
		}
		
		//jump code animation
		if(keyJump)
		{
			//sprite_index = player_jump;	
			if (_facing == -1)
			{
				sprite_index = player_jump_l;
			}
			else //(_facing == 1)
			{
				sprite_index = player_jump;
			}
		}
		//attack
		if (keySword) 
		{
			sprite_index = player_sword;
			audio_play_sound(snd_player_slash,50,false);
		}
	}
	//dead
	if(isDead)
	{
		sprite_index = player_death;
		//audio_play_sound(snd_player_death,50,false);
	}
}