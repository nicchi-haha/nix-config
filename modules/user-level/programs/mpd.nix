{
  services.mpd-mpris.enable = true;
  services.mpd = {
    enable = true;
    musicDirectory = "$HOME/Music";
    network.startWhenNeeded = true;
    extraConfig = ''
      replaygain "track"
      audio_output {
        type "pipewire"
        name "Pipewire output"
      }
    '';
  };

  programs.ncmpcpp.enable = true;
}
