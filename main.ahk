#Requires AutoHotkey >=2.0

#Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

!#t:: ; Windows + ALT + T, paste as plain text
{
    SendInput "{Raw}" A_Clipboard
    Return
}

~LWin::Send "{Blind}{vkE8}" ; disable Windows key

~LWin up:: ; remap Windows key to Windows+Tab
{
    If (A_PriorKey = "LWin") ; Only Windows key pressed
    {
        if WinActive("Task View") {
            Send "{Esc}"
        } else {
            Send "#{Tab}"
        }
    }
    return
}

#HotIf WinActive("Task View") ; open Start Menu and type
a::
b::
c::
d::
e::
f::
g::
h::
i::
j::
k::
l::
m::
n::
o::
p::
q::
r::
s::
t::
u::
v::
w::
x::
y::
z::
{
    ; Send "^{Esc}" ; change from Shift + Esc to Windows + Space
    Send "!{Space}"
    Sleep 100 ; milliseconds
    Send A_ThisHotkey
    return
}
#HotIf
