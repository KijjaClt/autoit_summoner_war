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
	  _Click(812, 531)

	  _FindImageConnectionLoss()

	  Sleep(70000)
	  _Click(492, 383)
	  Sleep(1000)
	  _Click(492, 383)
	  Sleep(1000)
	  _Click(492, 383)
	  Sleep(2000)
	  _Click(524, 547)
	  Sleep(1000)
	  _Click(310, 403)
	  Sleep(1000)

	  _FindImageEnergyRunsOut()

   WEnd
EndIf