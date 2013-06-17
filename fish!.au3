;VERSION:
;	Name:           Xfish version 3.1
; 	Language:       English 
; 	Platform:       WinXP, Win2k
; 	Author:         xeonz16 (base version)
;	  		  		berzerkwolf(some tuning changes and added lure function);He is a boon and knows nothing
;			  		Rylon t.H.D. (The real King - Hail Rylon)
;
;					(berzerkwolf u jewish bastard - what the fuck have u done - only fucking crap - idot)
;
;STEPBYSTEP INTRODUCTION:
;	1.Install AutoIt 3.2.x ot higher
;
;	2.Read this file carefully
;
;	3.Adjust following Options in the OPTIONS-Section:
;		-$windowed_mode: 	If u run the bot in windowmode set windowed_mode to 1, else to 0.
;		-$game_res_x: 		Only nessecary if u are in wondowed_mode! - Set ur gameresx
;		-$game_res_y:		Only nessecary if u are in wondowed_mode! - Set ur gameresy
;
;		Following definitions help u the avoid the bot to detect some red parts of ur ui als feather of the bobber.
;		-$search_area_space_left:		Pixels from the left  , wherin the feather is not searched; pixels are counted within the wow-window
;		-$search_area_space_right:		Pixels from the right , wherin the feather is not searched; pixels are counted within the wow-window
;		-$search_area_space_top:		Pixels from the top   , wherin the feather is not searched; pixels are counted within the wow-window
;		-$search_area_space_bottom:		Pixels from the bottom, wherin the feather is not searched; pixels are counted within the wow-window
;
;		The bot presses a button to start fishing. With $fishing_hotkey u define it - normaly its "0"
;
;		Set the $day variable depending if its day (1) or night (0).
;
;	4:Start wow, login, equip fishingrod, be sure that the spot u choose is near water to allow fishing.
;	  Make shure ur fishinghotkey is correct and the fishing-cast is there at the right position.
;
;	5.Execute the script via rightclick on the file (after successfully installing AutoIt) - select "Execute Script"
;
;	6.If the bot is not fishing right, making a lots of missfires, anything - just look it up in "HINTS", "TROUBLESHOOTING"
;	  and "ADVANCED TROUBLESHOOTING".
;
;HINTS:
;	How to catch rar fish:
;		Deviate fish and Oily Blackmouth are really the only kind that sell in my experience.
;
;		If you leave bot on all night, it will fill your inventory up with 2-3 stacks of 'rare'
;		fish and zillions of stacks of common crappy ones that you either destroy or sell for
;		20c a stack.
;
;		I've found if you SPIKE your inventory before turning the bot on you can catch a way more
;		rare fish. However, this will take longer. I've guessed the bot fills up a medium-low sized
;		inventory in about 3-4 hours. For me, I have to go to work for periods of about 12 hours
;		anyway, so I spike my inventory, by taking a stack of 20 oily blackmouth and splitting them
;		into 20 stacks of 1.
;
;		After 12 hours when I get home I've got 20 stacks of oily blackmouth instead of 2-3 stacks
;		and 20 stacks of cheapo fish.
;
;	Where to catch rar fish:
;		You can catch oily blackmouth in the water near ratchet.
;
;		And deviate fish + deviate scales in the oasis's scattered around the barrens.
;
;		When you catch these fish, you need to sell them to PLAYERS, namely alchemists...they won't 
;		get you crap from merchants.
;
;	Choose the right fishing spot:
;		Find places where you can see the sky and got a bright feather
;
;		Zoom in with your character to get a first person view
;
;   	If you are gonna fish the oasis you need to pick a spot VERY carefully so the
;		wandering centaurs don't kill you.
;
;		Do not look into the sunlight/moonlight - the feather will be dark(er) and more hardly to find.
;		Find a spot where u look WITH the sunlight/moonlight so the feather is bright red/blue and easy to find.
;
;		If you are getting lots of 'moonglare' you might have to move to another side of the lake.
;		Too much moonglare will cause splash-detection withaut a real splash, changing your location might be the
;		only solution.
;
;	Prevent Detection:
;		Blizzard has a cheat/bot-searchengine, but does not detect this bot or anyother bot - in fact it does
;		nothing, but searching ur harddrive.
;		Most people get banned, not because of blizzard was detecting the bot, but of players who blamed another of
;		using a bot.
;
;		So the first rule to keep undetected is not to be seen - so do not fish in tb ore other frequently visted
;		places with this bot!
;
;		Another trick, not to be detected as a bot user, is to visit the computer with the bot running on it from
;		time to time and look if someone whispered. Answer these whispers to avoid being detected.
;
;		Also there were some stupid ideas of bezerkwolf to prevent detection:
;		
;			-Extract this files to an unusual folder (like "windows folder system32 etc); -> Not needed till now (patch 2.4.1)
;			-Also he added a random timer function which started the fishing after a random time; -> As long blizzard do not
;			 analyse gamedata this is not nessecarry and only waste of time. Also if there would be a gameanalysis used by
;			 blizzard to detect bots - the various ping does not allow to detect a constant time between fishing and not fishing.
;			 u suxxx berserkwolf
;
;	Use AutoLure:
;		To use Autolure you should create following macro:
;			/equip [noworn:Fishing Poles] FishingPoleName
;			/use LureName
;			/use 16
;		If you create exactly this macro you should asigne $fishing_rod_equip and $fishing_lure_equip as the same hotkey.
;		If you want to split it your fishing_rod_equip - makro should be only "/equip [noworn:Fishing Poles] FishingPoleName" and fishing_lure_equip - makro the rest of the given makro above
;
;TROUBLESHOOTING:
;	Set $splash to 1
;		For troubleshooting the first thing you should do is set $splash to 1. This Options proviedes a spalshscreen with current
;		bot-status.
;		Remember to turn it back to zero after you have the bot working...as leaving it on will limit the bot's lifespan to about
;		3-4 hours.
;
;	Mouse moves to wrong location:
;		If the mouse moves to a wrong location, then lower $colorvariance
;		Move the variances in increments of 5 for best result...
;
;	Mouse does not move:
;		If the mouse doesn't move and the bot gets hung up on 'searching for feather' raise $colorvariance
;		Move the variances in increments of 5 for best result...
;
;   Splash is not recognized correctly:
;		If the mouse moves to the feather, and then the bot says 'FISH!' without a splash, lower $splashvariance
;		Move the variances in increments of 5 for best result...
;
;		Make sure u are not running EyeDropper.exe while the bot is active. A running EyeDropper.exe will
;		cause an instatn "Fish!" message auft feather was found.
;
;	Splash is not recognized:
;		If the bobber splashes and the bot does not do anything, raise $splashvariance.
;		Move the variances in increments of 5 for best result...
;
;ADVANCED TROUBLESHOOTING:
;	Still no boober detected:
;		For trouble finding the bobber notice there are several definitions of $feather commented out 
;		comment out the current one and use another, and then retry adjusting variances
;		Also look at "Choose the right fishing spot:" in "HINTS"
;
;	Splashes are not detected right:
;		there are two pixelsearchs for splash, one uses $day and another uses $night, you can 
;		easily switch between night- and daymode in the wait_for_bite() function
;
;		You can also adjust the $s_offset. This determines how many pixels in each direction
;		from the feather the bot 'searches' for the splash. If you tighten this down you will
;		have less missfires.
;		Also look at "Choose the right fishing spot:" in "HINTS"
;
;CHANGELOG:
;
;	changes by berzerkwolf:
;
; 		-Added a random function to simulate a more human usage of the rod; -> Suck it - that is for nothing but waisting time - idot
; 		-Added a lure function to combine a lure with the fishing rod; -> Crap does not work properly
; 		-Changed some variables for a better tuning; -> Dont know exactly what he did, but the existing tuningvariables are quite usefull
; 		-Changed some variables for a more lag friendly game; -> I can think of what he did - and it was crap - idot
; 		-Added some needed variables for the new functions; -> 100% of the functions berzerkwolf wrote, were deleted by my mightyness
;
;	changes by Rylon t.H.D
;
;		V3.0:
;		-rearranged comments
;		-added some hints
;		-resolution-adjustebility
;		-deleted nearly everything berzerkwolf did. (lure and "human-like-time-wasting-fishing-shiat")
;		-deleted every unused var
;		-made a lot of vars non-global vars.
;		-speed this bot up by up to 20sec where he does at least nothing.
;		-divided the code into functions to keep it easy to understand and editable
;		-rewrote the while-loop -> there is only one now.
;		-forced bezerkwolf to suck my dick
;		-added a stepbystep introduction
;		-made the comments readable - reorder
;		-posibilty to adjust "non-search-area" where ur gui would actually causing missfires
;		-log-function. no globalvar is needed for the message -> crappy shiat (one problem: the splash is blinking all
;		 the time, because every while-loop does update it. There would be the possibility to check, what the last
;		 message was and only update it, if its nessecarry, but that would mean a global var - no need for that,
;		 because the splash is only for debugging!
;		-Autodetection of desktop-res.
;		-Day/Night switch via $day = 1/0
;		-now euip the rod before throing it
;		-added lure-support.
;		-added support for autoloot addon
;		V3.1:
;		-Autoexit if Window is no longer in focus.
;


;Includes
#Include <_ArraySize.au3>

;OPTIONS:
	;WindowOptions:
	$windowed_mode 				= 0 		;If u run the bot in windowmode set windowed_mode to 1, else to 0.
	$game_res_x 				= 1600 		;Only nessecary if u are in wondowed_mode!
	$game_res_y 				= 1050  		;Only nessecary if u are in wondowed_mode!
	$search_area_space_left 	= 400 		;Pixels from the left  , wherin the feather is not searched; pixels are counted within the wow-window
	$search_area_space_right 	= 400 		;Pixels from the right , wherin the feather is not searched; pixels are counted within the wow-window
	$search_area_space_top 		= 200 		;Pixels from the top   , wherin the feather is not searched; pixels are counted within the wow-window
	$search_area_space_bottom	= 600 		;Pixels from the bottom, wherin the feather is not searched; pixels are counted within the wow-window

	;GameOptions:
	$fishing_hotkey 			= "1" 		;Key for the fishingrod on ur hotkeybar
	$fishing_rod_equip			= "2"		;Key for equipping fishing rod (+lureequip)
	$fishing_lure_equip			= "3"		;Key for equipping lure
	$timer_fishing				= 25000		;How long does the fishing-process last
	$fishing_lure_casttime		= 5500		;Lure Casttime in milliseconds
	$fishing_lure_time			= 600000	;Lure life-time in milliseconds
	$day						= 1			;Is Daytime - Sun is shining? -> set $day = 1. If its night st $day = 0.
	$use_lure					= 0			;Determin if lure is used or not! Set to 0 to disable it
	$wow_1121_lure				= 0
	$char_screen_key			= "c"		;Open Charscreen
	$char_mainhandslot_x		= 160		;Pos of ur Mainhandslot
	$char_mainhandslot_y		= 600
	$use_internal_loot			= 1			;Determin if the bot should loot everything (set to 1) or set to 0 if you have an autoloot-addon
	$feather_disapear			= 4500		;How long should it wait til old feather disapeared
	
	$lag_offset					= 150		;This is a latency offset. If you have a hight ping you should increase this value. The value is in milliseconds.
											;You should set this offset at least at 100-200 to enable your lure to be added at the right time!
	
	;ColorOptions:
	$splash_day 				= 0xFFFFFF;0xF6F6F6	;splash color day 
	$splash_night 				= 0xFFFFFF	;splash color night 
	;othersplash				= 0xA2A67D	;some other splashcodes 
	;othersplash				= 0xC1AD7A 
	;othersplash				= 0xD0C08D 
	dim $feathers[6]
	$feathers[0] 				= 0xBFA67B  ;day -- pole
	$feathers[1]				= 0xBD5C27	;night --bright red 
	$feathers[2]				= 0x31314E	;day --blue feather
	$feathers[3]				= 0x1A130F	;night --dark dark red 
	$feathers[4]				= 0xC33415	;day --bright red 
	$feathers[5]				= 0x8F825B	;day -- pole

	;SearchParameters:
	$feather_color_variance 	= 15		;range of accepted values differing from original code for feather 
	$splash_color_variance 		= 5			;range of accepted values differing from original code for splash 
	$step 						= 1			;1 = search every pixel, 2 = search every other pixel...etc don't put higher then like 5 
	$s_offset 					= 25		;search offset, basically how large an area to search around the feather for splash 

	;Debug:
	$debug 					= 0			;set this to 1 to view GUI messages, so you can tell where the bot gets hung up 
											;but turn it to zero once the bot is working, and the bot will 'last' for DAYS
											;as compared to maybe 4-5 hours with GUI on.
										
;Begin of plain code
dim $feather_cord ;Feather-position var

WinActivate("World of Warcraft") ;Focus WoW-window
;cequip_rod() ;Equip the rod do this before loop starts because of the lure which is equiped with the same hotkey.

if $use_lure = 1 then
	equip_lure();equip the lur to the rod with makro.
	$timer_lure = Timerinit();start lure-timer - this timer has to start bevor the loop to avoid reset of the timer.
endif

WinActivate("World of Warcraft") ;Focus WoW-window
main();start the main func

;End of plain code - begin of the func declarations

func main()
	print_log("Started Main-Loop")
	
	win_focus_check();
	
	$search_status = 0
	$time = 0
	
	if $use_lure = 1 then ;Luresupport
		if TimerDiff($timer_lure) >= $fishing_lure_time+$lag_offset then
			equip_lure();equip the lur to the rod with makro.
			$timer_lure = Timerinit();restart the timer.
		endif
	endif
	
	start_fishing() ;throw the rod
	$timer = Timerinit();start timer
	
	while $time <= $timer_fishing+$lag_offset; restarts the loop after 21 sec
		
		$time = TimerDiff($timer);timerconrtroll
		
		if $search_status = 0 then
			print_log("Searching for feather...")
			if search_feather($feathers) = 1 then
				$search_status = 1 ; Feather found
			endif
		endif
		
		if $search_status = 1 then
			print_log("Waiting for bite...")
			if wait_for_bite() = 1 then
				main() ;exitloop ;Fish found and looted -> restart loop
			endif
		endif
		
		win_focus_check();
			
	wend

	main();restart main func
	
endfunc

func win_focus_check()
	if WinActive("World of Warcraft") == 0 then
		MsgBox(0,"WoW Fishing Info","Info: Bot will exit after this Message, cause the right Window was never/nolonger active! Restart the bot manually!")	
		exit
	endif
endfunc 

func search_feather($feathers)
		
    ;find where the feather is located
	
	for $i = 0 to _ArraySize($feathers)-1
		print_log("Search Feather " + $i)
		if $windowed_mode = 0 then		 ;left;top;right;bottom
			$feather_cord = PixelSearch (	$search_area_space_left, $search_area_space_top, @DesktopWidth- $search_area_space_right, @DesktopHeight -  $search_area_space_bottom, $feathers[$i], $feather_color_Variance, $step)
		else
			$feather_cord = PixelSearch (	((@DesktopWidth - $game_res_x) / 2) + $search_area_space_left, ((@DesktopHeight - $game_res_y) / 2) + $search_area_space_top, @DesktopWidth - (((@DesktopWidth - $game_res_x) / 2) - $search_area_space_right), @DesktopHeight - (((@DesktopHeight - $game_res_y) / 2) - $search_area_space_bottom), $feathers[$i], $feather_color_Variance, $step) 
		endif
										
		if NOT @error = 1 then 
		   print_log("Found Something.") 
		   ;PServer Debug:
		   $feather_cord[0] = $feather_cord[0]
		   $feather_cord[1] = $feather_cord[1] + 6
		   
		   mousemove($feather_cord[0], $feather_cord[1]);move mouse to feather  ;no need to move the mouse at this time - there will be plenty time later - but for orientating its quite usefull
		   return 1
	   endif
	   
	   seterror(2);resets @error macro so it doesn't fire next loop 
	next

	return 0
endfunc

func wait_for_bite()
	
	if $day = 1 then  
		$splash = $splash_day
	else
		$splash = $splash_night
	endif
	
						;left;top;right;bottom
	$sp = Pixelsearch($feather_cord[0] - $s_offset, $feather_cord[1] - $s_offset, $feather_cord[0] + $s_offset, $feather_cord[1] + $s_offset, $splash, $splash_color_variance) 					  
	if ubound($sp) > 1 then;if $sp returns cords then shift + rightclick, discards $sp cords 
		seterror(2) ;resets @error macro so it doesn't fire next loop 
		print_log("Fish!")
		loot() ;loot fish
		return 1
	endif 
	
	return 0
endfunc

func start_fishing()
	print_log("Send Fishing Hotkey")
	send($fishing_hotkey) ;Send fishing hotkey
	sleep($feather_disapear) ;Wait for the old feather to disapear
endfunc

func loot()	
	print_log("Loot Fish")
	
	sleep(300) ;Some debugging
	
	if $use_internal_loot = 1 then ;internal loot
		send("{shiftdown}") ;Activate shift to loot everything
	endif 
	
	sleep(750)
    mouseclick("right", $feather_cord[0], $feather_cord[1], 1, 1) ;Rightklick on Featherposition, which was located in search_feather()
    sleep(750) ;Wait till lootwindow opens
	
	if $use_internal_loot = 1 then ;internal loot
		send("{shiftup}")	
	endif
endfunc

func equip_rod()
	print_log("Send Rod-Equip Hotkey")
	send($fishing_rod_equip) ;Send equip-rod hotkey
	sleep(500) ;Wait for the equip
endfunc

func equip_lure()
	print_log("Equip Lure")
	if $wow_1121_lure = 1 then
		print_log("Send CharScreen Hotkey")
		send($char_screen_key)
		print_log("Send Lure-Equip Hotkey")
		send($fishing_lure_equip) ;Send lure-equip hotkey
		sleep(300)
		MouseClick("left", $char_mainhandslot_x, $char_mainhandslot_y, 1, 1);Rightclick on Fishingpole
		sleep($fishing_lure_casttime+$lag_offset) ;Wait for the lure to be equiped
		send($char_screen_key);close char screen
	else
		print_log("Send Lure-Equip Hotkey")
		send($fishing_lure_equip) ;Send lure-equip hotkey
		sleep($fishing_lure_casttime+$lag_offset) ;Wait for the lure to be equiped
	endif
endfunc

func print_log($message)
;this func just updates splash message if the variable $debug is set to '1' in the beginning		
	if $debug = 1 then 
		SplashTextOn( "", $message , 100 , 100 ,1 ,1 , 17) 
	endif 
endfunc