{ config, pkgs, ... }:

{

    # Enable and configure Starship
    programs.starship = {
        enable = true;

        # The core settings to replicate Vimjoyer's prompt
        settings = {
            # Minimal format to show all enabled modules
            format = "$all";

            # The character module: the '>' prompt symbol
            character = {
                success_symbol = "[>](bold green)";
                error_symbol   = "[>](bold red)";
            };

            # Hide the username unless logged in as a different user
            username = {
                show_always = false;
                style_user  = "bold yellow";
                style_root  = "bold red";
                format      = "[$user]($style)";
            };

            # Show the hostname only when SSH'd
            hostname = {
                ssh_only = true;
                format   = "[@$hostname](bold yellow) ";
            };

            # The current directory module
            directory = {
                truncation_length = 3; # Show last 3 directories
                truncate_to_repo  = false;
                style             = "bold cyan";
                format            = "[$path]($style)[$read_only]($read_only_style)";
            };

            # The Git branch module
            git_branch = {
                symbol = "";
                style  = "bold purple";
                format = "[ on ]($style)[$symbol$branch]($style) ";
            };

            # The Git status module (modified, added, etc.)
            git_status = {
                format      = "([$all_status$stashed]($style))";
                style       = "bold green";
                ahead       = "${count}";
                behind      = "${count}";
                diverged    = "${count}${count}";
                untracked   = "${count}";
                stashed     = "${count}";
                modified    = "${count}";
                staged      = "${count}";
                renamed     = "${count}";
                deleted     = "${count}";
            };
        };
    };

}
