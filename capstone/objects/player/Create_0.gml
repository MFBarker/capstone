/// @description Initial Variables

//anim shortcuts
player_idle = spr_temp_player_idle;
player_run_l = spr_temp_player_run_left;
player_run_r = spr_temp_player_run_right;
player_jump = spr_temp_player_jump;
player_death = spr_temp_player_death;
player_punch = spr_temp_player_punch;
player_crouch_idle = spr_temp_player_crouch_idle;
player_crouch_walk_left = spr_temp_player_crouch_walk_left;
player_crouch_walk_right = spr_temp_player_crouch_walk_right;
player_hide = spr_temp_player_hide;

//Horizontal Movement
movespd = 5;

//Vertical Movement (tutorial 1)
grav = 0.3;
jumpheight = 7;
vspd = 0;
canJump = 0;
canDoubleJump = false;

//traching what room player is in (credit to chamaeleon, "tutorial" 2)
the_last_room = noone;
the_current_room = room;


/*
TUTORIAL LINKS:
1. "GameMaker Studio 2 - Jumping" by Caz Creates (https://www.youtube.com/watch?v=bhAewBxIUv4)
2. https://forum.gamemaker.io/index.php?threads/previous-visited-room.44126/ (not a tutorial, but will list as a reference)
3. https://gamemaker.io/en/tutorials/cameras-and-views (reference)
*/