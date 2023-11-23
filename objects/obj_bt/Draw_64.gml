 draw_self();
//Verifica se está selecionado e destaca em amarelo
var _color = merge_color(c_white, c_yellow, hover)
draw_set_color(_color)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, _color, image_alpha);

//Texto do botão
draw_set_font(ft_menu_21);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Verifica se o texto é grande e troca por uma fonte menor
if(string_length(text) > 7){
	draw_set_font(ft_menu_16);
}

//Escreve o texto
draw_text(x+width/2,y+height/2,text);

//Escreve o título do botão se houver um
if(string_length(title) > 0){
	draw_set_color(c_white)
	switch(title_position){
		case "up":
			draw_text(x+width/2,y-height/2,title)
			break;
		case "down":
			draw_text(x+width/2,y+height/2,title)
			break;
		case "left":
			draw_text(x-width/2,y+height/2,title)
			break;
		case "right":
			draw_text(x+width/2,y+height/2,title)
			break;
	}
}

//Reseta os parametros para o default
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);