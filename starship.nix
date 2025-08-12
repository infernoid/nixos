{ config, pkgs, ... }:

{

    programs.starship = {
        enable = true;

        settings = {
            # The format string now just defines the order of the modules
            format = "$username$hostname$directory$character";

            # Configure the username module to include the opening bracket
            username = {
                show_always = true;
                style_user  = "bold orange";
                style_root  = "bold red";
                format      = "[[>](bold red)$user]($style)";
            };

            # Configure the hostname module
            hostname = {
                ssh_only = false;
                format   = "[@](bold green)$hostname";
                style    = "bold white";
            };

            # Configure the directory module to include the closing bracket
            directory = {
                truncation_length = 3;
                style             = "bold magenta";
                format            = " [$path]($style)[<](bold red) ";
            };
            
            # Use a single space as the prompt symbol
            character = {
                success_symbol = " ";
                error_symbol   = " ";
            };
        };
    };

}
