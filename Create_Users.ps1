# Generic Password for each user added
$PASSWORD   = "Password1"
# Retrieving all names from the file
$USER_FIRST_LAST = Get-Content .\names.txt

# A Secure String is required for certain function i.e(-AccountPassword)
$password = ConvertTo-SecureString $PASSWORD -AsPlainText -Force

# Create new Orgainzational Unit(_USERS)
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

# Loop through each name 
foreach ($name in $USER_FIRST_LAST) {
    # Split the full name into 2 separate elements
    # Store first element([0]) in lowercase in first_name variable
    $first_name = $name.Split(" ")[0].ToLower()
    # Store second element([1]) in lowercase in last_name variable
    $last_name = $name.Split(" ")[1].ToLower()
    # Take the first character of the first name and add it to the beginning of the last name; in lowercase
    $username = "$($first_name.Substring(0,1))$($last_name)".ToLower()
    
    
    New-AdUser -AccountPassword $password `
               -GivenName $first_name `
               -Surname $last_name `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `
               -Enabled $true
}