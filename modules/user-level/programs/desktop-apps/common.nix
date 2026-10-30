{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nautilus
    file-roller
    htop
    gnome-calculator
    gnome-text-editor
    loupe
    obsidian
    baobab
  ];

  programs.thunderbird.enable = true;

  xdg.autostart.enable = true;
}
