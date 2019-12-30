mkdir $HOME/.config/kitty/
mkdir $HOME/.config/fish/
mkdir ~/.config/nvim
mkdir ~/.config/sway
mkdir ~/.config/waybar
cargo install --git https://github.com/nirmoy/boxed
cargo install --git https://github.com/nirmoy/fish-welcome
cp vimrc $HOME/.vimrc
cp init.vim ~/.config/nvim/
cp kitty.conf $HOME/.config/kitty/kitty.conf
cp config.fish $HOME/.config/fish/config.fish
cp config.sway $HOME/.config/sway/config
cp waybar/* $HOME/.config/waybar/
