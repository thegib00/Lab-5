#Ask a user to input a number and using if statements tell the user if it is higher or lower then a number you pick out.
#Using Get-Process get only the StartTime property and store it in a variable
#Using a loop print each line of the variable you stored the start times in, and have it print the start time each time the loop runs and a message telling the user what it is outputting.
#Using git make a local copy of this repository https://github.com/PowerShell/PowerShell

write-host "Input a number" #step 1
[int]$user = read-host
if ($user -gt 2) {
    write-host "Your number is greater than 2"
else {
        write-host "Your number is less than 2"
    }
elseif {
    write-host "Your number is equal to 2"
}
}
pause
cls

$starttime = get-process | select-object -property starttime #step 2
$starttime2 = get-date

$starttime | foreach-object -begin {get-date} -process {write-host "This powershell script shows the start time, and here is the starttime: $starttime2"} -end{get-date} #step 3
pause
cls

git remote add origin https://github.com/PowerShell/PowerShell #step 4
pause

write-host "This Powershell Script Has Successfully Been Executed!"
pause