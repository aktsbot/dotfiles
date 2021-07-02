# dotfiles

## Intro

These are my personal configs for the software I use on my home and work machines. 
I run [dwm](https://dwm.suckless.org/) on top of [Voidlinux](https://voidlinux.org/).

![preview](https://www.aktsbot.in/pub/scrots/dwm_suckless_02.png)

## Quick dwm setup guide

- Get the source `git clone https://git.suckless.org/dwm --depth=1`
- Install build deps `$ sudo xbps-install -S base-devel libX11-devel libXft-devel libXinerama-devel`
- Run `make` in the source folder once, to see if compilation is a go!
- A `config.h` is created if we do the above. If not copy over `config.def.h` as `config.h`
- The [build of dwm](https://github.com/aktsbot/suckless/tree/main/dwm) which I run has 
  - i3-like keybinds
  - media key controls
  - [pertag](https://dwm.suckless.org/patches/pertag/) and [systray](https://dwm.suckless.org/patches/systray/) patches applied.
  - refer the [README](https://github.com/aktsbot/suckless/blob/main/dwm/README) for more info
  - uses a patched [st](https://github.com/aktsbot/suckless/tree/main/st) as the main terminal.

## Install these first!

- Install `vim-plug` for neovim
  ```
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```

## Other things

- For installing custom fonts, put them in `$HOME/.fonts` and do `$ fc-cache -vf`
- For themes and icons/cursors: `$HOME/.themes` and `$HOME/.icons`
- The `.terminfo` files are needed for italics in tmux. Install a terminfo file 
with`tic -sx tmux-256color-italic.terminfo`.

`happy hacking`
