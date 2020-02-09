/// @description Insert description here
// You can write your code in this editor
room_goto_next();
obj_player.x = 1000;

obj_camera.camera_x = camera_get_view_x(view_camera[0]);
obj_camera.camera_y = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0],obj_camera.camera_x,obj_camera.camera_y);