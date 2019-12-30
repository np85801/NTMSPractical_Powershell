# Identify a cmdlet that produces a random number
Get-Command -Noun *Rand*

Get-Random 

#Identify a cmdlet that displays the current dat and time
Get-Help Get-Date -ShowWindow

Get-date

#What type of object the cmdlet from task 2 Produce?
Get-date | Get-Member 
< # Object type is System.DateTime# >

#Identify the cmdlet that displays information about installed hotfixes on windows
Get-Command -Noun *hotf*

Get-HotFix

#Display a list of 50 newest entries from security log.
Get-Command -Noun *event*

Get-Help Get-EventLog -ShowWindow

#Need admin privilage to run this command
Get-EventLog -LogName Security -Newest 50 -Verbose


