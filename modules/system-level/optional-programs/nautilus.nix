# Enables the GNOME file manager and install some supplements

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nautilus
    ffmpegthumbnailer
    ffmpeg-headless
    gdk-pixbuf
  ];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "kitty";
  };

  services.gvfs.enable = true;
}
