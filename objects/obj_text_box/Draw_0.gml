/// @description Insert description here
// You can write your code in this editor
draw_sprite(s_text_box,0,x,y);
draw_set_font(f_text_box);
draw_text_ext(x+4,y,temp_text,string_height(temp_text),box_width-7);

if((alarm[0]==-1) && (temp_text != my_text) && (my_text != "")) {
	temp_text += string_char_at(my_text,index);
	index += 1;
	alarm[0] = 5;
}
if(mouse_check_button_pressed(mb_left)){
	if(temp_text!=my_text){
		temp_text = my_text;
	}else{
		depth = 1000;
		instance_destroy();
	}
}