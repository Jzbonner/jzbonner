# Development Environment Setup 
This is a general guide for setting up a quick and efficient development environment specifically catered towards the windows ecosystem. You can use the guide below to work through setting up Windows Subsystem for Linux, Windows PowerShell Core, Ubuntu 20.04 LTS, VSCode, LunarVim, GitHub Configuration and some basic powershell automation scripts.   

## Setting up Windows Subsystem for Linux
Find a linux distro that fits your development workflow: 

![Linux Distro](https://res.cloudinary.com/dzmc7doja/image/upload/v1645341475/notes-imgcontent/linux_distro.png)
> *the rest of this article is setup using Ubuntu 20.04 LTS*

Most Linux Distros are available in the **Microsoft Store**. Search `Linux` and select *Ubuntu 20.04* This will install the LTS version on your machine. Be sure that Windows Subsystem for Linux is enabled on your PC. Follow this guide to set that [up](https://docs.microsoft.com/en-us/windows/wsl/install)

You will then need to setup your ubuntu account by opening the newly installed Ubuntu prompt and following the onscreen-instructions. From there run the following commands to get your distro upgraded, and to install some basic packages to hit the ground running in setting up your development environment. 

```bash
# step one 
sudo apt update && sudo apt upgrade

# step two 
sudo apt install make curl build-essential openssl libssl-dev unzip 

# step three 
sudo apt install ubuntu-restricted-extras
```

### Installing PowerShell Core
You can install PowerShell Core from the Microsoft Store. Click [Here](https://www.microsoft.com/store/productId/9MZ1SNWT0N5D)

### Installing Terminal Prompt 
For a windows development environment I recommend you use Windows Terminal as your command line of choice. This enables you to use both PowerShell core and your newly installed Linux (bash-based) Ubuntu shell in tandem. You can install Windows Terminal from the Microsoft Store, Click [Here](https://www.microsoft.com/store/productId/9N0DX20HK701). 

This will now be your terminal of choice however there a number of alternatives that you can consider: 
1. hyper ~ [here](https://hyper.is/)
2. tabby ~ [here](https://tabby.sh/)

## Customization and Configuration
The tools above can be customized to your specific needs. You now have a terminal that lets you use both a windows-based and bash-based command line. From here it's all about maximizing workflow. Through my personal development journey, I have found a few tools that have helped me get into a flow state and code/manage project directories at lightning speed. Continue reading below to see learn more: 

### Picking the Right Text Editor... I mean IDE
IDE's are beefy and designed for specific development environment, text editor are for more common use cases (code-review, version control, editing text). I find that the need for IDE's is becoming more of a choice of preference rather than a requirement for most technology stacks. It's your choice but if you enjoy a less dialed in experience I would say leave the IDE's to only the most professional work environments and rely on text/code editors for everything else. 

Here are some highly recommended text editors: [VSCode](https://code.visualstudio.com/), [JetBrains Fleet](https://www.jetbrains.com/fleet/), and the holy grail [VIM](https://www.vim.org/)

It's your choice as to which one you prefer. I personally find that VSCode and Vim are my preferred options but I think Fleets is picking up popularity and will continue to be a contender in the years to come. 

* If you are a beginner use **VSCode or Fleets**
* If you are an advanced user, are already familiar with, or just want to spend endless hours customizing your development worfklow use **VIM**

### Configuring VSCode
VSCode has a wonderful GUI for managing settings and extensions. And depending on your work environment you will more than likely have to determine for yourself what customization options are most important to you. I would recommend you begin by looking at this [x-team](x-team.com) blog [article](https://x-team.com/blog/best-vscode-extensions/) for an idea of the most popular extensions for VSCode. 

The very first extension you need to setup is `Settings Sync`. This will ensure that all your customization options are synced to the GitHub cloud and whenever you setup VSCode in subsequent environments you can easily import all your desired settings and extensions. In short it allows you to setup VSCode one time and keep that configuration consistent even if you re-install elsewhere (i.e. if you setup your development environment on another computer). 

![settings-sync](https://res.cloudinary.com/dzmc7doja/image/upload/v1645343763/notes-imgcontent/settings-sync.png)

As your programming knowledge grows you may find that the number of extensions you have installed does so as well. I currently have 24 extensions installed. Be warned, they don't make you a better programmer, just a faster one... hopefully. 

Extensions to consider: 
| Extensions | Extensions |
| --- | --- |
| **Add jsdoc Comments** - add @param and @return tags  | **Auto Rename Tag** - auto rename paired html/xml tags |
| **Bookmarks** - mark lines and jump to them | **Bracker Pair Colorizer** - color matching brackets | 
| **CSS Peek** - allows peek and goto definitions for css #ids and classes| **Docker** - create and manage containerized applications |
| **Electron Color Theme** - makes the code editor nice to look at| **JavaScript ES6 snippets** - code snippets for ES6 synatx |
| **Jupyter** - jupyter notebook support in vscode| **Jupyter Keymaps** - keymaps for jupyter notebooks |
| **Jupyter Notebook Renders** - render jupyter notebooks in vscode | **Leetcode** - nobody needs to have this, install it anyway |
| **Live Server** - local server with live reloading | **Material Icon Theme** - file icons ftw |
| **PowerShell** - allows you to run powershell moduels in vscode terminal | **Prettier** - code formatter |
| **Quokka.js** - a bunch of cool javascript focused dev tooling | **Remote Containers** - allows you to use vscode in remote containers |
| **TODO Highlight** - todo highlights in directly in code | **Thunder Client** - postman alternative |

### Configuring Windows Terminal 
**Typography matters!** the first step to being a great developer is having a pleasing font to look at. Code syntax gets boring and repetitive and in order to take advantage of your command line you need a high quality font. The first thing you need to look into is **NerdFonts**. 

![nerd-fonts](https://res.cloudinary.com/dzmc7doja/image/upload/v1645345964/notes-imgcontent/nerd-fonts.png)

Selecting a nerd font is crucial to enabling the right look and feel for your terminal themes and plugins. Without you may notice some character-code issues when enabling certain terminal themes.  

From here there are 6 steps that will make you a poweruser of Windows Terminal: 
* Step 1: Download and install your font off choice. 
* Step 2: Configure settings for Windows Terminal 
* Step 3: Choose/Customize colorscheme for Windows Terminal 
* Step 4: Install Go-Lang (optional)
* Step 5: Install Rust (required)
* Step 6: Understanding/Updating Environment Variables/PATH

### Configuring PowerShell Core
Document the steps in this Youtube [Video](https://www.youtube.com/watch?v=5-aK2_WwrmM)

### Configuring VIM
Buckle in, it's going to be a wild ride.

### Configuring GitHub
You can do a lot of things with GitHub these days. From version control to project management to github webhooks. Automation through GitHub has been made possible. I use GitHub Project for project management and take advantage of GitHub applications to create labels and milestones for repositories through a yml file. For more detail on this process refer to this [link](https://github.com/Jzbonner/jzbonner/blob/main/github-custom/github-customizations.md)

GitHub webhooks is very helpful if for setting up GitHub integrations for CI/CD amongst other needs. It's by no means a requirement and could be left out of your configuration process. If you work on small to large teams they may be useful for employing a consistent deployment pipeline. If you would like to learn more about GitHub webhooks refer to this [link](https://www.cprime.com/resources/blog/how-to-integrate-jenkins-github/) 
