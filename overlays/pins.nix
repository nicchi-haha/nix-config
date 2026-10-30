{ pkgs, pkgs-stable, ... }:

{
  nixpkgs.overlays = [
    (self: super: {
      reaper = pkgs-stable.reaper;
#      fcitx5-mozc = pkgs-stable.fcitx5-mozc;
      yabridge = pkgs-stable.yabridge;
#      obsidian = pkgs-stable.obsidian;
    })
  ];
}
