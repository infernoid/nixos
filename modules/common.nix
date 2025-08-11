{ ... }: {

    imports = [

        ./btrfs.nix
        ./nvidia.nix
        ./pipewire.nix
        ./zram-swap.nix
        ./epson.nix

        ./ssh.nix
        ./ssh-agent.nix
        ./google-dns.nix

        # ./git.nix
        # ./gnome.nix
        # ./gnome-min.nix
        ./hyprland.nix
        
        ./steam.nix

    ];
    
}
