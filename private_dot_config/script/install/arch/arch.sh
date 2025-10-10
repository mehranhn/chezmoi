# init1
pacman -S base base-devel linux linux-headers amd-ucode

# init2
pacman -S vim nano git grub efibootmgr networkmanager wireless_tools ntfs-3g xdg-utils xdg-user-dirs openssh rsync reflector

# amd
pacman -S mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau radeontop amdgpu_top
pacman -S vulkan-icd-loader vulkan-headers

sudo pacman -Sy playerctl pavucontrol htop qt5ct qt6ct imv qbittorrent proxychains xclip moreutils inkscape \
    mlocate alsa-utils dunst libnotify file-roller udisks2 udiskie chezmoi flatpak \
    fzf neovim tree ripgrep fd the_silver_searcher luarocks wget perl-image-exiftool \
    ffmpegthumbnailer network-manager-applet sshfs curl lazygit mpv mpv-mpris \
    obs-studio unrar polkit wireguard-tools tcpdump eza bat tokei docx2txt drawing \
    rustup fish powerline-fonts iptraf-ng mutt ncdu iftop bleachbit unzip btop transmission-cli \
    odt2txt poppler imagemagick mediainfo perl-file-mimeinfo zathura zathura-pdf-mupdf zathura-ps zathura-djvu zathura-cb \
    libvncserver freerdp remmina pass pass-otp handbrake dash shellcheck tcc tor tmux zellij gnome-themes-standard adwaita-icon-theme \
    piper solaar v4l2loopback-dkms fping bind atool starship zbar cairo pango nautilus jq baobab util-linux glow catdoc \
    xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr telegram-desktop \
    wayland-protocols swaybg swayidle swaylock slurp wl-clipboard chafa qt5-wayland qt6-wayland kvantum kvantum-qt5 \
    glfw-wayland grim gamescope sway xorg-xwayland ecryptfs-utils polkit-gnome kdiskmark smartmontools acl wayvnc \
    yazi p7zip zoxide ouch nerd-fonts miller scrcpy gvfs-smb netcat mpd mpc ncmpcpp cpio samba cifs-utils waypipe labwc \
    pipewire-docs pipewire-pulse pipewire-alsa pipewire-jack pipewire-audio wireplumber helvum noise-suppression-for-voice \
    ttf-hack ttf-font-awesome ttf-roboto inter-font ttf-fira-code ttf-hack-nerd tofi foot nwg-look \
    noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-sourcecodepro-nerd ttf-firacode-nerd ttf-iosevka-nerd \
    hyprland hyprsunset hypridle hyprcursor hyprpaper hyprlock hyprland-qt-support hyprpicker hyprpolkitagent hyprutils hyprshot waybar \
    easyeffects calf mda.lv2 lsp-plugins-lv2 mda.lv2 yelp zam-plugins-lv2

paru -S dragon-drop hyprland-per-window-layout ianny clipvault tofi grc zen-browser-bin

sudo pacman -S ccls ninja cmake lua-language-server lldb delve docker docker-compose cppcheck mitmproxy neovide stylua meson postgresql mariadb

flatpak install flathub com.github.tchx84.Flatseal org.gtk.Gtk3theme.Adwaita-dark com.github.iwalton3.jellyfin-media-player \
    org.gtk.Gtk3theme.Breeze io.github.flattool.Warehouse io.github.fabrialberio.pinapp

git clone https://github.com/GabePoel/KvLibadwaita.git
