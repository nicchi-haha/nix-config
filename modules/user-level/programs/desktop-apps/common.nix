{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nautilus
    file-roller
    htop
    gnome-calculator
    loupe
    obsidian
  ];
}
