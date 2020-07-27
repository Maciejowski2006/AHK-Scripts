;PREMIERE CHANGES THE BIN WINDOW CLASS WHEN YOUR LAYOUT CHANGES:
; To fix that you need to edit this script and change 'Window Class39' to your effect panel tab number usign WindowSpy
; If you need video tutorial watch:  

NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
XButton1:: ;the button you want you use for this shortcut
If WinActive("ahk_class Premiere Pro")
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0 ;sets delay between keypresses to 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class39, ahk_class Premiere Pro ;highlighhts premiere bin panel
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to back button
sleep, 10 ;wait for 10 miliseconds
MouseClick, left, , , 1 ;click on a back button
MouseMove, %xpos%, %ypos%, 0 ;moves the mouse to the previous location
BlockInput, off ; unlocks input
Return
}
~XButton1 & Tab::Send, {BROWSER_BACK} ; make 4th mouse button work in browser or Windows Explorer