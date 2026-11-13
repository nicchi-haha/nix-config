{
  flake.nixosModules.fonts = { pkgs, ... }: {
    fonts.packages = with pkgs; [
      vista-fonts
      corefonts
    ];

    fonts.fontDir.enable = true;

    fileSystems."/usr/share/fonts" = {
      device = "/run/current-system/sw/share/X11/fonts";
      fsType = "fuse.bindfs";
      options = [
        "ro"
        "x-gvfs-hide"
        "resolve-symlinks"
      ];
    };
  };
}
