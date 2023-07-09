Dim shell, result
Set shell = CreateObject("WScript.Shell")
result = shell.Popup("Do you want to continue?", 0, "Title", vbYesNo + vbQuestion)
If result = vbYes Then
    WScript.Echo "yes"
Else
    WScript.Echo "no"
End If
