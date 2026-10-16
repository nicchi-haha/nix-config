# My laptop

{ config, pkgs, ... }:

{
  imports = [
    ../../modules/system-level/nixos-settings.nix

    ./hardware-configuration.nix
  ];

  # Use limine as bootloader
  boot.loader.limine = {
    enable = true;
    secureBoot.enable = true;
    extraEntries = ''
      /Arch Linux
        protocol: efi
        path: uuid(fa7b47b9-93ed-42f7-be95-fcb348cab1a4):/EFI/Linux/arch-linux.efi
      '';
  };
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
  drivers.nvidia.enable = true;
  hardware.nvidia = {
    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;

      intelBusId = "PCI:0@0:2:0";
      nvidiaBusId = "PCI:1@0:0:0";
    };
  };

  # Enable other modules
  drivers.msi-ec.enable = true;
  laptop-services.enable = true;

  system.stateVersion = "26.05"; # DO NOT CHANGE
}
