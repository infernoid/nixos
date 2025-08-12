# home.nix
{ config, pkgs, ... }:

{
  # ... other home-manager configurations ...

  programs.alacritty = {
    enable = true;
    settings = {
      # Here we import the YAML file directly
      # The `builtins.fromTOML` and similar functions can be used for other formats
      # In this case, we use `builtins.readFile` and a string interpolation
      inherit (import ./alacritty-dracula-theme.yml);
    };
  };

}
