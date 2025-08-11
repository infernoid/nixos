{ config, lib, pkgs, ... }:

{

    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "Hyprland";
                user = "yutani";
            };
        };
    };
    
    programs.hyprland = {
        enable = true;
        withUWSM = true; # recommended for most users
        xwayland.enable = true; # Xwayland can be disabled.
    };
    
    # Good Wayland plumbing (screenshots, file pickers, screenshare, etc.)
    xdg.portal = {
        enable = true;
        extraPortals = with pkgs; [
            xdg-desktop-portal-hyprland
            xdg-desktop-portal-gtk
        ];
    };
    
    # NVIDIA-friendly env (you already have RTX 2060)
    environment.sessionVariables = {
        WLR_RENDERER = "vulkan";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
        # If you ever see cursor glitches, try:
        # WLR_NO_HARDWARE_CURSORS = "1";
    };
    
    # List packages installed in system profile.
    # You can use https://search.nixos.org/ to find more packages (and options).
    environment.systemPackages = with pkgs; [
        # hyprland
        # hyprpaper     # Wallpaper daemon
        # hyprlock      # Screen locker
        # hypridle      # Idle daemon
        waybar        # Status bar
        wofi          # Application launcher
        # kitty         # Terminal
        # other tools: brightnessctl, grim, slurp, wl-clipboard...
    ];

}
