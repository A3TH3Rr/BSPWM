# My Dotfiles

This repository contains the configuration files I use for my Arch Linux setup with **BSPWM** as the window manager. These dotfiles are designed to keep my environment consistent across machines and can be easily cloned and used.

## Included Configurations

- **BSPWM**: Window manager setup (`~/.config/bspwm/bspwmrc`)
- **SXHKD**: Hotkey daemon (`~/.config/sxhkd/sxhkdrc`)
- **Polybar**: Status bar configuration (`~/.config/polybar/`)
- **Picom**: Compositor for transparency and effects (`~/.config/picom/picom.conf`)
- **Shell**: Custom shell configurations (`~/.bashrc`, `~/.zshrc`)

## Installation

You can clone this repository and use the bare repository method to keep your dotfiles in their original location without the need for symlinks:

```bash
git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
```

## Screenshots

Here are a few screenshots of my setup:

### BSPWM Desktop
![BSPWM Desktop](dotfiles/Screenshots/Desktop.png)

### Polybar
![Polybar Setup](dotfiles/Screenshots/Polybar.png)

### Terminal
![Terminal](dotfiles/Screenshots/Terminal.png)

## Usage

- **BSPWM**: Window manager controls.
- **SXHKD**: Custom key bindings.
- **Polybar**: Modular status bar configurations.
- **Picom**: Transparency and animations for windows.
- **Shell**: Shell configurations (bash/zsh) for prompt and aliases.

## License

Feel free to use, modify, and share these dotfiles. Contributions and suggestions are welcome!
