#List of shares:
$shares = @( "\\share1\this\that" "\\share2\this\that\also" ) 
    foreach ($share in $shares) { $filename = $share -replace '\\','_' 
       Get-Acl $share | select -exp Access | Export-Csv $filename".csv" -Append -NoTypeInformation }