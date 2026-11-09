{ moduleWithSystem, ... }: {
  perSystem = { pkgs, ... }: {
    packages.obs-studio = pkgs.obs-studio.override {
      cudaSupport = true;
    };
  };

  flake.homeModules.yuki = moduleWithSystem ({ self', ... }: {
    programs.obs-studio.package = self'.packages.obs-studio;
  });
}
