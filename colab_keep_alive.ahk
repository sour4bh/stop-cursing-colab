
KeepAlive(ColabWinTitle, Interval){
	Loop
	{
		Sleep, 1000 * 3
		if WinExist(ColabWinTitle)
		{
			WinActivate  ; Automatically uses the window found above.
			WinMaximize  ; same
			Sleep, 2000
			MouseClick, left, 1750, 250, 1, 30
			Send, {WheelDown 10}
			Send, {WheelDown 20}
			send, {PgDn 2}
			MouseClick, left, 1750, 500, 1, 30
			send, {PgUp 4}
			send, {PgDn 8}
		}
		else{
			MsgBox, , Halt : No Such Window , Did not find Window : %ColabWinTitle%
			Return	
		}
		Sleep, Interval
	}
}
	

InputBox, ColabFileName, Colab Keep Alive Script, Enter the Google Colab filename
ColabWinTitle := ColabFileName . " - Colaboratory - Google Chrome"
if WinExist(ColabWinTitle){
	WinActivate
	InputBox, Interval, Keep Alive : %ColabWinTitle%, Enter an interval (in minutes) to emulate mouse and keyboard behaviour :
	if Interval is not integer
	{
		MsgBox, , Halt : Bad Type, Enter an Integer for the Interval
		Return
	}
	else{
		MsgBox, , Interval Set, interval set for %Interval% minutes.
		Interval := 1000 * 60 * Interval
		KeepAlive(ColabWinTitle , Interval)
	}
}
else{
	MsgBox, , Halt : No Such Window, Did not find Window : %ColabWinTitle%
	Return
}