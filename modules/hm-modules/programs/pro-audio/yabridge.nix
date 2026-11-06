{
  flake.homeModules.yabridge = { pkgs, ... }:
  {
    home.packages = with pkgs; [
      yabridge
      yabridgectl
      wineWow64Packages.yabridge
    ];
  };
}
