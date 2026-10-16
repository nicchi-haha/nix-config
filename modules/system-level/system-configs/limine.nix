{ config, lib, pkgs, ... }:

{
  boot.loader.limine.style.wallpapers = [];

  environment.systemPackages = with pkgs; [
    sbctl
  ];
}
