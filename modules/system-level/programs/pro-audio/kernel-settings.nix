{ lib, config, ... }:

{
  options.pro-audio.kernel-settings.enable = lib.mkEnableOption "Configure kernel";

  config = lib.mkIf config.pro-audio.kernel-settings.enable {
    boot.kernelParams = [
      "threadirqs"
    ];
  };
}
