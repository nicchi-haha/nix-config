{ pkgs, ... }:

{
  imports = [
    ../../modules/system-level/zsh.nix
    ../../modules/system-level/desktops/hyprland
    ../../modules/system-level/programs
  ];

  users.users.yuki = {
    extraGroups = [ "audio" ];
    shell = pkgs.zsh;
  };

  # Other stuff
  dev.enable = true;
  pro-audio.enable = true;
  gaming.enable = true;
}
