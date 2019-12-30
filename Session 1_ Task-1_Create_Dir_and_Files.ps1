#Create a new directory called C:\Demo.
New-Item -Path C:\ -Name Demo -ItemType Directory -Verbose

#Create a zero-length file named C:\Demo\Test.txt
New-Item -Path C:\Demo -Name Test.txt -ItemType File -Verbose

#Try to change the content of the Test.txt file.
Add-Content -Path C:\Demo\Test.txt -Value "try to change something" -Verbose
