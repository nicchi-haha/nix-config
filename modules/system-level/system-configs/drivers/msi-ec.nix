{ lib, config, pkgs, ... }:

{
  options.drivers.msi-ec.enable = lib.mkEnableOption "Enable msi-ec with mcontrolcenter for MSI laptops";

  config = lib.mkIf config.drivers.msi-ec.enable {
    boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
    boot.kernelModules = [ "msi-ec" "ec_sys" ];

    environment.systemPackages = with pkgs; [
      mcontrolcenter
    ];
  };
}
