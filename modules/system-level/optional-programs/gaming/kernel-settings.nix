# Enables ntsync for improved performance
{ lib, config, ... }:

{
  options.gaming.kernel-settings.enable = lib.mkEnableOption "Configure kernel to optimize gaming stuff";

  config = lib.mkIf config.gaming.kernel-settings.enable {
    boot.kernelModules = [
      "ntsync"
    ];
  };
}
