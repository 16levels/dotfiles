{{ if eq .chezmoi.os "linux" -}}
{{ if eq .chezmoi.osRelease.id "fedora" }}
#!/bin/sh

TARGET_FILE="$HOME/.local/share/applications/org.gnome.Ptyxis.desktop"

if [ ! -f "$TARGET_FILE" ]; then
	echo "File $TARGET_FILE does not exist. Creating application entry..."
	sed 's/Icon=org.gnome.Ptyxis/Icon=ptyxis/g' \
		/usr/share/applications/org.gnome.Ptyxis.desktop > \
	"$HOME/.local/share/applications/org.gnome.Ptyxis.desktop"
else
	echo "File $TARGET_FILE already exists."
fi
{{ end }}
{{ end -}}
