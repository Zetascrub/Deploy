# Packages

## updates
apt update
apt -y upgrade
apt -y dist-upgrade

apt install -y terminator

# Cosmetics

## Background
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++) {{
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                     "org.kde.image",
                                     "General");
        d.writeConfig("Image", "https://images8.alphacoders.com/746/746199.jpg")
    }}
