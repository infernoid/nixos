{ ... }: {

    imports = [

        ../modules/btrfs.nix
        ../modules/nvidia.nix
        ../modules/pipewire.nix
        ../modules/zram-swap.nix
        ../modules/epson.nix

        ../modules/ssh.nix
        ../modules/ssh-agent.nix
        ../modules/google-dns.nix

        # ../modules/gnome.nix
	# ../modules/gnome-min.nix
        ../modules/hyprland.nix
        
        ../modules/steam.nix

    ];
    
}
