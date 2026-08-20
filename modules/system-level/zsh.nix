# Enable zsh with some plugins
{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
  };
}
