{
  flake.homeModules.pro-audio-common = { pkgs, ... }: {
    home.packages = with pkgs; [
      qjackctl # JACK utility
      reaper # DAW
      audacity_3 # simpler DAW
      tuxguitar # TAB editor
    ];
  };
}
