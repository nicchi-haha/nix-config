# JACK applications installed with home manager is finicky
{ pkgs, config, lib, ... }:

{
  options.pro-audio.common.enable = lib.mkEnableOption "Install common applications related to pro audio";

  config = lib.mkIf config.pro-audio.common.enable {
    environment.systemPackages = with pkgs; [
      qjackctl # JACK utility
      reaper # DAW
      audacity_3 # simpler DAW
      tuxguitar # TAB editor
    ];
  };
}
