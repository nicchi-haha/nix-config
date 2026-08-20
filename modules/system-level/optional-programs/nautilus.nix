# Enables the GNOME file manager and install nautilus-open-any-terminal configured for kitty

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nautilus
  ];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "kitty";
  };
}
