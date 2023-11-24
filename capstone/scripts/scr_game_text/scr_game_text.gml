///@param _text_id
function scr_game_text(_text_id){
	switch(_text_id)
	{
		//tutorial npc
		case "tutorial_npc":
			scr_text("Welcome.","tutorial npc",-1);
			scr_text("Hello.", "player");
			scr_text("We must complete our mission.","tutorial npc",-1);
			scr_text("ok","player");
			scr_text("...","tutorial npc",-1);
			scr_text("...","player");
			scr_text("..................","tutorial npc",-1);
			scr_text("go","tutorial npc",-1);
				scr_options("Of Course.","TutorialNPC-yes");
				scr_options("nah","TutorialNPC-no");
			break;
			
			case "TutorialNPC-yes":
				scr_text("...","tutorial npc",-1);
				break;
			case "TutorialNPC-no":
				scr_text("... i said go.","tutorial npc",-1);
				break;
			
		case "llama":
			scr_text("HELLO THERE TRAVELER!!","llama",-1);
				scr_text_float(0,22);
			scr_text("What brings you to my mystical abode?","llama",-1);
				scr_text_color(22, 30, c_yellow, c_yellow, c_white, c_white); //top left, top right, bottom left, bottom right
				scr_text_float(0,37);
			scr_options("...","ScareLlama-...");
			scr_options("idk.","ScareLlama-dunno");
			break;
			
			case "ScareLlama-...":
				scr_text("...","player");
				scr_text("...", "llama",-1);
				scr_text("uhhhhh", "llama",-1);
					scr_text_shake(0,6);
				break;
			case "ScareLlama-dunno":
				scr_text("...", "llama",-1);
				scr_text("ok", "llama",-1);
				break;
		
		//----------------------------------ITEMS-------------------------------------
		case "magic_cloak":
			scr_text("It's a magical cloak.");
			scr_text("(press 'V' to turn invisible)");
			break;
			
		case "tp_item":
			scr_text("You found ... a thing?");
			scr_text("(press 'K' to teleport back to the base)");
			break;
	}
	
}