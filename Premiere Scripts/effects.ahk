; You can change the shortcut according to this:
;^!+key = ctrl+shift+alt+key

;PREMIERE CHANGES THE EFFECT WINDOW CLASS WHEN YOUR LAYOUT CHANGES:
; To fix that you need to edit this script and change 'Window Class51' to your effect panel tab number usign WindowSpy
; If you need video tutorial watch:  

; This function is only for Audio Transision/Crossfade effects
crossfade(item)
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0 ;sets delay between keypresses to 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class51, ahk_class Premiere Pro ;highlighhts premiere effects panel REMEMBER TO SET THE CLASS NUMBER TO YOUR PREMIERE TAB PANEL NUMBER
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to effects search bar
sleep, 10 ;wait for 10 miliseconds
MouseClick, left, , , 1 ;click on a magnifier
sleep, 10 ;wait for 10 miliseconds
Send +{BackSpace} ;clears the content of the bar(Shift+Backspace)
sleep, 10 ;wait for 10 miliseconds
Send, %item% ;types selected key
MouseMove, X+50, Y+140, 0 ;moves cursor to the effect
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags the mouse to the previous location
BlockInput, off 
Return
}

;change the text in quotes to your crossfade effect, or if you don't use it just remove
^!+c::crossfade("constant gain")

; This function is only for Presets effects
preset(item)
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0 ;sets delay between keypresses to 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class51, ahk_class Premiere Pro ;highlighhts premiere effects panel REMEMBER TO SET THE CLASS NUMBER TO YOUR PREMIERE TAB PANEL NUMBER
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to effects search bar
sleep, 10 ;wait for 10 miliseconds
MouseClick, left, , , 1 ;click on a magnifier
sleep, 10 ;wait for 10 miliseconds
Send +{BackSpace} ;clears the content of the bar
sleep, 10 ;wait for 10 miliseconds
Send, %item% ;types selected key
MouseMove, X+50, Y+60, 0 ;moves cursor to the effect
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags the mouse to the previous location
BlockInput, off 
Return
}
;change the text in quotes to your preset name
^!+d::preset("4th density") ;4th density caller
