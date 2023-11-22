/// @description go to game over
// You can write your code in this editor

//reset values
health = global._max_health;
lives = global._max_lives;
global.can_move = true;


//move on
instance_destroy(player);
room_goto(rm_game_over);






