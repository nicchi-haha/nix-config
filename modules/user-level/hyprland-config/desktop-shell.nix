# Enables Noctalia shell and configures it
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    noctalia
  ];

  home.file = {
    ".config/noctalia".source = extraFiles/noctalia-config;
  };
}
