{
  flake.nixosModules.nm-extra = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      networkmanagerapplet
    ];

    networking.networkmanager.plugins = with pkgs; [
      networkmanager-openvpn
    ];
  };
}
