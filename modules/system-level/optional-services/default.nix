# Enables all optional services by default

{
  imports = [
    ./display-manager.nix
    ./flatpak.nix
    ./laptop-services.nix
  ];
}
