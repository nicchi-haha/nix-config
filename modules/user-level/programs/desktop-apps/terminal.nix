# Terminal for use in a graphical session

{
  programs.kitty = {
    enable = true;
    themeFile = "adwaita_dark";
    font.name = "Consolas";
    extraConfig = ''
      enable_audio_bell no
      confirm_os_window_close 0
      background_opacity 0.95
      dynamic_background_opacity yes
      hide_window_decorations yes
    '';
  };
}
