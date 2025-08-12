{ config, pkgs, ... }:

{

    # enable ZSH
    programs.zsh = {
        enable = true;

        enableCompletion = true;
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;

        oh-my-zsh = {
           enable = true;
           plugins = [ "git" ];
        };

    };

    users.defaultUserShell = pkgs.zsh;
    environment.shells = with pkgs; [ zsh ];

}
