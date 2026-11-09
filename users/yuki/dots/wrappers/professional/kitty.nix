{ inputs, moduleWithSystem, ... }: {
  perSystem = { pkgs, ... }: {
    packages.professional-kitty = inputs.wrappers.wrappers.kitty.wrap {
      inherit pkgs;
#      themeFile = "adwaita_dark";
      font.name = "Consolas";
      settings = {
        enable_audio_bell = "no";
        confirm_os_window_close = 0;
        background_opacity = 1;
        dynamic_background_opacity = "yes";
        hide_window_decorations = "yes";
      };
    };
  };
}
