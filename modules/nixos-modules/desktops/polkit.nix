{
  flake.nixosModules.polkit-service = {
    security.polkit = {
      enable = true;
      enablePkexecWrapper = true;
    };
  };
}
