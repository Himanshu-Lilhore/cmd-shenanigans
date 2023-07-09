Dim shell, result
Set shell = CreateObject("WScript.Shell")
result = shell.Popup("Time's up!\nGit-commit-push script has ended\nDo you want to rerun the script?", 0, "Title", vbYesNo + vbQuestion)
If result = vbYes Then
    WScript.Echo "yes"
Else
    WScript.Echo "no"
End If
