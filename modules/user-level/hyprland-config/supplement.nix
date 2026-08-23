# Package & services to supplement and contribute functionality to Hyprland
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
    wl-clipboard # Clipboard utility, require cliphist

    hyprshutdown # graceful shutdown utility
  ];

  services.hypridle.enable = false;
  services.cliphist.enable = true;
}
