{ config, pkgs, ... }:

{

  stylix.enable = true;  # required

  # https://github.com/tinted-theming/schemes/tree/spec-0.11/base16
  # (You can swap to a different *.yaml later.)
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";

}
