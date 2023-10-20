function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 9999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spr_menu;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_char_low;
}

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
				speaker_sprite[page_number] = spr_temp_player_tb;
				txtb_spr[page_number] = spr_menu;
				snd[page_number] = snd_char_high;
				break;
			//tutotial npc
			case "tutorial npc":
				speaker_sprite[page_number] = spr_npc_tb;
				txtb_spr[page_number] = spr_menu;
				
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
}


