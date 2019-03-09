###########################################################################################
# Stormtrooper Project 
# MIT License - https://github.com/deltadan/stormtrooper
# Copyright (c) 2018 Dan Patrick - @deltadan
#
#Script Purpose
# - This script will install Chocolatey and the packages listed
# - This will become for DEV VNET for the Onion Implementation
###########################################################################################

#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Assign Packages to Install
$Packages = 'googlechrome',`
            'visualstudiocode',`
            'git'

#Install Packages
ForEach ($PackageName in $Packages)
{choco install $PackageName -y}


