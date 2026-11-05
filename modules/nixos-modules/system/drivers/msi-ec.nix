{
  flake.nixosModules.msi-ec = { pkgs, config, ... }:
  {
    boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
    boot.kernelModules = [ "msi-ec" "ec_sys" ];

    environment.systemPackages = with pkgs; [
      mcontrolcenter
    ];
  };
}
