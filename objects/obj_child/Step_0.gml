/// @description Insert description here
// You can write your code in this editor

if((place_free(x,y)) && (done)){
	hasCollided = false;
	done = false;
}
if((place_meeting(x,y,obj_player)) && (instance_exists(obj_text_box)==false) && (hasCollided==false)){
	my_text_box = instance_create_layer(x,y+100,"player_layer",obj_text_box);
	my_text_box.my_text = my_text1;
	hasCollided = true;
}
if((hasCollided) && (instance_exists(obj_text_box)==false) && (done==false)){
	my_text_box = instance_create_layer(x,y+100,"player_layer",obj_text_box);
	my_text_box.my_text = my_text2;
	done = true;
}