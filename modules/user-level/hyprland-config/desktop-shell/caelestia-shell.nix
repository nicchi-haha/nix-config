{ inputs, pkgs, ... }:

{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  programs.caelestia = {
    enable = true;
    cli.enable = true;
  };

  home.file = {
    ".config/hypr/config/desktop-shell.lua".source = extraFiles/caelestia-config/hypr/desktop-shell.lua;
  };
}
