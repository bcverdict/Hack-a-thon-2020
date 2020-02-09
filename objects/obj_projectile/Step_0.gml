adBlocker.x=x;
adBlocker.y=y;

collision = instance_place(x,y,obj_enemy);
if(collision != noone){
	collision.Health -= 5;
	instance_destroy(adBlocker);
	instance_destroy();
}