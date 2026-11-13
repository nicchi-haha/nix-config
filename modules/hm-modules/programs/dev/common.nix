{
  flake.homeModules.dev-common = { pkgs, ... }: {
    home.packages = with pkgs; [
      git
      vscodium-fhs
      devenv
    ];
  };
}
