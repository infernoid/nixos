{ config, lib, pkgs, ... }:

{

    environment.gnome.excludePackages = with pkgs; [
    
        baobab      # disk usage analyzer
        decibels    # audio player
        epiphany    # web browser
        # evince      # document viewer
        # file-roller # archive manager
        geary       # email client
        # loupe       # image viewer
        # nautilus    # file manager
        # orca        # screen reader
        seahorse    # password manager
        # simple-scan # document scanner
        snapshot    # camera
        # sushi
        totem       # video player
        yelp        # help viewer
        
        gnome-calendar
        gnome-characters
        gnome-clocks
        gnome-connections
        gnome-contacts
        # gnome-disk-utility
        gnome-font-viewer
        # gnome-logs
        gnome-maps
        gnome-music
        gnome-remote-desktop
        # gnome-system-monitor
        # gnome-text-editor
        gnome-tour
        gnome-user-docs
        gnome-weather

    ];
    
}
