# Ensure TLS1.2 is enabled (unable to get packages below otherwise)
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord

# Install Nuget, needed to install DSC modules via PowerShellGet
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

# Install required PowerShell Modules
Install-Module -Name cChoco -Force
