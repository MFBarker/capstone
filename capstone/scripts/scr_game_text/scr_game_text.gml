///@param _text_id
function scr_game_text(_text_id){
	switch(_text_id)
	{
		//tutorial npc
		case "tutorial_npc":
			scr_text("Welcome.","tutorial npc",-1);
			scr_text("Hello.", "player");
			scr_text("We must complete our mission.");
			scr_text("...");
			scr_text("..................");
			scr_text("go");
				scr_options("Of Course.","TutorialNPC-yes");
				scr_options("nah","TutorialNPC-no");
			break;
			
			case "TutorialNPC-yes":
				scr_text("...");
				break;
			case "TutorialNPC-no":
				scr_text("... i said go");
				break;
			
			
		//case "":
			
		//	break;
		//case "":
			
		//	break;
	}
	
}