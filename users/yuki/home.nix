{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "yuki";
  home.homeDirectory = "/home/yuki";
  home.stateVersion = "26.05"; # Don't change unless you know what you're doing

  imports = [
    ../../modules/user-level/hyprland-config
    ../../modules/user-level/programs
    ../../modules/user-level/shell
    ../../modules/user-level/theme/adwaita
    ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
