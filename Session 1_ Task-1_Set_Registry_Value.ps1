#get a list of all the local drives
get-psdrive

#Set registry Location
set-location -path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer

#get regestry values in Advance folder
Get-ChildItem -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer | Where-Object {$_.Name -like "*adv*"}
#or we can use the below command for see regestry values.
Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\advanced

#DontPrettyPath value change from 0 to 1

#Take Help gor Set-ItemProperty
Get-Help Set-ItemProperty -ShowWindow

Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\advanced -Name "DontPrettyPath" -Value 1
