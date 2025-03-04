# How to symlink VsCode settings on Windows
In powershell it is not as intuitive to create symlinks. The follow commands are used to create symlinks from the
dotfiles directory to the directory where VsCode's User's configs are saved.

## User settings.json
``` ps
New-Item -ItemType SymbolicLink -Path "$Env:APPDATA\Code\User\settings.json" -Target "$Env:USERPROFILE\.dotfiles\vscode\settings.json"
```

## User keybindings.json
``` ps
New-Item -ItemType SymbolicLink -Path "$Env:APPDATA\Code\User\keybindings.json" -Target "$Env:USERPROFILE\.dotfiles\vscode\keybindings.json"
```

## User snippets directory
``` ps
New-Item -ItemType SymbolicLink -Path "$Env:APPDATA\Code\User\snippets" -Target "$Env:USERPROFILE\.dotfiles\vscode\snippets"
```
