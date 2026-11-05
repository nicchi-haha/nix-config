{
  flake.nixosModules.gaming = {
    programs.steam.enable = true;

    boot.kernelModules = [
      "ntsync"
    ];
  };
}
