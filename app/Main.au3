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
;~    _FindImageConnectionLoss()
   While 1
	  _Click(808, 532)

	  Sleep(1000)

	  _Click(403, 443)

	  Sleep(10000)

	  _FindImageConnectionLoss()

;~ 	  Sleep(200000)
	  Sleep(90000)

	  _Click(644, 469)
	  Sleep(1000)

	  _Click(487, 383)
	  Sleep(1000)
	  _Click(487, 383)
	  Sleep(1000)
	  _Click(487, 383)
	  Sleep(2000)

	  _Click(529, 552)
	  Sleep(500)
	  _Click(516, 545)
	  Sleep(500)
	  _Click(497, 605)
	  Sleep(1000)

	  _Click(302, 406)
	  Sleep(1000)

	  _FindImageEnergyRunsOut()

   WEnd
EndIf