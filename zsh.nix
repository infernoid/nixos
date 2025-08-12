{ config, pkgs, ... }:

{

    # enable ZSH
    programs.zsh = {
        enable = true;
        enableCompletion = true;
    };

    environment.shells = with pkgs; [ zsh ];

}
