{
  flake.nixosModules.host-snowflake = { pkgs, ... }: {
    nixpkgs.overlays = [
      (final: prev: {
        obs-studio = (prev.obs-studio.override { cudaSupport = true; });
      })
    ];
  };
}
