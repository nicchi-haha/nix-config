{ config, lib, ... }:

{
  options.drivers.nvidia.enable = lib.mkEnableOption "Enable NVIDIA GPU support with modesetting";

  config = lib.mkIf config.drivers.nvidia.enable {
    hardware.graphics.enable = true;
    hardware.nvidia = {
      open = true;
      modesetting.enable = true;
      package = lib.mkDefault config.boot.kernelPackages.nvidiaPackages.latest;
    };

    services.xserver.videoDrivers = [ "nvidia" "modesetting" ];
  };
}

