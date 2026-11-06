{
  flake.homeModules.study = { pkgs, ... }:
  {
    home.packages = with pkgs; [
      anki
    ];
  };
}
