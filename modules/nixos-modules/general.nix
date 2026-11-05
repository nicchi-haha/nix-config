{ self, ... }:

{
  flake.nixosModules.general =
  {
    imports = [
      self.nixosModules.nix
    ];

    # Enable SysRq
    boot.kernel.sysctl."kernel.sysrq" = 1;
  };
}
