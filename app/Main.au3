#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Kijja

 Script Function:
	Main file of Bot Summoner War

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <Function.au3>

HotKeySet("{ESC}", "_Terminate")

If WinActivate($APP_NAME) Then
   While 1
	  _Click(775, 496)
	  Sleep(70000)

	  _FindImageConnectionLoss()

	  _Click(459, 342)
	  Sleep(1000)
	  _Click(459, 342)
	  Sleep(1000)
	  _Click(459, 342)
	  Sleep(2000)
	  _Click(516, 550)
	  Sleep(1000)
	  _Click(314, 370)
	  Sleep(1000)

	  _FindImageEnergyRunsOut()

   WEnd
EndIf