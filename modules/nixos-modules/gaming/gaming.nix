{
  flake.nixosModules.gaming = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      mangohud
    ];

    programs.steam.enable = true;

    boot.kernelModules = [
      "ntsync"
    ];
  };
}
