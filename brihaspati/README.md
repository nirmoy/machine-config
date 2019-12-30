Required packages
=================
```
sudo zypper in git make gcc cargo fish kitty taskwarrior
sh ./install_firacode_font.sh

```
Disable Sleep
=============
```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```
Enable power management
=======================
```
for dev in `find /sys|grep "power/control"$`; do  echo auto > $dev; done
```
Fish and Fisher
===============
```
sudo zypper in fzf fzy
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add jethrokuan/fzf
fisher add oh-my-fish/theme-bobthefish
wget https://raw.github.com/barnybug/docker-fish-completion/master/docker.fish -O ~/.config/fish/completions/docker.fish
```
Vim and Neo Plug
================
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo zypper in -y neovim python3-neovim kitty powerline-fonts
```
Window Manager
==============
```
sudo zypper in -y fontawesome-fonts fontawesome-fonts-web sway swaylock rofi mako waybar
```
Task management
===============

```
wget https://raw.githubusercontent.com/TailorDev/Watson/master/watson.fish -O ~/.config/fish/completions/watson.fish
pip install td-watson
```

Screen Recorder
===============
```
sudo zypper ar -cfp 90 http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper install --from=packman gcc-c++ ffmpeg-4-libavutil-devel ffmpeg-4-libavcodec-devel ffmpeg-4-libavformat-devel ffmpeg-4-libswscale-devel libpulse-devel
git clone https://github.com/ammen99/wf-recorder
cd wf-recorder
meson build
ninja -C build
sudo ninja -C build install
```