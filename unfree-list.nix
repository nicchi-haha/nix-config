# List of unfree packages, adjust accordingly.
{ lib, ... }:

{
  nixpkgs.config.allowUnfree = lib.mkDefault true; # Set to allow all unfree software

  /*
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "vista-fonts"
      "corefonts"
      "nvidia-x11"
      "nvidia-settings"
      "steam"
      "steam-unwrapped"
      "reaper"
      "obsidian"
    ];
  */
}

