{ moduleWithSystem, inputs, ... }: 
{
  flake.nixosModules.pins = moduleWithSystem ({ system, ... }:
  let
    pkgs-stable = import inputs.nixpkgs-stable {
      inherit system;
      config.allowUnfree = true;
    };
  in
  {
    nixpkgs.overlays = [
      (self: super: {
        reaper = pkgs-stable.reaper;
        yabridge = pkgs-stable.yabridge;
        anki = pkgs-stable.anki;
      })
    ];
  });
}
