#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
XButton1::
If WinActive("ahk_class Premiere Pro")
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class39, ahk_class Premiere Pro ;highlighhts premiere bin panel
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to back button
sleep, 10
MouseClick, left, , , 1 ;click on a back button
MouseMove, %xpos%, %ypos%, 0 
BlockInput, off 
Return
}
~XButton1 & Tab::Send, {BROWSER_BACK}