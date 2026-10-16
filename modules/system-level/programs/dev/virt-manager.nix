{ lib, config, pkgs, ... }:

{
  options.dev.virt-manager.enable = lib.mkEnableOption "virt-manager and some tools";

  config = lib.mkIf config.dev.virt-manager.enable {
    virtualisation.libvirtd = {
      enable = true;
      qemu.vhostUserPackages = with pkgs; [
        virtiofsd
      ];
    };

    programs.virt-manager.enable = true;
  };
}
