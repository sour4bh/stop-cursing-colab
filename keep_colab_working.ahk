;to start the script (ctrl+shift+F11)
^+f11::settimer, main_script, 600000

;to pause the script (ctrl+shift+F12)
^+f12::settimer, main_script, off




main_script()
{
	;param_window_title := "IFSA-EUSFLAT 2021"
	;param_window_title := param_window_title . " - Mozilla Firefox"
	
	param_window_title := "NeuTrack_CNN.ipynb"
	param_window_title := param_window_title . " - Colaboratory"
	param_window_title := param_window_title . " - Mozilla Firefox"
	
	param_mouse_speed := 50
	
	
	if winexist(param_window_title)
	{
		winactivate
		winmaximize
		
		initial_message_box_sleep_time := 3
		MsgBoxTimed("Runtime ahk routine activated", "Everything is ok, closing windows in:", initial_message_box_sleep_time)
		sleep_for(0,0,initial_message_box_sleep_time+1)
		
		screen_width = %A_ScreenWidth%
		screen_height = %A_ScreenHeight%
		
		perform_actions(screen_width/2, screen_height/2, param_mouse_speed)
	}
}


sleep_for(t_hours, t_minutes, t_seconds)
{
	sleep_time := (t_hours * 3600) + (t_minutes * 60) + t_seconds
	sleep_time := sleep_time * 1000
	
	sleep sleep_time
}

dl()
{
	sleep_for(0,0,0.5)
}

MsgBoxTimed(title, msg, seconds, complete="") {
    static init = false, _seconds, _complete
    global Msg92, Seconds92
    if (!init)
    {
        init := true
        Gui, 92:Font, s24
        Gui, 92:Add, Text, vMsg92 Center w360, %msg%
        Gui, 92:Font, s30 cRed
        Gui, 92:Add, Text, vSeconds92 Center w360, %seconds%
    }

    _seconds := seconds
    _complete := complete

    GuiControl, 92:, Msg92, %msg%
    Gui, 92:Show, w400 h250, %title%

    Update92:
    GuiControl, 92:, Seconds92, %_seconds%
    _seconds -= 1
    if (_seconds > 0) {
        SetTimer, Update92, -1000
    }
    else {
        Gui, 92:Hide
        if (_complete)
            SetTimer, %_complete%, -1
    }
    return
} 

perform_actions(x, y, param_mouse_speed)
{
	mouseclick left, x, y, 1, param_mouse_speed
	dl()
	send, {WheelUp 15}
	dl()
	send, {WheelDown 15}
	dl()
	mouseclick left, x+15, y, 1, param_mouse_speed
	dl()
	send {pgup 2}
	dl()
	send {pgdn 10}
	dl()
	mouseclick left, x-15, y, 1, param_mouse_speed
	dl()
}




