{ pkgs, config, lib, ... }:

{
  options.pro-audio.yabridge.enable = lib.mkEnableOption "Enable yabridge and install wine 9.21 for compatibility";

  config = lib.mkIf config.pro-audio.yabridge.enable {
    home.packages = with pkgs; [
      yabridge
      yabridgectl
      wineWow64Packages.yabridge
    ];
  };
}
    
