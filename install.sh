## system setup script

sudo apt update
# flatpak update

## clone dotfiles
sudo apt install -y stow
cd
git clone https://github.com/subhajit-halder/dotfiles.git dotfiles/

## zsh setup
sudo apt install -y zsh curl wget alacritty kitty fortune-mod
cd dotfiles
stow -vt ~ alacritty
stow -vt ~ kitty

cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cd
rm .zshrc
cd 
cd dotfiles
stow -vt ~/ zsh 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
git clone https://github.com/reobin/typewritten.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/typewritten 
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
ln -s "$ZSH_CUSTOM/themes/typewritten/async.zsh" "$ZSH_CUSTOM/themes/async"
source ~/.zshrc

## misc
sudo apt install -y firefox google-chrome-stable zathura gparted gnome-tweaks menulibre
# flatpak install -y flatseal

## Virtualbox
sudo apt install -y cpu-checker qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo apt install -y virtualbox  

## dev
sudo apt install -y default-jdk python3 python3-pip pipx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
sudo apt install -y code geany

## firewall
sudo apt install -y ufw gufw
sudo ufw enable
sudo apt install -y chkrootkit clamav clamtk clamtk-gnome

## nautilus open any terminal
#pip install --user nautilus-open-any-terminal
#glib-compile-schemas ~/.local/share/glib-2.0/schemas/
#gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal kitty


## flatpaks
# flatapk install -y 

## torrent stuff
sudo apt install -y deluge torbrowser-launcher
