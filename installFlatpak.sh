cd 
sudo apt update
sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y \
    com.github.tchx84.Flatseal \
    com.github.jeromerobert.pdfarranger \
    com.github.johnfactotum.Foliate \
    com.github.junrrein.PDFSlicer \
    com.github.xournalpp.xournalpp \ 
    com.microsoft.Teams \
    com.obsproject.Studio \
    com.spotify.Client \
    com.uploadedlobster.peek \
    im.riot.Riot \
    info.febvre.Komikku \
    md.obsidian.Obsidian \
    net.agalwood.Motrix \
    org.clementine_player.Clementine \
    org.filezillaproject.Filezilla \
    org.gnome.Solanum \
    org.gnome.clocks \
    org.nicotine_plus.Nicotine \
    org.onionshare.OnionShare \
    org.qutebrowser.qutebrowser \
    org.telegram.desktop \
    org.zotero.Zotero \
    us.zoom.Zoom \
    xyz.xclicker.xclicker 
