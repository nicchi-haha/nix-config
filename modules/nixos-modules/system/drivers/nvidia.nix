{
  flake.nixosModules.nvidia = { config, lib, ... }:
  {
    hardware.graphics.enable = true;
    hardware.nvidia = {
      open = true;
      modesetting.enable = true;
      package = lib.mkDefault config.boot.kernelPackages.nvidiaPackages.latest;
    };

    services.xserver.videoDrivers = [ "nvidia" "modesetting" ];
  };
}
