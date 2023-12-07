function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 9999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variables for every letter/character;
	for (var c = 0; c < 500; c++) 
	{
		col_1[c,page_number] = c_white;
		col_2[c,page_number] = c_white;
		col_3[c,page_number] = c_white;
		col_4[c,page_number] = c_white;
		
		//floaty text
		float_text[c,page_number] = 0;
		float_dir[c,page_number] = c*20;
		
		//shaky text
		shake_text[c,page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
	}
	
	txtb_spr[page_number] = spr_menu;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_char_item;
}

//TEXT VFX

///@param 1st_char
///@param last_char
///@param col1
///@param col2
///@param col3
///@param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4)
{
	for(var c = _start; c <= _end; c++)
	{
		col_1[c, page_number -1] = _col1;
		col_2[c, page_number -1] = _col2;
		col_3[c, page_number -1] = _col3;
		col_4[c, page_number -1] = _col4;
	}
	//color order:top left, top right, bottom left, bottom right
}

//@param 1st_char
//@param last_char
function scr_text_float(_start, _end)
{
	for(var c = _start; c <= _end; c++)
	{
		float_text[c, page_number -1] = true;
	}
}

function scr_text_shake(_start, _end)
{
	for(var c = _start; c <= _end; c++)
	{
		shake_text[c, page_number -1] = true;
	}
}

//----------------------------------------------------------------

///@param _text
///@param [character]
///@param [speaker_side]
function scr_text(_text){
	
	scr_set_defaults_for_text()
	
	text[page_number] = _text;
	
	//get character info
	if (argument_count > 1)
	{
		switch(argument[1])
		{
			//player
			case "player":
				speaker_sprite[page_number] = spr_player_tb;
				txtb_spr[page_number] = spr_menu_characters;
				snd[page_number] = snd_char_high;
				break;
			//tutotial npc
			case "tutorial npc":
				speaker_sprite[page_number] = spr_npc_tb;
				txtb_spr[page_number] = spr_menu_characters;
				snd[page_number] = snd_char_low;
				break;
			//llama
			case "llama":
				speaker_sprite[page_number] = spr_llama_tb;
				txtb_spr[page_number] = spr_menu_characters;
				snd[page_number] = snd_char_llama;
				break;
			//boss fight
			case "king":
				speaker_sprite[page_number] = spr_king_tb;
				txtb_spr[page_number] = spr_menu_characters;
				snd[page_number] = snd_char_king;
				break;
			//the end
			case "the_end":
			txtb_spr[page_number] = spr_menu_spooky;
			snd[page_number] = snd_char_end;
				break;
		}
	}
	
	if (argument_count > 2)
	{
		speaker_side[page_number] = argument[2];
	}
	
	page_number++;
}





///@param _option
///@param _link_id
function scr_options(_option,_link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

///@param text_id
function create_textbox(text_id)
{
	with(instance_create_depth(0,0,-9000,obj_textbox))
	{
		scr_game_text(text_id);
	}
	global.tb = true;
}


