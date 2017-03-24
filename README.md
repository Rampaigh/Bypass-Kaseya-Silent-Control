# Bypass Silent Control.ps1
Using Powershell to send an ENTER keystroke to the Kaseya prompt window


```powershell
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic');
[Microsoft.VisualBasic.Interaction]::AppActivate('Kaseya Remote Control');
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}');
```

### Run as Procedure
When running it as a procedure in Kaseya:
- Use `executeShellCommand`
- Run as User, not System
- Use this as the command:

```shell
powershell -c "[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic');[Microsoft.VisualBasic.Interaction]::AppActivate('Kaseya Remote Control');[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[System.Windows.Forms.SendKeys]::SendWait('{ENTER}');"
```
