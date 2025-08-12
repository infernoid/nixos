{ config, lib, pkgs, ... }:

{

    # enable the gnome desktop environment
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
    # new: services.desktopManager.gnome.enable = true;
    # new: services.displayManager.gdm.enable = true;

}
