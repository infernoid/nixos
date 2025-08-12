{ config, pkgs, ... }:

{
    home.username = "yutani";
    home.homeDirectory = "/home/yutani";

    imports =
        [
	    ./home/alacritty.nix
	];

    home.stateVersion = "25.05";
}
