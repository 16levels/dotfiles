# 16levels/dotfiles

I use [Stow](https://www.gnu.org/software/stow/manual/html_node/index.html), a symlink farm manager, to help organize dotfiles in Linux and macOS. Each directory represents a Stow package, and can be installed using the `--dotfiles` option.

```console
git clone https://github.com/16levels/dotfiles ~/.dotfiles
cd ~/.dotfiles
echo 'containers emacs fish ghostty nvim tmux tpm' | xargs -n1 stow --adopt --dotfiles
```

**Shell:** [fish](https://fishshell.com) with [Starship](https://starship.rs) prompt[^install_starship].

**Editor(s):**
- GNU Emacs - [minimal-emacs.d](https://github.com/jamescherti/minimal-emacs.d) used as base for configuration.
- Neovim - [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) used as base for configuration.

**Fonts:**

- [Iosevka](https://typeof.net/Iosevka/) (Term, Aile)
- [Nerd Fonts](https://nerdfonts.com)

## Fedora Silverblue

**Layered Packages:**
```console
rpm-ostree install --apply-live \
bat \
distrobox \
fastfetch \
fd-find \
fish \
fortune-mod \
gnome-shell-extension-blur-my-shell \
gnome-shell-extension-dash-to-dock \
gnome-shell-extension-frippery-move-clock \
gstreamer1-plugin-openh264 \
neovim \
qemu-user-static \
restic \
ripgrep \
stow \
syncthing \
tailscale \
tmux \
x3270-text \
yaru-theme
```

**Flatpak Packages**
```console
flatpak install app.drey.Warp \
ca.desrt.dconf-editor \
com.bitwarden.desktop \
com.bitwig.BitwigStudio \
com.blitterstudio.amiberry \
com.github.flxzt.rnote \
com.github.johnfactotum.Foliate \
dev.qwery.AddWater \
fm.reaper.Reaper \
io.github.cmus.cmus \
io.github.dosbox-staging \
io.gitlab.news_flash.NewsFlash \
io.podman_desktop.PodmanDesktop \
net._86box._86Box \
net._86box._86Box.ROMs \
org.featherwallet.Feather \
org.fedoraproject.MediaWriter \
org.gnu.emacs \
org.raspberrypi.rpi-imager \
org.turbowarp.TurboWarp
```

**GNOME Settings:**
```bash
#!/bin/sh
dconf load / <<EOF
[org/gnome/desktop/background]
picture-uri='file:///usr/share/backgrounds/gnome/blobs-l.svg'
picture-uri-dark='file:///usr/share/backgrounds/gnome/blobs-d.svg'
primary-color='#241f31'
secondary-color='#000000'

[org/gnome/desktop/input-sources]
mru-sources=[('xkb', 'us+dvorak'), ('xkb', 'us')]
sources=[('xkb', 'us+dvorak'), ('xkb', 'us')]

[org/gnome/desktop/interface]
accent-color='red'
color-scheme='default'
cursor-theme='Yaru'
document-font-name='Adwaita Sans 12'
font-antialiasing='rgba'
font-hinting='full'
font-name='Adwaita Sans 12'
gtk-theme='Yaru-red'
icon-theme='Yaru-red'
monospace-font-name='Adwaita Mono 12'
toolkit-accessibility=false

[org/gnome/desktop/screensaver]
picture-uri='file:///usr/share/backgrounds/gnome/blobs-l.svg'
primary-color='#241f31'
secondary-color='#000000'

[org/gnome/desktop/search-providers]
enabled=['org.gnome.Calculator.desktop']

[org/gnome/nautilus/list-view]
use-tree-view=true

[org/gnome/nautilus/preferences]
default-folder-viewer='list-view'
migrated-gtk-settings=true
search-filter-time-type='last_modified'

[org/gnome/shell]
enabled-extensions=['dash-to-dock@micxgx.gmail.com', 'blur-my-shell@aunetx', 'Move_Clock@rmy.pobox.com', 'user-theme@gnome-shell-extensions.gcampax.github.com']
favorite-apps=['org.gnome.Ptyxis.desktop', 'org.gnome.Nautilus.desktop', 'org.mozilla.firefox.desktop', 'org.gnu.emacs.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Software.desktop']

[org/gnome/shell/extensions/dash-to-dock]
always-center-icons=true
custom-theme-shrink=true
dock-position='RIGHT'
preferred-monitor-by-connector='DP-1'
transparency-mode='DYNAMIC'

[org/gnome/shell/weather]
automatic-location=true
locations=[<(uint32 2, <('Raleigh-Durham International Airport', 'KRDU', false, [(0.62605930672100707, -1.3750818938070426)], @a(dd) [])>)>]
EOF
```

**GNOME Text Editor (Flatpak):**
```console
echo "style-scheme 'catppuccin' \
custom-font 'Iosevka 12' \
show-line-numbers true \
keybindings 'vim' \
show-map true" | \
xargs -n2 flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor
```

**Replace Ptyxis (Terminal) icon:**
```bash
#!/bin/sh

icon_url='https://gitlab.gnome.org/chergert/ptyxis/-/raw/main/data/icons/ptyxis.svg'

curl -O --create-dirs --output-dir "$HOME"/.local/share/icons/hicolor/scalable/apps/ $icon_url
sed 's/Icon=org.gnome.Ptyxis/Icon=ptyxis/g' /usr/share/applications/org.gnome.Ptyxis.desktop > \
	"$HOME"/.local/share/applications/org.gnome.Ptyxis.desktop
```

*In the case of a workstation with an NVIDIA GPU, [RPM Fusion](https://rpmfusion.org/Configuration) should be enabled in order to install [Proprietary NVIDIA Drivers](https://rpmfusion.org/Howto/NVIDIA#OSTree_.28Silverblue.2FKinoite.2Fetc.29).*

## macOS
Package Manager - [MacPorts](https://www.macports.org/install.php)

Terminal Emulator - [Ghostty](https://ghostty.org/download)

Container Engine - [Podman](https://podman.io)

Linux Virtualization - [Lima](https://lima-vm.io)


[^install_starship]: Under macOS I use MacPorts to install. Under Linux I use `cargo` in lieu of a package available in the distribution's official repos. If necessary, it can be installed locally with the one-liner: `curl -sS https://starship.rs/install.sh | sh -s -- -y`.
