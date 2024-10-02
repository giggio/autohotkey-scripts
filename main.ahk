#Requires AutoHotkey >=2.0

#Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

!#t:: ; Windows + ALT + T, paste as plain text
{
    SendInput "{Raw}" A_Clipboard
    Return
}

~LWin up:: ; remap Windows key to Windows+Tab
{
    If (A_PriorKey = "LWin") ; LWin was pressed alone
    {
        Send "#{Tab}"
    }
    return
}

; Win + E, map to the files app
; No longer in use
; #e::
; FilesTitle := "Files ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe"
; FilesLocation := USERPROFILE . "\AppData\Local\Microsoft\WindowsApps\files.exe"
;     if WinExist(FilesTitle) {
;         WinActivate % FilesTitle     ; Set focus
;         SendInput ^t                    ; Send CTRL + t shortcut to open a new tab
;     } else {
;         Run % FilesLocation          ; Start Files
;         WinWait % FilesTitle         ; Wait for it ...
;         WinActivate % FilesTitle     ; Set focus
;     }
; return
