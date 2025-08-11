{ config, lib, pkgs, ... }:

{

#    services.greetd = {
#        enable = true;
#        settings = {
#            default_session = {
#                command = "Hyprland";
#                user = "yutani";
#            };
#        };
#    };
    
    programs.hyprland = {
        enable = true;
        withUWSM = true; # recommended for most users
        xwayland.enable = true; # Xwayland can be disabled.
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
        kitty         # Terminal
        # other tools: brightnessctl, grim, slurp, wl-clipboard...
    ];

}
