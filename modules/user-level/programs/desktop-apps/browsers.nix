{ pkgs, ... }:

{
  home.packages = with pkgs; [
    motrix
  ];

  programs.firefox.enable = true;
}
