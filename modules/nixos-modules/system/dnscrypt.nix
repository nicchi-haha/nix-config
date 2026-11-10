{
  flake.nixosModules.dnscrypt = { lib, ... }: {
    networking = {
      nameservers = [ "127.0.0.1" "::1" ]; # redirect traffic to loopback because dnscrypt runs on the loopback address
      networkmanager.dns = lib.mkForce "none";
    };

    services.dnscrypt-proxy = {
      enable = true;
      upstreamDefaults = true;
      settings = {
        require_dnssec = true;
        server_names = [
          "cloudflare"
        ];
      };
    };
  };
}
