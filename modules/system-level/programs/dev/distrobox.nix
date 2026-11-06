{ pkgs, config, lib, ... }:

{
  options.dev.distrobox.enable = lib.mkEnableOption "Distrobox with podman";

  config = lib.mkIf config.dev.distrobox.enable {
    virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };

    environment.systemPackages = [ pkgs.distrobox ];
  };
}
