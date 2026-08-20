# Enable yabridge and install wine 9.21 for compatibility
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    yabridge
    yabridgectl
    wineWow64Packages.yabridge
  ];
}
    
