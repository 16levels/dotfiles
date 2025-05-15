#!/bin/sh

dconf load / <<EOF
[org/gnome/Ptyxis]
default-profile-uuid='f5cc43dec2bd7af123df189667e05979'
font-name='Iosevka Term 15'
profile-uuids=['f5cc43dec2bd7af123df189667e05979']
use-system-font=false
window-size=(uint32 89, uint32 15)

[org/gnome/Ptyxis/Profiles/f5cc43dec2bd7af123df189667e05979]
bold-is-bright=false
palette='Catppuccin Frappé'

[org/gnome/desktop/background]
color-shading-type='solid'
picture-options='zoom'
picture-uri='file:///usr/share/backgrounds/gnome/blobs-l.svg'
picture-uri-dark='file:///usr/share/backgrounds/gnome/blobs-d.svg'
primary-color='#241f31'
secondary-color='#000000'

[org/gnome/desktop/input-sources]
mru-sources=[('xkb', 'us+dvorak'), ('xkb', 'us')]
sources=[('xkb', 'us+dvorak'), ('xkb', 'us')]

[org/gnome/desktop/interface]
accent-color='red'
color-scheme='prefer-dark'
cursor-theme='Yaru'
document-font-name='Adwaita Sans 12'
font-antialiasing='rgba'
font-hinting='full'
font-name='Adwaita Sans 12'
gtk-theme='Yaru-red-dark'
icon-theme='Yaru-red-dark'
monospace-font-name='Adwaita Mono 12'
toolkit-accessibility=false

[org/gnome/desktop/peripherals/touchpad]
two-finger-scrolling-enabled=true

[org/gnome/desktop/screensaver]
color-shading-type='solid'
picture-options='zoom'
picture-uri='file:///usr/share/backgrounds/gnome/blobs-l.svg'
primary-color='#241f31'
secondary-color='#000000'

[org/gnome/desktop/search-providers]
disabled=@as []
enabled=['org.gnome.Calculator.desktop']
sort-order=['org.gnome.Settings.desktop', 'org.gnome.Contacts.desktop', 'org.gnome.Nautilus.desktop']

[org/gnome/nautilus/compression]
default-compression-format='7z'

[org/gnome/nautilus/preferences]
default-folder-viewer='list-view'
migrated-gtk-settings=true
search-filter-time-type='last_modified'

[org/gnome/settings-daemon/plugins/color]
night-light-schedule-automatic=false

[org/gnome/shell]
app-picker-layout=[{'com.bitwig.BitwigStudio.desktop': <{'position': <0>}>, 'org.gnome.Contacts.desktop': <{'position': <1>}>, 'org.gnome.Weather.desktop': <{'position': <2>}>, 'org.gnome.clocks.desktop': <{'position': <3>}>, 'org.gnome.Maps.desktop': <{'position': <4>}>, 'com.brave.Browser.desktop': <{'position': <5>}>, 'emacs.desktop': <{'position': <6>}>, 'org.gnome.Settings.desktop': <{'position': <7>}>, 'org.gnome.Extensions.desktop': <{'position': <8>}>, 'org.fedoraproject.MediaWriter.desktop': <{'position': <9>}>, 'org.gnome.Snapshot.desktop': <{'position': <10>}>, 'org.gnome.Nautilus.desktop': <{'position': <11>}>, 'Utilities': <{'position': <12>}>, 'dev.bragefuglseth.Fretboard.desktop': <{'position': <13>}>, 'org.kicad.KiCad.desktop': <{'position': <14>}>, 'org.gnome.Tour.desktop': <{'position': <15>}>, 'yelp.desktop': <{'position': <16>}>, 'org.kicad.KiCad.gerbview.desktop': <{'position': <17>}>, 'org.kicad.KiCad.bitmap2component.desktop': <{'position': <18>}>, 'org.kicad.KiCad.pcbcalculator.desktop': <{'position': <19>}>, 'org.kicad.KiCad.pcbnew.desktop': <{'position': <20>}>, 'org.kicad.KiCad.eeschema.desktop': <{'position': <21>}>, 'net.lutris.Lutris.desktop': <{'position': <22>}>, 'nvidia-settings.desktop': <{'position': <23>}>}, {'org.gnome.World.PikaBackup.desktop': <{'position': <0>}>, 'fm.reaper.Reaper.desktop': <{'position': <1>}>, 'org.gnome.SystemMonitor.desktop': <{'position': <2>}>, 'br.app.pw3270.terminal.desktop': <{'position': <3>}>, 'net._86box._86Box.desktop': <{'position': <4>}>, 'com.vscodium.codium.desktop': <{'position': <5>}>, 'app.drey.Warp.desktop': <{'position': <6>}>, 'com.blitterstudio.amiberry.desktop': <{'position': <7>}>, 'io.openrct2.OpenRCT2.desktop': <{'position': <8>}>, 'org.libretro.RetroArch.desktop': <{'position': <9>}>, 'net.thunderbird.Thunderbird.desktop': <{'position': <10>}>}]
enabled-extensions=['background-logo@fedorahosted.org', 'dash-to-dock@micxgx.gmail.com', 'blur-my-shell@aunetx', 'Move_Clock@rmy.pobox.com', 'user-theme@gnome-shell-extensions.gcampax.github.com']
favorite-apps=['org.gnome.Ptyxis.desktop', 'org.gnome.Nautilus.desktop', 'org.mozilla.firefox.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Software.desktop']
last-selected-power-profile='performance'
welcome-dialog-last-shown-version='48.alpha'

[org/gnome/shell/extensions/blur-my-shell]
settings-version=2

[org/gnome/shell/extensions/blur-my-shell/appfolder]
brightness=0.59999999999999998
sigma=30

[org/gnome/shell/extensions/blur-my-shell/dash-to-dock]
blur=true
brightness=0.59999999999999998
sigma=30
static-blur=true
style-dash-to-dock=0

[org/gnome/shell/extensions/blur-my-shell/panel]
brightness=0.59999999999999998
sigma=30

[org/gnome/shell/extensions/blur-my-shell/window-list]
brightness=0.59999999999999998
sigma=30

[org/gnome/shell/extensions/dash-to-dock]
always-center-icons=true
apply-custom-theme=false
background-opacity=0.80000000000000004
custom-theme-shrink=true
dash-max-icon-size=48
dock-position='RIGHT'
extend-height=false
height-fraction=0.90000000000000002
preferred-monitor=-2
preferred-monitor-by-connector='DP-1'
preview-size-scale=0.0
transparency-mode='DYNAMIC'

[org/gnome/shell/weather]
automatic-location=true
locations=[<(uint32 2, <('Raleigh-Durham International Airport', 'KRDU', false, [(0.62605930672100707, -1.3750818938070426)], @a(dd) [])>)>]
EOF
