{ lib, config, ... }:

{
  imports = [
    ./common.nix
    ./kernel-settings.nix
  ];

  options = {
    gaming.enable = lib.mkEnableOption "gaming!!!";
  };

  config = lib.mkIf config.gaming.enable {
    gaming.common.enable = lib.mkDefault true;
    gaming.kernel-settings.enable = lib.mkDefault true;
  };
}
