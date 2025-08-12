{ config, pkgs, ... }:

{
    home.username = "yutani";
    home.homeDirectory = "/home/yutani";

    imports =
        [
	    ./alacritty.nix
	];

    home.stateVersion = "25.05";
}
