{ self, ... }:

{
  flake.nixosModules.general = { pkgs, ... }:
  {
    imports = [
      self.nixosModules.nix
self.nixosModules.fonts
    ];

    # Enable SysRq
    boot.kernel.sysctl."kernel.sysrq" = 1;

    environment.systemPackages = with pkgs; [
        vim
    ];
  };
}
