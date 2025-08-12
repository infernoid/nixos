{ config, lib, pkgs, ... }:

{

    security.rtkit.enable = true;
    services.pipewire = {
        enable = true; # if not already enabled
        alsa = {
            enable = true;
            support32Bit = true;
        };
        pulse.enable = true;
        # jack.enable = true;
    };
    
}
