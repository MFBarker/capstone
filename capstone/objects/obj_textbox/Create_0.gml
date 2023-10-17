//always at top
depth = -9999;

//textbox parameters
//960,191
textbox_width = 960;
textbox_height = 191;
border = 8;
line_sep = 12;
line_width = textbox_width - border * 2;

txtb_spr = spr_menu;
txtb_img = 0;
txtb_img_spd = 6/fps;

//the text
page = 0;
page_number = 0;

text[0] = "LONG LONG MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN";
text[1] = "LONG LONG MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN";
text[2] = "Short";
text[3] = "Ba-da-ba-da-ba-be bop bop bodda bope Bop ba bodda bope Be bop ba bodda bope Bop ba bodda Ba-da-ba-da-ba-be bop ba bodda bope Bop ba bodda bope Be bop ba bodda bope Bop ba bodda bope";
text[4] = "eeaaoo";

text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

setup = false;

