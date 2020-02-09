/// @description Insert description here
// You can write your code in this editor


if(Health<=0){
	sprite_index = s_boy_dead;
	if(timer<=0){
		game_end();
		instance_destroy();
	}else{
		timer -= 1;
	}
}else{
	if ((done == false) && (instance_exists(obj_text_box) == false)){
		my_text_box = instance_create_layer(x-(sprite_get_width(s_text_box)/2),y+100,"player_layer",obj_text_box);
		my_text_box.my_text = my_text2;
		done = true;
	}
	if(mouse_check_button_pressed(mb_right)){
		instance_create_layer(x,y,"player_layer",obj_projectile);
	}

	Press_left = keyboard_check(ord("A"));
	Press_right = keyboard_check(ord("D"));
	Press_up = keyboard_check(ord("W"));
	Press_down = keyboard_check(ord("S"));

	Movement_x = 0;
	Movement_y = 0;

	if(Press_left){
		Movement_x = -Movement_speed;
	}
	if(Press_right){
		Movement_x += Movement_speed
	}
	if(Press_down){
		Movement_y = Movement_speed;
	}
	if(Press_up){
		Movement_y -= Movement_speed
	}

	if(Movement_x!=0){
		image_xscale = sign(Movement_x);
	}
	if(place_meeting(x,y+Movement_y,obj_solid)){
		while(!place_meeting(x,y+sign(Movement_y),obj_solid)){
			y+=sign(Movement_y);
		}
		Movement_y=0;
	}
	if(place_meeting(x+Movement_x,y,obj_solid)){
		while(!place_meeting(x+Movement_x,y,obj_solid)){
			x+=sign(Movement_x);
		}
		Movement_x=0;
	}
	if(Movement_x!=0 || Movement_y!=0){
		sprite_index = s_boy_run;
	}
	else if((Movement_x==0 && Movement_y==0)){
		sprite_index = s_boy_idle;
	}
	x += Movement_x;
	y += Movement_y;

	char_hurtbox.x = x;
	char_hurtbox.y = y;

}