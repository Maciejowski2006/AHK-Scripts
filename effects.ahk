;^!+someting = ctrl+shift+alt+something

crossfade(item)
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class50, ahk_class Premiere Pro ;highlighhts premiere effects panel
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to effects search bar
sleep, 10
MouseClick, left, , , 1 ;click on a magnifier
sleep, 10
Send +{BackSpace} ;clears the content of the bar
sleep, 10
Send, %item% ;types selected key
MouseMove, X+50, Y+140, 0 ;moves cursor to the effect
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags the mouse to the previous location
BlockInput, off 
Return
}

^!+c::crossfade("constant gain")

preset(item)
{
BlockInput, SendAndMouse ;blocks input
BlockInput, On ;blocks input
MouseGetPos, xpos, ypos ;stores current cursor coordinates
SetKeyDelay, 0
ControlGetPos, X, Y, Width, Height, DroverLord - Window Class22, ahk_class Premiere Pro ;highlighhts premiere effects panel
MouseMove, X+20, Y+10, 0 ;moves the mouse cursor to effects search bar
sleep, 10
MouseClick, left, , , 1 ;click on a magnifier
sleep, 10
Send +{BackSpace} ;clears the content of the bar
sleep, 10
Send, %item% ;types selected key
MouseMove, X+50, Y+60, 0 ;moves cursor to the effect
MouseClickDrag, Left, , , %xpos%, %ypos%, 0 ;drags the mouse to the previous location
BlockInput, off 
Return
}

^!+d::preset("4th density") ;4th density caller
