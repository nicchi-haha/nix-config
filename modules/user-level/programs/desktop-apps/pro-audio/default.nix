{ config, lib, ... }:

{
  imports = [
    ./common.nix
    ./yabridge.nix
  ];

  options.pro-audio.enable = lib.mkEnableOption "Enables pro-audio stuff";

  config = lib.mkIf config.pro-audio.enable {
    pro-audio.common.enable = lib.mkDefault true;
    pro-audio.yabridge.enable = lib.mkDefault true;
  };
}
