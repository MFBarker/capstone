/// oEnemy - Collision event with oPlayerHitbox
if (!attackable) exit;

hp --;

attackable = false;
alarm[0] = 30;

var _dir = point_direction(player.x, player.y, x, y);
moveX = lengthdir_x(knockSpeed, _dir);
moveY = lengthdir_y(knockSpeed, _dir);

if (hp <= 0) {
	sprite_index = spr_death; // inherit event and set variable
}
else {
	image_alpha = 0.6;
}



