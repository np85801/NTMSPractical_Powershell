# Q1. what will happen with below command?
Get-Service | Export-Csv Services.csv | Out-File 

# use what-if Cmdlet to check what happen with this command.
Get-Service | Export-Csv "Services.csv" | Out-File -WhatIf 

#What if: Performing the operation "Output to File" on target "".

Get-help Export-Csv -ShowWindow

#To get all services in CSV format.
Get-Service | Export-Csv "Services.csv"

#if we use out-file then we need to define path for file below is the example command.
Get-Service | Export-Csv "Services.csv" | Out-File -FilePath "C:\Demo\Services.csv"


#Q2. How can we create the pipe-delimited file instead of the comma-seperated csv file? Give me output of the service in pipe-delimited file.

Get-Help Export-Csv -ShowWindow

Get-Service | Export-Csv -Path "C:\Users\nilesh.pawar\Desktop\Powershell Task\ServicesDel.csv" -Delimiter "|"


#Q3. Check out if there is any way we can eliminate the #information about the type of object from the top of an exported csv file

Get-Command -Noun *Content*

Get-Help Set-Content -ShowWindow

Get-Help Get-Service -ShowWindow

Get-Service | GM

Get-Help Export-Csv

Get-Service | Export-Csv -Path "C:\Users\nilesh.pawar\Desktop\Powershell Task\ServicesDel.csv" -Delimiter "|" -NoTypeInformation


#4) Will this provide expected output , give details Why or Why not? Get-ADComputer -Filter * | Get-HotFix

Get-ADComputer -Filter * | Get-HotFix

#To Check input accepted from ADDcomputer command
Get-Help Get-HotFix -ShowWindow

#Output of ADComputer command
Get-ADComputer | Get-Member

Get-HotFix | gm

Get-Help Get-ADComputer -ShowWindow

#accept pipeline input ByPropertyName : ComputerName which is not available in Get-ADComputer cmdlet hence it is not possible to get all hotfix information.




#Q5 write a command to list the processes from a list of computer from any txt file





