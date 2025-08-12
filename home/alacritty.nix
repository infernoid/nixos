{ config, pkgs, ... }:

{

    programs.alacritty = {

        enable = true;

	setting = {

            font = {
                size = 12.0;
                normal = {
                    family = "JetBrainsMono Nerd Font";
                };
            };

            # The Dracula theme colors
            colors = {
                # Default colors
                primary = {
                    background = "#282a36";
                    foreground = "#f8f8f2";
                };
                # Cursor colors
                cursor = {
                    text = "#282a36";
                    cursor = "#f8f8f2";
                };
                # Normal colors
                normal = {
                    black   = "#21222c";
                    red     = "#ff5555";
                    green   = "#50fa7b";
                    yellow  = "#f1fa8c";
                    blue    = "#bd93f9";
                    magenta = "#ff79c6";
                    cyan    = "#8be9fd";
                    white   = "#f8f8f2";
                };
                # Bright colors
                bright = {
                    black   = "#6272a4";
                    red     = "#ff6e6e";
                    green   = "#69ff94";
                    yellow  = "#ffffa5";
                    blue    = "#d6acff";
                    magenta = "#ff92df";
                    cyan    = "#a4ffff";
                    white   = "#ffffff";
                };
            };

        };
    };
}
