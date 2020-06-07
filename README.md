# dotfiles

## Intro

These are my personal configs for the software I use on my home and work machines. 
I run [dwm](https://dwm.suckless.org/) on top of [Voidlinux](https://voidlinux.org/).

![preview](https://www.aktsbot.in/pub/scrots/dwm_nord.png)

## Quick dwm setup guide

- Get the source `git clone https://git.suckless.org/dwm --depth=1`
- Install build deps `$ sudo xbps-install -S base-devel libX11-devel libXft-devel libXinerama-devel`
- Run `make` in the source folder once, to see if compilation is a go!
- A `config.h` is created if we do the above. If not copy over `config.def.h` as `config.h`
- My [config.h](./dwm/config.h) has 
  - i3-like keybinds
  - nord colors
  - media key controls
- I also have a patch applied called [pertag](https://dwm.suckless.org/patches/pertag/). 
  In normal dwm, all workspaces/tags change mode, if we change mode in any one tag. This patch
  applies modes per tag, so I can have tiling on one and monocle on the other.
- To apply patch `$ patch -p1 < dwm-pertag-6.2.diff`

## Install these first!

- [Get](https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy) `diff-so-fancy` 
  and add it to `$HOME/bin` or in anywhere thats in `$PATH`. 
- [Get](https://github.com/muennich/urxvt-perls) `clipboard,url-select,keyboard-select` perl scripts for urxvt, and add 
  them in the folder `~/.urxvt/ext`.
- See `.bashrc` and put [git-prompt.sh](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh) 
  in the right place.
- Install `vim-plug` for neovim
  ```
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```

## Other things

- For installing custom fonts, put them in `$HOME/.fonts` and do `$ fc-cache -vf`
- For themes and icons/cursors: `$HOME/.themes` and `$HOME/.icons`

`happy hacking`
