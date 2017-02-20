#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Kijja

 Script Function:
	Function file of Bot Summoner War

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <ImageSearch.au3>

Global $APP_NAME = "Nox App Player"
Global $bPaused

Func _Click($x, $y)
   WinActivate($APP_NAME)
   MouseClick("left", $x, $y, 1, 5)
EndFunc

Func _SpeedClick($x, $y)
   MouseClick("left", $x, $y, 1, 1)
EndFunc

Func _FindQuestion()
   WinActivate($APP_NAME)
   $answer = _FindImage(0, 0, 1023, 767,"energy_runs_out.png",125)
	  ConsoleWrite("Energy low!!"+@CRLF)
	  While $answer[0] <> -1
		 _Click(588, 443)
		 Sleep(60000)
		 _Click(310, 403)
		 Sleep(1000)
		 WinActivate($APP_NAME)
		 $answer = _FindImage(0, 0, 1023, 767,"energy_runs_out.png",125)
		 ConsoleWrite("Energy low!!"+@CRLF)
	  WEnd
EndFunc

Func _Terminate()
   Exit
EndFunc