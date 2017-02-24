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
   ControlClick($APP_NAME, "", "", "left", 1, $x, $y)
EndFunc

Func _SpeedClick($x, $y)
   MouseClick("left", $x, $y, 1, 1)
EndFunc

Func _FindImageEnergyRunsOut()
   WinActivate($APP_NAME)
   Local $result = ImageSearch("energy_runs_out.png")
   If $result > 0 Then
	  While $result > 0
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
   Local $result = ImageSearch("connection_loss.png")
   If $result > 0 Then
	  While $result > 0
		 _Click(400, 441)
		 $result = ImageSearch("connection_loss.png")
	  WEnd
   EndIf
EndFunc

Func _Terminate()
   Exit
EndFunc