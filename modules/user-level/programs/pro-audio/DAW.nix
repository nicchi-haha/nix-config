{ pkgs, ... }:

{
  home.packages = with pkgs; [
    reaper # Ignore license nagging
  ];
}
