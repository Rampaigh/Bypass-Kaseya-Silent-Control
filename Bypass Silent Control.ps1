[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic');
[Microsoft.VisualBasic.Interaction]::AppActivate('Kaseya Remote Control');
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}');
