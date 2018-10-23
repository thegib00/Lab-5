write-host "Input a path for the file server."
read-host "Path" 
cls

write-host "Are you sure you want to continue?"
read-host 
cls

write-host "Input a number"
$num = "5,50,50,3,1" 
[int]$user = read-host
foreach-object -process {
    $user*$num
}
cls

write-host = "Testing Connections..."
$serverlist = import-csv "c:\fileserver\serverlist.csv"
foreach-object {
    $serverlist do test-connection
}


pause