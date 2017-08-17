$RetainedDays = 1
$culture = [System.Globalization.CultureInfo]::InvariantCulture
$ProcessFiles = Get-ChildItem - Path $RootPath -Recurse | Select FullName,@{
L='ParsedDate';
E={ [DateTime]::ParseExact($_.Name"'app_'MMddyyyy.log'",$culture)}
} | Where { $_.ParsedDate -lt (Get-Date).AddDays(-$RetainedDays)}