{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rsgain # application to write replaygain data for music
    pwvucontrol # Volume control
    easyeffects # EQ and other audio post-processing filters as a standalone application
    overskride # Bluetooth settings
    ffsubsync # FFMpeg subsync
    imagemagick # convert images
    ghostscript # postscript and pdf interpreter
  ];

  programs.mpv.enable = true; # Media player
  programs.yt-dlp.enable = true; # Multi-site downloader
  programs.aria2.enable = true; # CLI download accelerator
  programs.obs-studio.enable = true; # Screen recorder

  # services.easyeffects.enable = true; # EQ and other audio post-processing filters as a background service

  programs.mpv = {
    scripts = with pkgs.mpvScripts; [
      autosubsync-mpv
    ];
  };
}
