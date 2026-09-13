{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    vscodium-fhs
  ];
}
