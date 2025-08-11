{ config, lib, pkgs, ... }:

{

    services.avahi = {
        enable = true;
        nssmdns4 = true;
        # openFirewall = true;
    };
    
    # printer
    services.printing.enable = true;
    
    # scanner
    hardware.sane.enable = true;
    services.ipp-usb.enable=true;
    
}
