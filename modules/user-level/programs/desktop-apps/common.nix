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

  xdg.autostart.enable = true;
}
