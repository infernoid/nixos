{ config, pkgs, ... }:

{


    # Enable and configure Starship with the custom prompt
    programs.starship = {
        enable = true;

        settings = {
            # The entire prompt is enclosed in brackets with a red color.
            # The format string defines the order of the modules.
            format = "[[$username$hostname$directory]](bold red)";

            # Configure the username module
            username = {
                show_always = true;
                style_user  = "bold orange";
                style_root  = "bold red";
                format      = "$user";
            };

            # Configure the hostname module
            hostname = {
                ssh_only = false;
                format   = "[@](bold green)$hostname";
                style    = "bold white";
            };

            # Configure the directory module
            directory = {
                truncation_length = 3;
                style             = "bold magenta"; # Using magenta for pink
                format            = " $path";
            };

        };
    };

}
