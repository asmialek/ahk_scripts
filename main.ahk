#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Play/Pause media key
^`::
Send {Media_Play_Pause}
return

; Next media key
<#`::
Send {Media_Next}
return

; Prev media key
+`::
Send {Media_Prev}
return

; \verb+ for LaTeX
:o:\v::\verb{+}