{
  flake.homeModules.noctalia = { pkgs, ... }:
  {
    home.packages = with pkgs; [
      noctalia
      brightnessctl
    ];
  };
}
