# Enables all optional services by default

{
  imports = [
    ./polkit.nix
    ./display-manager.nix
    ./flatpak.nix
  ];
}
