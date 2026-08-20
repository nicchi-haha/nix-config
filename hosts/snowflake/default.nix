# My laptop

{ config, pkgs, ... }:

{
  imports = [
    ../../modules/system-level/nixos-settings.nix

    ./hardware-configuration.nix
  ];

  # Use systemd-boot as bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable ZRAM
  zramSwap.enable = true;

  # Configure networking & bluetooth
  networking = {
    hostName = "snowflake";
    networkmanager.enable = true;
  };

  hardware.bluetooth.enable = true;

  # Install NVIDIA Proprietary driver and enable PRIME offload
  hardware.graphics.enable = true;
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;

      intelBusId = "PCI:0@0:2:0";
      nvidiaBusId = "PCI:1@0:0:0";
    };
  };

  services.xserver.videoDrivers = [ "nvidia" "modesetting" ];

  # Enable mcontrolcenter to manage fans
  boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
  boot.kernelModules = [ "msi-ec" "ec_sys" ];

  environment.systemPackages = with pkgs; [
    mcontrolcenter
  ];

  system.stateVersion = "26.05"; # DO NOT CHANGE
}
