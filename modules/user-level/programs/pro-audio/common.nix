{ pkgs, ... }:

{
  home.packages = with pkgs; [
    qjackctl # JACK utility
  ];
}
