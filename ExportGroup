foreach ($group in Get-DistributionGroup "GroupName") { get-distributiongroupmember $group | ft @{expression={$_.displayname};Label=”$group”} | Out-File c:\temp\DistributionListMembers.txt -append} 
