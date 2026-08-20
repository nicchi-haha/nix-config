# Enables fcitx5 and install mozc, configure manually
{ pkgs, ... }:

{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.waylandFrontend = true;
    fcitx5.addons = [ pkgs.fcitx5-mozc ];
  };
}
