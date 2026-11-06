{ inputs, ... }: 
{
  flake.nixosModules.pins = { pkgs, ... }:
  let
    pkgs-stable = import inputs.nixpkgs-stable {
      system = "x86_64-linux";
      config.allowUnfree = true;
    };
  in
  {
    nixpkgs.overlays = [
      (self: super: {
        reaper = pkgs-stable.reaper;
        yabridge = pkgs-stable.yabridge;
      })
    ];
  };
}
