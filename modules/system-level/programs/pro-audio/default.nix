{ lib, config, pkgs, ... }:

{
  imports = [
    ./kernel-settings.nix
    ./pam-unlimit.nix
    ./common.nix
    ./yabridge.nix
  ];

  options = {
    pro-audio.enable = lib.mkEnableOption "Some settings to make pro audio gooder";
  };

  config = lib.mkIf config.pro-audio.enable {
    pro-audio.pam-unlimit.enable = lib.mkDefault true;
    pro-audio.kernel-settings.enable = lib.mkDefault true;
    pro-audio.yabridge.enable = lib.mkDefault true;
    pro-audio.common.enable = lib.mkDefault true;
  };
}
