{ lib, config, ... }:

{
  options = {
    laptop-services.enable = lib.mkEnableOption "enables optional services for laptop";
  };

  config = lib.mkIf config.laptop-services.enable {
    services.tlp.enable = true; # Optimize battery life
    services.upower.enable = true; # Battery reading
    services.libinput.enable = true; # Touchpad support
  };
}
