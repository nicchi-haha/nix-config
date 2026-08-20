# Add your fonts here! (and adjust other configs accordingly)
{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    vista-fonts
  ];
}
