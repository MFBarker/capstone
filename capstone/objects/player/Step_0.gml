/// @description Movement

//(Tutorial 1)
//inputs
var keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);

var keyJump = keyboard_check_pressed(vk_space);
var keyJumpReleased = keyboard_check_released(vk_space);

var isGrounded = place_meeting(x, y + 1,obj_wall);

var isDead = (health == 0);

//---------------------------
//------------Horizontal Movement

//direction
var move = (keyRight - keyLeft) * movespd;

//collision check
if(place_meeting(x + move, y,obj_wall))
{
	while (!place_meeting(x + sign(move),y, obj_wall))
	{
		x += sign(move);
	}
	move = 0;
}
//commit to move
x += move;

//-----------------------

//----------Vertical Movement
vspd += grav; //apply gravity

//collision check
if(place_meeting(x, y+vspd,obj_wall))
{
	while (!place_meeting(x, y + sign(vspd),obj_wall))
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
	
	if(sprite_index != spr_temp_player_jump) sprite_index = spr_temp_player_jump;
}
if (canJump and keyJump) //normal jump
{
	vspd = 0
	canJump = 0;
	canDoubleJump = true;
	vspd -= jumpheight;
	sprite_index = spr_temp_player_jump;
}

//commit to move
y += vspd;

//------------------------
//Animation
if(keyLeft)
{
	sprite_index = player_run_L;
	
}
else if(keyRight)
{
	sprite_index = player_run_R;
}
else
{
	sprite_index = player_idle;
}

if(keyJump)
{
	sprite_index = player_jump;
}

if(isDead)
{
	sprite_index = player_death;
}

//exit if escape key (DEBUG ONLY)
if(keyboard_check(vk_escape))
{
	game_end();
}
