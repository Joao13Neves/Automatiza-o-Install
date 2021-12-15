
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
cinst googlechrome --version=96.0.4664.110 -Y

Write-Host "Installing Java (JDK)"
cinst jdk8 --version=8.0.211 -Y

Write-Host "Installing Winrar"
cinst winrar -Y

Write-Host "Installing Git"
cinst git -Y

Write-Host "Installing AnyDesk Exe"
cinst anydesk.install --version=7.0.4 -Y

Write-Host "Installing CCleaner"
cinst ccleaner --version=5.87.9306 -Y

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
