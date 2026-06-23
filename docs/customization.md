# Terminal Theme Customization

This directory contains collections of terminal themes I use.

## Using `terminal-themes.json` with Windows Terminal

Windows Terminal stores its themes within its `settings.json` file inside a `"schemes"` array. Since `terminal/terminal-themes.json` is a JSON array of theme objects, you cannot simply copy and paste the entire file into `settings.json`.

### Steps to add these themes:

1.  **Open Windows Terminal Settings:** Open Windows Terminal and press `Ctrl + ,` to open the Settings GUI, or open the `settings.json` file directly (usually located in `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_...\LocalState\settings.json`).
2.  **Locate the `schemes` array:** Inside `settings.json`, look for the `"schemes": [` block.
3.  **Add a specific theme:**
    *   Open `terminal/terminal-themes.json` in your editor.
    *   Find the theme object you wish to use.
    *   Copy that object and paste it into the `schemes` array in your `settings.json`.
    *   Ensure the JSON syntax is valid (e.g., adding a comma if it's not the last element).
4.  **Apply the theme:**
    *   Save your `settings.json`.
    *   In the Windows Terminal Settings GUI, go to **Profiles > Defaults > Appearance**.
    *   Select your preferred theme from the **Color scheme** dropdown.

## PowerShell Customization

This directory contains my PowerShell Core configuration files.

### Files in `powershell/`

- **`user-profile.ps1`** — The PowerShell `$PROFILE` script. It:
  - Loads `posh-git` for Git status in the prompt
  - Initializes Oh My Posh with my custom theme (`jzbonner.omp.json`)
  - Imports `Terminal-Icons` for file type icons
  - Configures `PSReadLine` (Emacs mode, prediction from history, Ctrl+D)
  - Enables `PSFzf` for fuzzy finding (Ctrl+F provider, Ctrl+R history search)
  - Sets UTF-8 encoding and forces Fastfetch with an explicit config path
  - Maps bash-style aliases (`vim → nvim`, `ll → ls`, `g → git`, etc.)

- **`jzbonner.omp.json`** — My Oh My Posh prompt theme. It displays:
  - The current directory path (green folder icon)
  - The active Git branch (⚡ lightning icon)
  - A red dot indicator

### Quick Setup

1. Place `user-profile.ps1` and `jzbonner.omp.json` in `~/.config/powershell/`
2. Run `Install-Module posh-git, Terminal-Icons, PSFzf -Scope CurrentUser`
3. Source the profile: `. $PROFILE`
