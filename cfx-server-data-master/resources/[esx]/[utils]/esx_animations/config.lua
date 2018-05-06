Config = {}

Config.Animations = {
	
	{
		name  = 'festives',
		label = 'Festives',
		items = {
	    {label = "Play music", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
	    {label = "Dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
	    {label = "Drink a beer", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
	    {label = "Partying", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
	    {label = "Air Guitar", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
	    {label = "Air Shagging", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
	    {label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
	    -- {label = "Fumer un joint", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
	    {label = "Too Much!!", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
	    {label = "Taxi", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
		}
	},

	{
		name  = 'greetings',
		label = 'Salutations',
		items = {
	    {label = "Greet", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
	    {label = "Shaking hands", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
	    {label = "HandShake", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
	    {label = "Hugging", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
	    {label = "Military Salute", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = 'Travail',
		items = {
	    {label = "Suspect: go to the police", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
	    {label = "Sinner", type = "scenario", data = {anim = "world_human_stand_fishing"}},
	    {label = "Police: Investigate", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
	    {label = "Police: talking to the radio", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
	    {label = "Police : circulation", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
	    {label = "Police: binoculars", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
	    {label = "Agriculture: harvesting", type = "scenario", data = {anim = "world_human_gardener_plant"}},
	    {label = "Convenience store: repair under vehicle", type = "scenario", data = {anim = "world_human_vehicle_mechanic"}},
	    {label = "Convenience store: repair engine", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
	    {label = "Physician: observe", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
	    {label = "Taxi: talking to the customer", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
	    {label = "Taxi: give the invoice", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
	    {label = "Grocer: give shopping", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
	    {label = "Bartender: serve a shot", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
	    {label = "Journalist: Taking a photo", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
	    {label = "All trades: Take notes", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
	    {label = "All professions: Hammer hits", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
	    {label = "Clochard: Making the sleeve", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
	    {label = "Clochard: Make the statue", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = 'Humeurs',
		items = {
	    {label = "Congratulate", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
	    {label = "Super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
	    {label = "You", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
	    {label = "One", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
	    {label = "Keskya?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
	    {label = "standing casual", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
	    {label = "I knew it, fucking", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
	    {label = "To be exhausted", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
	    {label = "I'm in the shit", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
	    {label = "Facepalm", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
	    {label = "Calm down", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
	    {label = "What did I do ?", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
	    {label = "To fear", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
	    {label = "Fight?", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
	    {label = "It's not possible !", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
	    {label = "embrace", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
	    {label = "Finger of Honor", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
	    {label = "wanker", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
	    {label = "Bullet in the head", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = 'Sports',
		items = {
	    {label = "Flex", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
	    {label = "Bodybuilding", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
	    {label = "Pushups", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
	    {label = "Doing abs", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
	    {label = "Male Yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
		}
	},

	{
		name  = 'misc',
		label = 'Divers',
		items = {
	    {label = "Cafe Coffe", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
	    {label = "Sit", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
	    {label = "Sit Picknick", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},
	    {label = "Leaning", type = "scenario", data = {anim = "world_human_leaning"}},
	    {label = "Sunbathe Back", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
	    {label = "Sunbathe", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
	    {label = "Nettoyer quelque chose", type = "scenario", data = {anim = "world_human_maid_clean"}},
	    {label = "BBQ", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
	    {label = "Position of Excavation", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
	    {label = "Selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
	    {label = "Listen to a door", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},
}