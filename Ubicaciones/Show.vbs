FileExt = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt"
Set Sh = WScript.CreateObject("WScript.Shell")
St = Sh.RegRead(FileExt)
If St = 1 Then
Sh.RegWrite FileExt, 0, "REG_DWORD"
Else
Sh.RegWrite FileExt, 1, "REG_DWORD"
End If
Sh.SendKeys("{F5}")

Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
SHidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"

Set Sh = WScript.CreateObject("WScript.Shell")
St = Sh.RegRead(Hidden)

If St = 2 Then
    Sh.RegWrite Hidden, 1, "REG_DWORD"
    Sh.RegWrite SHidden, 1, "REG_DWORD"
Else
    Sh.RegWrite Hidden, 2, "REG_DWORD"
    Sh.RegWrite SHidden, 0, "REG_DWORD"
End If

Sh.SendKeys("{F5}")