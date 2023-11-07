/// @description Initial Variables

//anim shortcuts
player_idle = spr_player_idle;
player_idle_left = spr_player_idle_left;
player_run_l = spr_player_run_left;
player_run_r = spr_player_run;
player_jump = spr_player_jump;
player_jump_l = spr_player_jump; //not working *
player_death = spr_player_death;
player_sword = spr_player_attack;
player_crouch_idle = spr_player_idle; //no sprite *
player_crouch_walk_left = spr_player_run_left; //none *
player_crouch_walk_right = spr_player_run; //none *
player_hide = spr_player_hide;

//Horizontal Movement
movespd = 5;

//Vertical Movement (tutorial 1)
grav = 0.3;
jumpheight = 9; //7
vspd = 0;
canJump = 0;
canDoubleJump = false;

//traching what room player is in (credit to chamaeleon, "tutorial" 2)
the_last_room = noone;
the_current_room = room;


//direction
_facing = 1;

//sequences
enabled = true;

Enable = function () {
	enabled = true;
	image_alpha = 1;
}

Disable = function () {
	enabled = false;
	alarm[0] = 1;
	moveX = 0;
	moveY = 0;
}

activeAnimation = -1;
sequenceLayer = -1;
activeSequence = -1;

StartAnimation = function (_sequence) {
	activeAnimation = _sequence;
	sequenceLayer = layer_create(depth);
	activeSequence = layer_sequence_create(sequenceLayer, x, y, _sequence);
	layer_sequence_xscale(activeSequence, image_xscale);
	
	Disable();
}

CheckAnimation = function () {
	if (activeSequence == undefined) return;
	
	if (layer_sequence_is_finished(activeSequence)) {
		layer_sequence_destroy(activeSequence);
		layer_destroy(sequenceLayer);
		
		activeAnimation = -1;
		activeSequence = -1;
		sequenceLayer = -1;
		
		Enable();
	}
}

/*
TUTORIAL LINKS:
1. "GameMaker Studio 2 - Jumping" by Caz Creates (https://www.youtube.com/watch?v=bhAewBxIUv4)
2. https://forum.gamemaker.io/index.php?threads/previous-visited-room.44126/ (not a tutorial, but will list as a reference)
3. https://gamemaker.io/en/tutorials/cameras-and-views (reference)
*/