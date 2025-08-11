{ config, pkgs, ... }:

{

  stylix.enable = true;  # required

  # Option A: auto-generate colors from your wallpaper (easy start)
  # stylix.image = ./wallpapers/your-wallpaper.png;
  # stylix.polarity = "dark";  # bias toward dark theme

  # Option B: pick a Base16 scheme instead (e.g., Gruvbox / Dracula)
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";
  # https://github.com/tinted-theming/schemes/tree/spec-0.11/base16
  # (You can swap to a different *.yaml later.)

}
