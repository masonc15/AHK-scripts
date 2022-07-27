; Global ================================================================================
#SingleInstance, Force ; Allow only one running instance of script
#Persistent ; Keep script permanently running until terminated
#NoEnv ; Avoid checking empty variables to see if they are environment variables
#Warn ; Enable warnings to assist with detecting common errors
;#NoTrayIcon ; Disable the tray icon of the script
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability
SetWorkingDir, %A_ScriptDir% ; Change the working directory of the script
SetBatchLines, -1 ; Run script at maximum speed
; ================================================================================


;Volume control, Alt+Scroll wheel (and Mbutton)

Alt & WheelUp::Volume_Up
Alt & WheelDown::Volume_Down
Alt & MButton::Volume_Mute

; Using the hotstring ":X", this prints the date and time that a task was completed.
:?*:`:X::
FormatTime, CurrentDateTime,, M-d-yy h:mm tt
SendInput, {Space}- %CurrentDateTime%
return

; ":T" will print just the current time.
:?*:`:T::
FormatTime, CurrentDateTime,, h:mm tt
SendInput, %CurrentDateTime%
return

; ":D" will print just the current date.
:?*:`:D::
FormatTime, CurrentDateTime,, M-d-yy
SendInput, %CurrentDateTime%
return

; ":EM" for email
:?*:`:EM::
SendInput, masonc789@gmail.com
return

; ":ED" for darkside711 email
:?*:`:ED::
SendInput, darkside711@gmail.com
return

; ":LK" for LinkedIn URL
:?*:`:LK::
SendInput, https://www.linkedin.com/in/colin-j-mason/
return

; ":GH" for Github URL
:?*:`:GH::
SendInput, https://github.com/masonc15
return

; ratatoskr (Intel NUC) IP
:?*:ratip::
SendInput, 192.168.50.82
return

; Obsidian.md thought log blockquote w/ timestamp
; hotstring = "tlt"
:?*:tlt::
FormatTime, CurrentDateTime,, h:mm tt
SendRaw, >#### %CurrentDateTime%`n

:?*:,bq:: ; <blockquote> tag
Send, <blockquote></blockquote>
Send, {Left 13} ; Send LEFT ARROW 13 times
return

:?*:`:shrug::¯\_(ツ)_/¯

; em dash
:?*:--_::
Send, {ASC 0151}
return

; Markdown headings with Ctrl + {1-5}
#IfWinActive ahk_exe Obsidian.exe
^1::Send, {#}{Space}
^2::Send, {#}{#}{Space}
^3::Send, {#}{#}{#}{Space}
^4::Send, {#}{#}{#}{#}{Space}
^5::Send, {#}{#}{#}{#}{#}{Space}
^6::Send, {#}{#}{#}{#}{#}{#}{Space}