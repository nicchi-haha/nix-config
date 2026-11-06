# Add your fonts here! (and adjust other configs accordingly)
{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    vista-fonts
    corefonts
  ];

  # Bind fonts to /usr/share equivalents for compatibility
  fonts.fontDir.enable = true;

  fileSystems."/usr/share/fonts" = {
    device = "/run/current-system/sw/share/X11/fonts";
    fsType = "fuse.bindfs";
    options = ["ro" "x-gvfs-hide" "resolve-symlinks"];
  };
}
