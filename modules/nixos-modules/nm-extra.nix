{
  flake.nixosModules.nm-extra = { pkgs, lib, ... }: {
    environment.systemPackages = with pkgs; [
      networkmanagerapplet
    ];

    networking.networkmanager.plugins = with pkgs; [
      networkmanager-openvpn
    ];
  };
}
