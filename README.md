# jakup's dotfiles

My collection of dotfiles.  My goal is to use the same configuration on Linux, macOS, and Windows.

I currently use the following platforms:
- Fedora 39 Workstation
- macOS 12, 13
- Windows 11

## macOS Notes

```
brew install stow
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font
```

## Windows Notes

How to get things working on Windows...

### Get Scoop and install dependencies

Download [Scoop](https://scoop.sh/) and follow the quickstart. (Other tools like Chocolately are available.)

This is the scoop quickstart:

```
> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
> irm get.scoop.sh | iex
```

Install packages:

```
> scoop install git
> scoop install clangd
> scoop install gcc
> scoop install go
> scoop install python
> scoop install neovim
> scoop install cmake # required by telescope-fzf-native
> scoop install ripgrep # required by telescope
```

### Install other dependencies using winget

```
winget install "Microsoft.VisualStudio.2022.BuildTools"  # C++ BuildTools also required by telescope-fzf-native
winget install GnuPG.Gpg4win
```

### Use `New-Item` instead of GNU stow.

```
> New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\nvim" -Target "$env:USERPROFILE\dotfiles\neovim\.config\nvim"
> New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.gitconfig" -Target "$env:USERPROFILE\dotfiles\git@home-windows\.gitconfig"
```
