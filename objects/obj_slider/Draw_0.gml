if(active){
	// Define os parametros de texto
	draw_set_font(ft_menu_21)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	// Desenha o slider e a bolinha
	draw_set_color(c_ltgray)
	draw_rectangle(x, y - 5, x + width, y + height, false);

	// Verifica se está selecionado e destaca em amarelo
	var _color = merge_color(c_white, c_yellow, hover)
	draw_set_color(_color)

	// Desenha o ponteiro
	draw_circle(x + width * (current_value - min_value) / (max_value - min_value), y+height/2, 10, false);

	// Escreve o título e o nível do volume
	draw_text(x+width/2,y-32,title)
	draw_text(x+width/2,y+32,round(current_value))

	// Reseta os parametros para o default
	draw_set_color(c_white)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}