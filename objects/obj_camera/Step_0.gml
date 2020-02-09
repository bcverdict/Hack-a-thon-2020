/// @description Insert description here
// You can write your code in this editor
camera_x = lerp(obj_player.x,mouse_x,0.2)-(view_width/2);
camera_y = lerp(obj_player.y,mouse_y,0.2)-(view_height/2);


camera_x = clamp(camera_x,0,room_width-view_width);
camera_y = clamp(camera_y,0,room_height-view_height);

camera_set_view_pos(view_camera[0],camera_x,camera_y);