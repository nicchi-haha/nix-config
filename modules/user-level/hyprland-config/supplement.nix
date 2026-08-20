# Packages to supplement and contribute functionality to Hyprland
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awww # wallpaper

    # Screenshot utility
    grim
    swappy
    slurp

    brightnessctl # adjust brightness
    pamixer # adjust volume

    hyprshutdown # graceful shutdown utility
  ];
}
