## PowerShell Configuration in Windows 11

### Wait, Windows Powershell? 
Yes and no. Windows OS ships with Windows Powershell, however you should be using this [Powershell Core](https://github.com/PowerShell/PowerShell)

### Why Powershell?
Most developers are familiar with the command line when it comes to working with CLIs, command line tools, linux/unix based systems, etc. Powershell core was designed as a fork of the original Windows PowerShell, and as such includes enhanced features that may ship to Windows PowerShell at a later date.

### Recommended Installation 
If you are a windows user you can download it directly from the [Windows Store](https://www.microsoft.com/en-us/p/powershell/9mz1snwt0n5d). Otherwise follow the install guide from the Github [Repo](https://github.com/PowerShell/PowerShell). 

A number of commands that are typical for Linux users can also be mapped to Powershell Core commands. Refer to the chart below and refer to my `profile.ps1` for commonly used aliases for Powershell. 
![mapped linux commands for powershell](https://res.cloudinary.com/dzmc7doja/image/upload/v1644128638/notes-imgcontent/powershell_config.png)

### Configuring Powershell 
Please refer to this [document](https://github.com/Jzbonner/jzbonner/tree/main/development-environment) for a step by step guide on how to configure PowerShell in order to get the most out of your development workflow.

#### Important PowerShell Modules 
PowerShell modules can aid in a wide variety of use cases; particularly in Development, Productivity, Security, Systems Administration, Reporting and Web Server Management. I have gone ahead and listed out useful PowerShell Modules for quick reference below but for a deeper diver for refer to [PowerShell Gallery](https://www.powershellgallery.com/packages) for a large list of the most popular PowerShell modules. 
1. **Development**
* Invoke-Build - Build and test automation in PowerShell 
* ModuleBuilder - A module for authoring and building PowerShell modules
* posh-git - Provides prompt with git status summary information and tab completion
* PSReadLIne - Enhanced command line editing in the PowerShell console host 
* ThreadJob - This is a lighter weight solution for running concurrent PowerShell scripts that works within the existing PowerShell job infrastructure

2. **Productivity**
* oh-my-posh - theming capabilities for the PowerShell prompt
* PowerLine - Classes for richer output and prompt 
* Terminal-Icons - PowerShell module to add file icons to terminal based on file extensions 
* PowerShell Pro Aliases - Bash-style aliases for PowerShell 

3. **Security**
* PoshInternals - Collection of system internal tools for PowerShell 
* DSInternals - PowerShell modules exposes several internal features of Active Directory and Azure Active Directory 
* PowerSploit - PowerShell tools for penetration testers 

4. **System Administration**
* Az - PowerShell commands to manage resources in Azure  
* MicrosoftTeams - PowerShell commands for Microsoft Teams 
* Posh-SSH - Provides SSH and SCP functionality for executing commands against remote hosts 
* WifiTools - A set of tools that can simply handling WiFi profiles and connections

5. **Reporting**
* PSWriteWord - A PowerShell module to create Microsoft Word documents in PowerShell
* PSWritePDF - A PowerShell module to create, read, modify, split and merge PDF files on Windows
* PSGraph - A PowerShell module for building graphs with GraphViz

6. **Web Server Management**
* Polaris - A minimalist web framework for PowerShell
* UniversalDashboard - A cross platform for developing websites and REST API
* Pode - A PowerShell framework for creating web servers to host REST APIs and Websites

#### Automation with Powershell
I will update this section with Automation hacks built in PowerShell, in the coming days. 
