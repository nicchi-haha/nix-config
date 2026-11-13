{
  flake.homeModules.latex = { pkgs, ... }: {
    home.packages = with pkgs; [
      texliveFull
      typst
    ];
  };
}
