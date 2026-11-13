{
  flake.homeModules.fcitx5 = { pkgs, ... }: {
    # Enable fcitx5 as an IME and install mozc addon
    i18n.inputMethod = {
      enable = true;
      type = "fcitx5";
      fcitx5.waylandFrontend = true;
      fcitx5.addons = [ pkgs.fcitx5-mozc ];
    };
  };
}
