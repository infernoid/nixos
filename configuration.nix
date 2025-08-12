# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{

    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports =
        [ # include the results of the hardware scan
            ./hardware-configuration.nix
	    
	    ./btrfs.nix
	    ./zram-swap.nix
	    ./nvidia.nix
	    ./pipewire.nix
	    ./epson.nix

	    ./ssh.nix
	    ./ssh-agent.nix
	    ./google-dns.nix

	    ./fonts.nix

            # ./gnome.nix
	    # ./gnome-min.nix
	    ./hyprland.nix
	    # ./stylix.nix

	    ./git.nix
	    ./zsh.nix
	    ./starship.nix
	    ./steam.nix

	    # ./config/gc.nix

        ];

    boot.consoleLogLevel = 3;
    # use the systemd-boot EFI boot loader
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "fsociety"; # define your hostname
    # Pick only one of the below networking options.
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

    # set your time zone
    time.timeZone = "Europe/Brussels";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # select internationalisation properties
    i18n.defaultLocale = "en_US.UTF-8";
    console = {
        keyMap = "be-latin1";
        # font = "Lat2-Terminus16";
        # useXkbConfig = true; # use xkb.options in tty.
    };

  # enable the X11 windowing system
  services.xserver.enable = true;
  services.xserver.xkb.layout = "be"; # keymap in X11
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.yutani = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" "scanner" "lp" "lpadmin" ]; # Enable ‘sudo’ for the user.
	shell = pkgs.zsh;
        # packages = with pkgs; [
        # ];
    };

    programs.firefox.enable = true;
    # List packages installed in system profile.
    # You can use https://search.nixos.org/ to find more packages (and options).
    environment.systemPackages = with pkgs; [
        neovim # editor
        alacritty
        git
        # firefox
        google-chrome
        discord
        signal-desktop
        ghidra
        wireshark
        # wget
    ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
#  services.openssh = {
#    enable = true;
#    settings.PasswordAuthentication = false;
#    settings.KbdInteractiveAuthentication = false;
#  }

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.05"; # Did you read the comment?

}

