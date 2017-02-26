#include <GUIConstantsEx.au3>
#include <Function.au3>
#include <MsgBoxConstants.au3>

HotKeySet("{ESC}", "_Terminate")

GUICreate("Open Scroll", 140, 50)
Local $idInput = GUICtrlCreateInput("", 10, 15, 50)
Local $idBtn = GUICtrlCreateButton("OK", 70, 10, 60, 30)

GUISetState(@SW_SHOW)

While 1
   Switch GUIGetMsg()
	  Case $GUI_EVENT_CLOSE
		 ExitLoop

	  Case $idBtn
		 If WinActivate($APP_NAME) Then
			_Click(724, 253)
			For $i = 1 To GUICtrlRead($idInput) Step +1
			   _Click(295, 608)
			   Sleep(1000)
			   _Click(861, 692)
			   Sleep(1000)
			   _Click(757, 557)
			   Sleep(1000)
			Next
			MsgBox($MB_SYSTEMMODAL, "Open Scroll", "Complete!")
		 EndIf

		 ExitLoop

	 EndSwitch
 WEnd

 Exit