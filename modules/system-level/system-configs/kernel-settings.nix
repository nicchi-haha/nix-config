{ pkgs, lib, ... }:

{
  # Use the latest kernel
  boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;
}
