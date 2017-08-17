$RetainedDays = 1
$ArchiveBoundary = (Get-Date).AddDays(-$RetainedDays).ToString('MMddyyyy')

$ProcessFiles = Get-ChildItem -Path $RootPath -Recurse | 
Where-Object { ($_.BaseName -split '_|\.')[1] -lt $ArchiveBoundary