# my laptop

{ inputs, self, ... }:

{
  flake.nixosConfigurations.snowflake = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.host-snowflake
    ];
  };

  flake.nixosModules.host-snowflake = {
    imports = [
      # System
      self.nixosModules.nvidia
      self.nixosModules.msi-ec
      self.nixosModules.kernel
      self.nixosModules.laptop-services
      self.nixosModules.limine
      self.nixosModules.cache

      self.nixosModules.general
      self.nixosModules.nm-extra
      self.nixosModules.user-yuki
    ];

    boot = {
      loader = {
        limine = {
          enable = true;
          secureBoot.enable = true;
          extraEntries = ''
            /Arch Linux
            protocol: efi
            path: uuid(fa7b47b9-93ed-42f7-be95-fcb348cab1a4):/EFI/Linux/arch-linux.efi
          '';
        };

        efi.canTouchEfiVariables = true;
      };
    };

    zramSwap.enable = true;

    networking = {
      hostName = "snowflake";
      networkmanager.enable = true;
    };

    hardware.bluetooth.enable = true;

    hardware.nvidia = {
      prime = {
        offload.enable = true;
        offload.enableOffloadCmd = true;

        intelBusId = "PCI:0@0:2:0";
        nvidiaBusId = "PCI:1@0:0:0";
      };
    };

    system.stateVersion = "26.05"; # DO NOT CHANGE
  };
}
