{ config, pkgs, ... }:

{

    # Enable and configure Starship with a simple prompt
    programs.starship = {
        enable = true;

        settings = {
            # This is the new, simple format string.
            format = "$username$hostname $directory$character";

            # Configure the username module
            username = {
                show_always = true;
                style_user  = "bold yellow";
                style_root  = "bold red";
                format      = "[$user]($style)";
            };

            # Configure the hostname module
            hostname = {
                ssh_only = false;
                format   = "[@$hostname]($style)";
                style    = "bold white";
            };

            # Configure the directory module
            directory = {
                truncation_length = 3;
                style             = "bold cyan";
                format            = " [$path]($style)";
            };

            # Configure the prompt symbol
            character = {
                success_symbol = " ";
                error_symbol   = " ";
            };
        };
    };

}
