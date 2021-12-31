#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!#t:: ; Windows + ALT + T
    SendInput, {Raw}%ClipBoard%
Return

; Win + E
#e::
FilesTitle := "Files ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe"
FilesLocation := USERPROFILE . "\AppData\Local\Microsoft\WindowsApps\files.exe"
    if WinExist(FilesTitle) {
        WinActivate % FilesTitle     ; Set focus
        SendInput ^t                    ; Send CTRL + t shortcut to open a new tab
    } else {
        Run % FilesLocation          ; Start Files
        WinWait % FilesTitle         ; Wait for it ...
        WinActivate % FilesTitle     ; Set focus
    }
return
