<# 2) I need an output as below for each service your pc have.
    
    "The displany name of the service BITS is backgrond Intelligent Transfer Service"#>

$services = Get-Service
Foreach($service in $services)
{
    Write-Host The Display name of $($service.name) is $($service.DisplayName)


 }


 <#3) Create a csv file with the name,password as a columns , imort that csv and create local user using that.#>

 Get-command -Noun "*localuser*"

 Get-Help New-LocalUser -online


$Newusers = Import-Csv -path "C:\demo\Username.csv"
foreach($Newuser in $Newusers)
{
   $username = $($newuser.name)
   $password = $($Newuser.password) 

   New-LocalUser -Name $username -Password (ConvertTo-SecureString $password -AsPlainText -Force ) -AccountNeverExpires -PasswordNeverExpires -FullName $Newuser.name

   }

# 3)Create a script which can delete the files only *.log from the "C:\demo\files" location.

Get-Command -Noun *Item*

Get-Help Remove-Item -Online

Remove-Item -Path C:\Demo -Include *log -Recurse

 

 