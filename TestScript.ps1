#region Readme
This is a test script just to play with git and gitKraken
#endregion

#region CrashPC
Start-Process  -FilePath C:\WINDOWS\system32\notepad.exe
$Processes = $(Get-Process).Name
while ($Processes -match "notepad") {
    Start-Process  -FilePath C:\WINDOWS\system32\notepad.exe
}    
#endregion

#region SlowPC
$times = 1..100
foreach ($time in $times) {
    Start-Sleep -Seconds 1
    Start-Process  -FilePath C:\WINDOWS\system32\notepad.exe
}
#endregion
