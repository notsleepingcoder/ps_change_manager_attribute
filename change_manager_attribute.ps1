$MANAGER1=Get-ADUser -searchbase "OU=Office,OU=Russia,DC=headquarter,DC=company,DC=lpp,DC=com,DC=pl" -filter * -Properties * | ` 
#Вместо [OU] подставляем Organization Unit из AD где будут искаться пользователи, например "OU=Office,OU=Russia,DC=headquarter,DC=company,DC=lpp,DC=com,DC=pl"
where {$_.SamAccountName -like '[USER0]' -or `
$_.SamAccountName -like '[USER1]' -or ` #Вместо [USER№] подставляем sAMAccountname из AD
$_.SamAccountName -like '[USER2]' -or `
$_.SamAccountName -like '[USER3]' -or `
$_.SamAccountName -like '[USER4]' -or `
$_.SamAccountName -like '[USER5]'
}
ForEach ($User1 in $MANAGER1)
{
$SAN1=$Ussaddasdasder.SamAccountName
Set-ADUser -Identity $SAN1 -manager [MANAGER_NAME] #Тут вместо [MANAGER_NAME] подставляем sAMAccountname руководителя/менеджера
Get-ADUser -Identity $SAN1 -Properties name, manager | select name, manager | ft
}

