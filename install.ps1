
Write-Host "Starting Script"

Write-Host "Configuring ExecutionPolicy and Creating HOME ENV"
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ;

Write-Host "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Checking Chocolatey is Installed"

choco --version

Write-Host "Updating Chocolatey"
choco upgrade chocolatey

Write-Host "Installing Google Chrome"
cinst googlechrome -Y

Write-Host "Installing Java 11 (JDK)"
cinst openjdk --version=11.0.2.01 -Y

Write-Host "Installing Winrar"
cinst winrar -Y

Write-Host "Instlaling Git"
cinst git -Y

# This is a line of comment
# TLS Setting
# [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Trust PowerShell Gallery - this will avoid you getting any prompts that it's untrusted
# Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted

# Install NuGet
# Install-PackageProvider -name NuGet -Force

# Install Module
# Install-Module PSWindowsUpdate

# Check what updates are required for this server
# Get-WindowsUpdate

# Accept and install all the updates that it's found are required
# Install-WindowsUpdate -AcceptAll
