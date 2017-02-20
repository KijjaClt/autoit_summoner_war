#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Kijja

 Script Function:
	Main file of Bot Summoner War

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <Function.au3>
#include <ImageSearch.au3>

HotKeySet("{P}", "_TogglePause")
HotKeySet("{ESC}", "_Terminate")

If WinActivate($APP_NAME) Then
   While 1
	  _Click(812, 531)

	  $answer = _FindImage(0, 0, 1023, 767,"connection_loss.png",100)
	  ConsoleWrite("Connection loss!!"+@CRLF)
	  While $answer[0] <> -1
		 _Click(400, 441)
		 $answer = _FindImage(0, 0, 1023, 767,"connection_loss.png",100)
		 ConsoleWrite("Connection loss!!"+@CRLF)
	  WEnd

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

	  _FindQuestion()

   WEnd
EndIf