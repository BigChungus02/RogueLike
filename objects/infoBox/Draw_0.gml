draw_set_font(global.font_main);

var _new_w = 0;
for (var i = 0; i < lines; i++)
{
	var _op_w = string_width(line[i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2;
height = op_border*2 + string_height(line[0]) + (lines-1)*op_space;

x = round(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2);
y = round(camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2);

draw_sprite_ext(sprite_index, image_index, x, y, width/24, height/24, 0, c_white, 1);

draw_set_valign(fa_top);
draw_set_halign(fa_center);

for (var i = 0; i < lines; i++)
{
	draw_text((x+op_border) + _new_w/2, y+op_border + op_space*i, line[i])
}