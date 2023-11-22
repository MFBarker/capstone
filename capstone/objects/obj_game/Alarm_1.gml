//reset values
health = global._max_health;
lives = global._max_lives;
global.can_move = true;



//move on
instance_destroy(player);
room_goto(rm_title);




