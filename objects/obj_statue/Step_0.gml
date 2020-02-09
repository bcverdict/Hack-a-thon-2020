/// @description Insert description here
// You can write your code in this editor
if((place_meeting(x,y,obj_player)==false) && (done == true)){
	my_text_box = 0;
	done = false;
	instance_destroy(nic);
	instance_destroy(accu);
	instance_destroy(aws);
	instance_destroy(sec);
	my_text_box = instance_create_layer(x-(sprite_get_width(s_text_box)/2),y+100,"player_layer",obj_text_box);
	my_text_box.my_text = my_text2;
}
	
if((place_meeting(x,y,obj_player)) && (instance_exists(obj_text_box)==false) && (done == false)){
	my_text_box = instance_create_layer(x-(sprite_get_width(s_text_box)/2),y+100,"player_layer",obj_text_box);
	my_text_box.my_text = my_text1;
	done = true;
}
if((done == true) && (nic==0)){
	nic = instance_create_layer(x,y,"player_layer",obj_ad);
	with(nic){
		sprite_index = s_NIC;
	}
	
	accu = instance_create_layer(x-200,y,"player_layer",obj_ad);
	with(accu){
		sprite_index = s_Accuweather;
	}
	
	aws = instance_create_layer(x+100,y+230,"player_layer",obj_ad);
	with(aws){
		sprite_index = s_AWS;
	}
	
	sec = instance_create_layer(x-300,y-300,"player_layer",obj_ad);
	with(sec){
		sprite_index = s_Securitybenefit;
	}
}