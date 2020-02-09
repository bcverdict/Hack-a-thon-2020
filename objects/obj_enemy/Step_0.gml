/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player)>range1){
	direction=point_direction(x, y, obj_player.x, obj_player.y);
}else if(alarm[0] == -1){
	direction=point_direction(x, y, obj_player.x, obj_player.y)+power(-90,irandom(1));
	alarm[0] = random_range(10,30);
}
collision = instance_place(x,y,obj_char_hurtbox);
if(collision){
	obj_player.Health -= 0.5;
}
if(Health<=0){
	instance_destroy();
}