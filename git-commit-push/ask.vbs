Dim shell, result
Set shell = CreateObject("WScript.Shell")
result = shell.Popup("Time's up!" & vbCrLf & "Git-commit-push script has ended" & vbCrLf & "Do you want to re-run the script?", 0, "Warning !", vbYesNo + vbExclamation)
If result = vbYes Then
    WScript.Echo "yes"
Else
    WScript.Echo "no"
End If
