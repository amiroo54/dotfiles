
# Variables
dotfiles_dir=~/dotfiles

# Removing previuos configs
sudo rm -rf ~/.config/hypr > /dev/null 2>&1
sudo rm -rf ~/.config/waybar > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1

# Adding new config using symlinks
ln -sf $dotfiles_dir/hypr ~/.config/
ln -sf $dotfiles_dir/waybar ~/.config/
ln -sf $dotfiles_dir/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/.zshrc ~/.zshrc




