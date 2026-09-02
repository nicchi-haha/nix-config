{ pkgs, ... }:

{
  home.packages = with pkgs; [
    qjackctl # JACK utility
    reaper # DAW
    tuxguitar # TAB editor
  ];
}
