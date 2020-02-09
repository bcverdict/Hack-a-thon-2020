/// @description Insert description here
// You can write your code in this editor
Movement_speed = 1.5;
Movement_x = 0;
Movement_y = 0;

char_hurtbox = instance_create_depth(x,y,-1000,obj_char_hurtbox);
Health = 100;

my_text1 = "My virtual glasses stopped working. It'll be hard to get around in a smart city without them"
my_text2 = "I guess I need to find some landmarks"
my_text_box = instance_create_layer(x-(sprite_get_width(s_text_box)/2),y+20,"player_layer",obj_text_box);
my_text_box.my_text = my_text1;
done = false;
depth = -1000;
timer = 40;

audio_play_sound(sound_background,1000,true);