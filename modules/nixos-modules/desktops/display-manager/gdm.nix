{
  flake.nixosModules.gdm = {
    services.displayManager.enable = true;
  };
}
