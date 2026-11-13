{
  flake.nixosModules.host-snowflake = {
    nixpkgs.overlays = [
      (final: prev: {
        obs-studio = (prev.obs-studio.override { cudaSupport = true; });
      })
    ];
  };
}
