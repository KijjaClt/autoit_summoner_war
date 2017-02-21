#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Kijja

 Script Function:
	Function file of Bot Summoner War

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <ImageSearch.au3>

Global $APP_NAME = "Nox App Player"

Func _Click($x, $y)
   WinActivate($APP_NAME)
   MouseClick("left", $x, $y, 1, 5)
EndFunc

Func _SpeedClick($x, $y)
   MouseClick("left", $x, $y, 1, 1)
EndFunc

Func _FindImageEnergyRunsOut()
   WinActivate($APP_NAME)
   $result = ImageSearch("energy_runs_out.png")
   If $result > 0 Then
	  While $result > 0
		 ConsoleWrite("Energy low!!"+@CRLF)
		 _Click(588, 443)
		 Sleep(60000)
		 _Click(310, 403)
		 Sleep(1000)
		 $result = ImageSearch("energy_runs_out.png")
	  WEnd
   EndIf
EndFunc

Func _FindImageConnectionLoss()
   WinActivate($APP_NAME)
   $result = ImageSearch("connection_loss.png")
   If $result > 0 Then
	  While $result > 0
		 ConsoleWrite("Connection loss!!"+@CRLF)
		 _Click(400, 441)
		 $result = ImageSearch("connection_loss.png")
	  WEnd
   EndIf
EndFunc

Func _Terminate()
   Exit
EndFunc