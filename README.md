## Active Directory Home Lab
## Architecture 
![image](https://github.com/DamonM1/HomeLabAD/assets/62221702/e079a6b6-f31f-49e5-89c8-8ca3b6c6c9a8)<br>

<b>Technology Used </b>
  - Virtualbox
  - Windows 10 Iso
  - Windows Server 19 Iso
## Domain Controller Components 
Configure the 2 NICs used by the Domain Controller 
![image](https://github.com/DamonM1/HomeLabAD/assets/62221702/ebb66505-a644-4855-b064-c4cd9ade8c7b)<br>
  - 10.x.x.x (home IP) this is the network interface that will be used for the Internet.
  - 169.xxx.xxx.xx is the network interface that will be used for Internal communications. Must assign corresponding NIC an IP address manually.
![image](https://github.com/DamonM1/HomeLabAD/assets/62221702/08d8c0df-11c9-4ce0-acb2-1661028715c4)<br>
![AssigningIP](https://github.com/DamonM1/HomeLabAD/assets/62221702/6a1ff1c8-10dd-4a2c-b87d-edd1078b730a)<br>

<b> Settinng up Domain Controller </b>
  1. Open Server Manager and navigate to "Dashboard" --> "Manage" --> "Add Roles and Features"
  2. Choose "Role-based or feature-based installation" and select the Active Directory Domain Services role. Be sure to continue with installation.
  3. After the installation, click the flag icon in Server Manager and select "Promote this server to a domain controller"
  4. Choose "Add a new forest" and enter root domain name i.e "mydomain.com", continue installation process.
![image](https://github.com/DamonM1/HomeLabAD/assets/62221702/7a209658-edc5-44ce-8dfd-9068014541ad)<br>
<br></br>
<br><b>RAS / NAT </b></br>
![NATconfig](https://github.com/DamonM1/HomeLabAD/assets/62221702/6b7c4c95-3cec-4c70-8a18-216fa7807e05)<br>
![RASNAT](https://github.com/DamonM1/HomeLabAD/assets/62221702/be8bfaf0-96c2-4724-afef-ae55e6052515)<br>

<br><b> DHCP </b></br>
![DHCP_Active](https://github.com/DamonM1/HomeLabAD/assets/62221702/faf5da17-7324-43ae-8355-65b81f20d27d)<br>

## Active Directory User Creation 
Now that the Domain Controller is fully functional it is time to add users to the domain.
<br></br>
Open Windows Powershell ISE (as Administrator)
  - Use command: Set-ExecutionPolicy Unrestricted 
  - Change directory to where powershell script is stored - cd C:\users\"user-account"\desktop
  - [Run powershell script](https://github.com/DamonM1/HomeLabAD/blob/main/Create_Users.ps1) - C:\users\"user-account"\desktop\Create_Users.ps1 <br></br>
  ![AD_UsersComp](https://github.com/DamonM1/HomeLabAD/assets/62221702/a1a148f4-7e65-4046-ba37-a99d20f2be65)<br>

## Create Client1 workstation & join domain 
Once the Client1's workstation is up and running through Virtualbox. Right click the "Start Menu" > "System" > "Rename this PC (advanced)" > "Change"
<br></br>
![DomainJoin](https://github.com/DamonM1/HomeLabAD/assets/62221702/c21247cb-3aef-4c21-8ede-7edbf63952a7)<br>
![ClientDomain](https://github.com/DamonM1/HomeLabAD/assets/62221702/0e877e6b-b8ad-49d8-b69d-c3e1a7a06a9b)<br>



