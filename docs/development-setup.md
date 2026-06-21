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
1. **🖥️ hyper** ~ [here](https://hyper.is/)
2. **🖥️ tabby** ~ [here](https://tabby.sh/)

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
* Step 5: Install Rust (optional)
* Step 6: Understanding/Updating Environment Variables/PATH

#### Step 2: Configuring Windows Terminal 

![terminal-settings](https://res.cloudinary.com/dzmc7doja/image/upload/v1645395667/notes-imgcontent/windowsterminal-settings.png)

Your terminal settings for Windows Terminal can be managed via a GUI and a JSON file. You should handle most customization options via the GUI and reserve the JSON settings panel for colorscheme and managing terminal distribution startup properties.  

##### GUI - Startup Settings
Set your default profile to Pwrshell or your Ubuntu distribution, then set your default terminal application to Windows Terminal. Ensure that **Launch Mode** is set to default and **New Instance Behavior** is set to `Create a new window`. Launch Size determines your default windows size. I find that `200` column width by `50` row height, is optimal for 1920 by 1080 screen sizes. 

##### GUI - Interaction Settings
The two most important settings are: 
1. **Automatically copy selection to clipboard: `on`** <br />
*When this is set to true, a selection is immediately copied to your clipboard upon creation.*
2. **Automatically detect URLs and make them clickable: `on`** <br /> 
*When this is set to true, URLs are made clickable via `Ctrl + Left Click`*

##### GUI - Appearance Settings
These customization options will depend on personal preference. I currently have them configured as follows: 

![appearance-settings](https://res.cloudinary.com/dzmc7doja/image/upload/v1645417531/notes-imgcontent/appearance-settings.png)

##### GUI - Rendering Settings
Leave everything disabled. That's it. 

##### GUI - Action Settings
You can use this option menu to configure your keymappings. I find that the default keymappings are more than sensible, but it may be helpful to cater these to your preference. The most useful keybindings are going to be associated with navigation. You may have heard of the terminal multiplexer known as [`tmux`](https://github.com/tmux/tmux/wiki). With tab  and pane functionality being built into Windows Terminal you can treat the entire terminal as one big `tmux` instance. Having keybindings that allow for quick navigation across tabs and across panes, is most important.  

#### Step 3: Choose/Customize colorscheme for Windows Terminal 
You can use the GUI option menu `Color schemes` to configure the color combination of your Windows Terminal, but I find it to be easier to manage colorscheme and styles via the `JSON` settings option. I have gone ahead and compiled a number of useful colorscheme palletes to easily import into your development environment. 

Once you have imported the wsl-themes.json file into your `JSON` settings. You can then select the appropriate colorscheme by going to the *Color schemes* option menu and selecting it from the drop-down menu. 

**Windows Terminal ColorSchemes** - (sourced from: [wslthemes](https://windowsterminalthemes.dev/))
![wsl-themes](https://res.cloudinary.com/dzmc7doja/image/upload/v1645422559/notes-imgcontent/wsl-themes.png)
> *click [here](https://github.com/Jzbonner/jzbonner/blob/main/development-environment/wsl-themes.json) to download the wsl-themes.json file*

#### Step 4/Step 5: Install Go-lang or Rust
I find that there are a number of useful command line utilities built in Rust and Go-lang that aid in your overall development experience. Installing Go-land and Rust in a windows environment is as simple as downloading the necessary SDK, and walking through the prompt. 

| Go-lang | Rust |
| --- | --- |
| link to go-lang [install](https://go.dev/) | link to rust [install](https://www.rust-lang.org/learn/get-started) |

**Rust Command Line Tools**
1. xsv - a command line program for indexing, slicing, analyzing and joining csv files [link](https://github.com/BurntSushi/xsv)
2. tokei - a command line program for displaying statistics about your code [link](https://github.com/XAMPPRocky/tokei)
3. btm - a customizable command line GUI for process/system resources [link](https://github.com/ClementTsang/bottom)

**Go-Lang Command Line Tools**
1. gron - a command line tool for making json data greppable [link](https://github.com/tomnomnom/gron) 
2. get-headers - a command line tool for displaying GET headers of a specific URL [link](https://github.com/carlmjohnson/get-headers) 

#### Step 6: Understanding/Updating Environment Variables/PATH
After installing Go-lang and/or Rust. You will want to make sure that you have the necessary project directory added to your system `Environment Variables`. A similar process is also required in your Ubuntu environment. But, first we will take a look at `Environment Variables` in Windows OS. You can access your Environment Variables in Windows 11 by simply hitting the 🪟 key and typing **Environment Variables** in the search bar, then click **Edit the system environment variables**. 

From there you will want to make sure that you have added new environment variables for both Rust (i.e. cargo) and Go-lang, refer to the screenshot below: 

![env-variables](https://res.cloudinary.com/dzmc7doja/image/upload/v1645426328/notes-imgcontent/environment-variables.png)

Setting up environment variables in Linux requires you to edit your PATH variables. PATH variables must be setup in your `.bashrc` file, or your `.zshrc` file if you have a terminal prompt installed in place of bash (we will dive deeper into this in the next section). 

You will need to open an Ubuntu terminal instance and navigate to your home directory (i.e. type `cd ~` to do so). From there you can access your `.bashrc` or `.zshrc` file using vim or nano (built in text-editors to the linux ecosystem - type `nano .bashrc` or `nano .zshrc`). Navigate to the bottom of the respective files and place the following export statement: 

```bash
export PATH="$PATH:/home/{your-linux-username}/.local/bin"
```

Most linux based packages are installed in your bin folder and providing the above export statement will allow the PATH of these packages to be accessible via aliases within your command line. That's a little confusing but just understand that it makes your installed (non-native) packages accessible directly from the command line without having to state the PATH directory. 

![path-variables](https://res.cloudinary.com/dzmc7doja/image/upload/v1645427658/notes-imgcontent/path-variables.png)

### Configuring PowerShell Core
Finally the customization part, let's make your Terminal look like this: 

![pwrshell-prompt](https://res.cloudinary.com/dzmc7doja/image/upload/v1645428547/notes-imgcontent/pwrshell-prompt.png)

**TLDR**: use this `user-profile.ps1` in your configuration to setup your PowerShell prompt in accordance with mine: 

```powershell
# Prompt 
Import-Module posh-git 
Import-Module oh-my-posh 


# Load Custom Prompt
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'jzbonner.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression 


# Terminal Icons
Import-Module -Name Terminal-Icons


# PSReadLine
Set-PSReadLineOption -EditMode Emacs 
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History


# FZF
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Alias 
Set-Alias vim nvim 
Set-Alias ll ls 
Set-Alias g git 
Set-Alias grep findstr 
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

function touch {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$Path
    )
    if (Test-Path -LiteralPath $Path) {
        (Get-Item -Path $Path).LastWriteTime = Get-Date
    } else {
        New-Item -Type File -Path $Path
    }
}
```

Link to jzbonner.omp.json file **[here](https://github.com/Jzbonner/jzbonner/blob/main/pwrshll-config/jzbonner.omp.json)**

To understand more about powershell-configuration, powershell-modules and powershell-automation, refer to my GitHub hosted repo markdown file: [here](https://github.com/Jzbonner/jzbonner/blob/main/pwrshll-config/pwrshell-config.md)

#### The Nitty Gritty
Let's walk through step by step how to achieve the above configuration from a default PowerShell configuration. Initially we want to setup our configuration folder so that we can load a predefined `profile` file whenever we load PowerShell Core. Navigate to `C:\Users\{Your-User-Account}` and type the following commands: 

```powershell
# Step One 
mkdir .config/powershell

# Step Two - you can use another text editor for this step (i.e. VSCode). Just naviagte to the file directory and `open with VSCode`
nano .config/powershell/user_profile.ps1

# Step Three - create Aliases to make working in a PowerShell environment similar to that of Bash. Copy the following into the newly created file

# Alias 
Set-Alias vim nvim 
Set-Alias ll ls 
Set-Alias g git 
Set-Alias grep findstr 
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

function touch {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$Path
    )
    if (Test-Path -LiteralPath $Path) {
        (Get-Item -Path $Path).LastWriteTime = Get-Date
    } else {
        New-Item -Type File -Path $Path
    }
}

# Step Four - embed yout custom configuration as the default profile for PowerShell Core
nano $PROFILE.CurrentUserCurrentHost

# it should load a blank file, please type the following in the file and save and close
. $env:USERPROFILE\.config\powershell\user_profile.ps1

# Step Five - open a new PowerShell core terminal and install the following modules for a custom prompt
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force

# Step Six - now we can install a custom theme. Navigate back to the C:\Users\{Your-User-Account}\.config\powershell folder and create a file with the following command; if the touch command doesn't work you may need to open a new instance of PowerShell core for the Alias to take effect 
touch {Your-User-Account}.omp.json

# Now go ahead and copy the entire json schema that I have linked above (titled jzbonner.omp.json) this is my current theme configuration, however if you would like to choose your own theme refer to the theme repo that oh-my-posh offers (it's linked below this section).

# Step Seven - Initialize custom theme 
oh-my-posh --init --shell pwsh --config .\{Your-User-Account}.omp.json | Invoke-Expression 

# Step Eight - after ensuring that the prompt loads correctly we can now embed it in our user_profile.ps1 file, above the #Alias section, inorder to load it as the default prompt whenever you open the PowerShell core prompt in Windows Terminal 
# Prompt 
Import-Module posh-git 
Import-Module oh-my-posh 

# Load Custom Prompt
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'jzbonner.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression 

# Step Nine - install terminal icons with the following command, then add the imported module to your user_profile.ps1 file 
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
# Terminal Icons
Import-Module -Name Terminal-Icons

# Step Ten - install additional powershell core modules for enhanced workflow (these include z dir jumper, PSReadLine Autocompletion Engine and fzf) 
# Use these commands in to install the necessary modules 
Install-Module -Name z -Force 
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

# For fzf fuzzy finder we will need to install it for the Windows ecosystem using scoop first, and then install the necessary PowerShell module to configure it for PowerShell core
# use scoop to install fzf 
scoop install fzf 

# then install the necessary PowerShell module 
Install-Module -Name PSDzf -Scope CurrentUser -Force

# Step Eleven - add remaining initialization options to user_profile.ps1 file and done!
# PSReadLine
Set-PSReadLineOption -EditMode Emacs 
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# FZF
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
```

Using my prompt setup is completely optional, there are a wide variety of themes and PowerShell modules that you can use in accordance with mine or get creative and create one that caters to your own development needs. Below are some important resources for oh-my-posh themes and PowerShell modules: 
1. link to **oh-my-posh** theme repository: **[here](https://ohmyposh.dev/docs/themes)**. All you have to do to change your theme is copy the configuration of a theme's json file into your `{Your-User-Account}.omp.json` (be sure to replace the current contents of that file and not add it as additional schema, the json file only supports one theme configuration at a time). 
2. link to **PowerShell Modules** repository: **[here](https://www.powershellgallery.com/packages)**. Most modules have their own documentation that will walk you through initialization and configuration.

### Configuring Vim 
Buckle in, it's going to be a wild ride.

#### Why Vim??
Why Not? lol but no, you don't really need to adapt your development environment to vim. I hear all the time from people that vim makes your workflow faster and yes this is 100% true. However, with vim-focused extensions in VSCode, I can honestly say that most developers can have a really fast workflow (similar to that of vim) directly in VSCode. Using extensions like **[VSCodeVim](https://github.com/VSCodeVim/Vim)** and **[VSCode-NeoVim](https://github.com/vscode-neovim/vscode-neovim)**

Vim is perfect for development professionals who have an extremely catered workflow that takes advantage of all the extensibility that Vim has to offer under the hood. For most developers however a great deal of the functionality can be achieved in VSCode. And if you are still trying to figure out your most optimal work flow, don't use Vim. Use the IDE/text-editor that you feel the most comfortable in first, then if you find certain features that aren't possible in your IDE/text-editor see if Vim could provide you greater benefit. With that being said, I am using Vim and I haven't opened VSCode in the past few months. It took about a week to learn the keybindings but once I was able to wrap my head around that, I was just about as quick in Vim as I was in VSCode. Not everyone is going to want to spend an entire week to regain the level of proficiency that they may have already had in another IDE/text-editor. It took about another week to actually get faster than I was previously in VSCode. Two weeks to learn Vim, in my opinion, is a steep learning curve.  

#### So you've choosen Vim, now what? 
Well if my previous paragraph didn't cause you to rethink using Vim then I might as well share with you the tricks of the trade. Don't use Vim or even Neovim. Instead use an IDE layer on top of Vim or Neovim that makes using Vim way more intuitive and feature rich. Something can be said about vim developers attempting to make Neovim/Vim more like VSCode?? **(maybe just use VSCode lol)**. 

I am no expert in setting up the most optimized and developer focused `init.vim` for development. Not even gonna pretend like I am. I would recommend that you don't attempt to setup Neovim or Vim from scratch unless you have about a month to really dive deep into the configuration and tryout a bunch of extensible plugins to see what works for you. Instead look into a few popular IDE layers for Neovim/Vim and see what makes the most sense for you: 
1. **[LunarVim](https://github.com/LunarVim/LunarVim)** - Really good IDE layer that has really sensible keybindings right out the gate. You will probably have the easiest time picking up keybindings with this one, it's the most actively developed Neovim IDE layer that I was able to find
2. **[Neovide](https://github.com/neovide/neovide)** - Also a really good option and is actively being developed 
3. **[Nv-IDE](https://github.com/crivotz/nv-ide)** - Really good IDE layer designed for web developers doesn't have a large community but is actively being developed 
4. **[NvChad](https://github.com/NvChad/NvChad)** - Really good IDE layer with a large community of contributors, a lot to offer with this one
5. IF YOU MUST BUILD YOUR NEOVIM ENVIRONMENT FROM SCRACTCH, BUT LIKE WHY? - use this search tool to explore all the developer focused plugins that NeoVim has to offer: **[here](https://neovimcraft.com/)**

#### The Walkthrough
This could be it's own article in and of itself. My best advice is to follow the installation guides that are specific to each IDE layer listed above. There will more than likely be some kinks to work out with your installation and there's a lot of good "this broke how do I fix this" in the FAQ's for each IDE layer. My current Neovim environment takes advantage of LunarVim. See below: 

![LunarVim](https://res.cloudinary.com/dzmc7doja/image/upload/v1645514108/notes-imgcontent/lunarvim-config.png)

### Configuring GitHub
You can do a lot of things with GitHub these days. From version control to project management to github webhooks. Automation through GitHub has been made possible. I use GitHub Project for project management and take advantage of GitHub applications to create labels and milestones for repositories through a yml file. For more detail on this process refer to this [link](https://github.com/Jzbonner/jzbonner/blob/main/github-custom/github-customizations.md)

GitHub webhooks is very helpful if for setting up GitHub integrations for CI/CD amongst other needs. It's by no means a requirement and could be left out of your configuration process. If you work on small to large teams they may be useful for employing a consistent deployment pipeline. If you would like to learn more about GitHub webhooks refer to this [link](https://www.cprime.com/resources/blog/how-to-integrate-jenkins-github/) 
