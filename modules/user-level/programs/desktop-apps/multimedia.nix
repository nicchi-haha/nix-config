{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rsgain # application to write replaygain data for music
    pavucontrol # Sound mixer
    easyeffects # EQ and other audio post-processing filters as a standalone application
  ];

  programs.mpv.enable = true; # Media player
  programs.yt-dlp.enable = true; # Multi-site downloader

  # services.easyeffects.enable = true; # EQ and other audio post-processing filters as a background service
}
