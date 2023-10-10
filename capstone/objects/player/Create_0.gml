/// @description Initial Variables


////////////
lives=3;
health = 100;

//anim shortcuts
player_idle = spr_temp_player_idle;
player_run_L = spr_temp_player_run_left;
player_run_R = spr_temp_player_run_right;
player_jump = spr_temp_player_jump;
player_death = spr_temp_player_death;

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
*/