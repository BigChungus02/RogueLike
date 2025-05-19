var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 64;

// Health bar
draw_set_font(global.font2x_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, $"HP {hp}/{hp_total}");

// xp bar
var _xp_barw = _barw * (xp / xp_require);
if level == 10 {_xp_barw = _barw;}
_dy += _barh + (_barh/4);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_lime, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, $"Level {level}");

// ability bar
var _ability1_barw = ((_barw / 2) * (timer1 / a1_cooldown)) / 2;
_dy = 16;
_dx = _barw + (_barw/8);
_barw = _barw/4

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _ability1_barw, _barh, c_black, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "Q");

var _ability2_barw = ((_barw / 2) * (timer2 / a2_cooldown)) * 2;
_dx = (_barw*4) + (_barw*1.75);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _ability2_barw, _barh, c_black, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "E");

// wave bar
_dx = 1650;
_dy = 16;
_barw = 256;
_barh = 64;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_text(_dx + _barw / 2, _dy + _barh / 2, $"Wave {wave}");

draw_set_halign(fa_left);
draw_set_valign(fa_top);