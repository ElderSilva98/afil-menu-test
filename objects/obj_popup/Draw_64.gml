width = sprite_get_width(spr_bt) * array_length(options) + margin * 2;
height = sprite_get_height(spr_bt) + margin;

// Desenha o sprite da caixa de texto
draw_sprite_stretched(spr_bt,0,x-margin,y-margin,width+margin,height+margin)

// Escreve o texto título do popup
draw_set_color(c_white)
draw_text(x+width/4,y-48,title);

