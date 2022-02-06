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






