#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Play/Pause media key
<#`::
Send {Media_Play_Pause}
return

; Next media key
<!`::
Send {Media_Next}
return

; Prev media key
^`::
Send {Media_Prev}
return

; \verb+ for LaTeX
:o:\v::\verb{+}

; \cdot for LaTeX
:o:\c::\cdot 

; cmd Copy/Paste
#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive

#F10::DllCall("SystemParametersInfo", Int,113, Int,0, UInt,10, Int,2) ;low sensitivity
#F11::DllCall("SystemParametersInfo", Int,113, Int,0, UInt,14, Int,2) ;normal sensisivity
#F12::DllCall("SystemParametersInfo", Int,113, Int,0, UInt,18, Int,2) ;high sensitivitySendMode, Input

; SendMode, Input

; ^b:: ; Win+p
; Clipboard = ; clears clipboard
; Send, ^x ; cut text to clipboard
; Sleep, 200
Send, <b>%clipboard%</b>
return
