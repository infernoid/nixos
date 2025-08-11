{ config, lib, pkgs, ... }:

{

    # hardware.graphics = {
    #     enable = true;
    #     enable32Bit = true;
    # };
    
    services.xserver.videoDrivers = [ "nvidia" ];
    
    hardware.nvidia = {
        open = true;  # see the note above
        nvidiaSettings = false;
        # powerManagement.enable = false;
        # powerManagement.finegrained = false;
    };
    
    # hardware.nvidia.powerManagement.enable = false;
    # hardware.nvidia.powerManagement.finegrained = false;
    # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable; # Default
    # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.beta;
    # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.production;
    
}
