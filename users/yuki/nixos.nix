{ pkgs, ... }:

{
  imports = [
    ../../modules/system-level/zsh.nix
    ../../modules/system-level/pro-audio
    ../../modules/system-level/desktops/hyprland
    ../../modules/system-level/optional-services
    ../../modules/system-level/optional-programs
    ../../modules/system-level/optional-dev
  ];

  users.users.yuki = {
    extraGroups = [ "audio" ];
    shell = pkgs.zsh;
  };
}
