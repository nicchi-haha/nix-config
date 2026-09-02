{ pkgs, ... }:

{
  imports = [
    ../../modules/system-level/zsh.nix
    ../../modules/system-level/desktops/hyprland
    ../../modules/system-level/optional-services
    ../../modules/system-level/optional-programs
    ../../modules/system-level/optional-dev
  ];

  users.users.yuki = {
    extraGroups = [ "audio" ];
    shell = pkgs.zsh;
  };

  # Other stuff
  pro-audio.enable = true;
  gaming.enable = true;
}
