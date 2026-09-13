# Enables Noctalia shell and configures it
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    noctalia
    brightnessctl
  ];

  home.file = {
    ".config/noctalia".source = ./config/noctalia;
    ".config/hypr/config/desktop-shell.lua".source = ./config/hypr/desktop-shell.lua;
    ".config/hypr/config/shell-apps.lua".source = ./config/hypr/shell-apps.lua;
  };
}
