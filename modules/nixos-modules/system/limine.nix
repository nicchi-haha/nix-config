{
  flake.nixosModules.limine = { pkgs, ... }:
  {
    boot.loader.limine.style.wallpapers = [];

    environment.systemPackages = with pkgs; [
      sbctl
    ];
  };
}
