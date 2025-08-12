{ config, lib, pkgs, ... }:

{

    fileSystems = {
        "/".options     = [ "noatime" "compress=zstd:3" ];
        "/home".options = [ "noatime" "compress=zstd:3" ];
        "/nix".options  = [ "noatime" "compress=zstd:3" ];
    };

    services.btrfs.autoScrub = {
        enable = true;
        interval = "monthly";
        fileSystems = [ "/" ];
    };
    
}
