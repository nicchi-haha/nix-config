{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rsgain # application to write replaygain data for music
    pavucontrol # Sound mixer
    easyeffects # EQ and other audio post-processing filters as a standalone application
    overskride # Bluetooth settings
  ];

  programs.mpv.enable = true; # Media player
  programs.yt-dlp.enable = true; # Multi-site downloader
  programs.aria2.enable = true; # CLI download accelerator

  # services.easyeffects.enable = true; # EQ and other audio post-processing filters as a background service
}
