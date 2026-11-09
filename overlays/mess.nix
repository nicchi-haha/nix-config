{
  flake.nixosModules.user-yuki = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [ cisco-packet-tracer_9 ];
  };
}
