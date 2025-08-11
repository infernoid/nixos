{ config, lib, pkgs, ... }:

{

    # google dns
    networking.networkmanager.dns = "none";
    networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];

}
