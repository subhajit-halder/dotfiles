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
stow -vt ~ zsh
stow -vt ~ alacritty
stow -vt ~ kitty
source ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten 

## misc
sudo apt install -y firefox google-chrome-stable zathura caffiene gparted gnome-tweaks-tool menulibre
# flatpak install -y flatseal

## Virtualbox
sudo apt install -y cpu-checker qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo apt install -y virtualbox  

## dev
sudo apt install -y default-jdk python3 python3-pip pipx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
sudo apt install -y code

## firewall
sudo apt install -y ufw gufw
sudo ufw enable
sudo apt install -y chkrootkit clamav clamtk clamtk-gnome

## nautilus open any terminal
pip install --user nautilus-open-any-terminal
glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal kitty


## flatpaks
# flatapk install -y 


