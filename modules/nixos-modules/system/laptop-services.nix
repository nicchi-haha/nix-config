{
  flake.nixosModules.laptop-services = {
    services.tlp.enable = true;
    services.upower.enable = true;
    services.libinput.enable = true;
  };
}
