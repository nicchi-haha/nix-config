{ lib, config, ... }:

{
  imports = [
    ./kernel-settings.nix
    ./pam-unlimit.nix
  ];

  options = {
    pro-audio.enable = lib.mkEnableOption "Some settings to make pro audio gooder";
  };

  config = lib.mkIf config.pro-audio.enable {
    pro-audio.pam-unlimit.enable = lib.mkDefault true;
    pro-audio.kernel-settings.enable = lib.mkDefault true;
  };
}
