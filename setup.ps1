
# Installs Chocolatly
# This is a package manager that we'll use to install the rest of the software
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install the rest of the software
choco install -y `
	sql-server-express `
	sql-server-management-studio `
	dotnetcore-sdk `
	nodejs `
	git `
	GoogleChrome `
	vscode

# Install Scope package manager
# This will be used to install command line tools that Chocolatly don't have
# Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Setup norwegian keyboard layout
Set-WinUserLanguageList -LanguageList nb-NO -Force
