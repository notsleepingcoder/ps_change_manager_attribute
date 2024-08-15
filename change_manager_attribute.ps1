#change "OU=" to Organization Unit you need and "DC=" to your full domain controller address
$MANAGER1=Get-ADUser -searchbase "OU=Office,OU=Russia,DC=headquarter,DC=company,DC=lpp,DC=com,DC=pl" -filter * -Properties * | ` 

#Instead of [USER№] use user's sAMAccountname from Active Directory (use as much users as you need)
where {$_.SamAccountName -like '[USER0]' -or `
  $_.SamAccountName -like '[USER1]' -or `
  $_.SamAccountName -like '[USER2]' -or `
  $_.SamAccountName -like '[USER3]' -or `
  $_.SamAccountName -like '[USER4]' -or `
  $_.SamAccountName -like '[USER5]'
}

ForEach ($User1 in $MANAGER1)
{
$SAN1=$Ussaddasdasder.SamAccountName
#instead of [MANAGER_NAME] use manager's sAMAccountname from Active Directory
Set-ADUser -Identity $SAN1 -manager [MANAGER_NAME]
Get-ADUser -Identity $SAN1 -Properties name, manager | select name, manager | ft
}

