# Enables Noctalia shell and configures it
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    noctalia
  ];

  home.file = {
    ".config/noctalia".source = extraFiles/noctalia-config/noctalia;
    ".config/hypr/config/desktop-shell.lua".source = extraFiles/noctalia-config/hypr/desktop-shell.lua;
  };
}
