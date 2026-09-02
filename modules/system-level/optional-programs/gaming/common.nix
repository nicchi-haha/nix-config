{ config, lib, ... }:

{
  options.gaming.common.enable = lib.mkEnableOption "Some common gaming-related apps";

  config = lib.mkIf config.gaming.common.enable {
    programs.steam.enable = true;
    programs.gamemode = {
      enable = false;
      enableRenice = true;
    };
  };
}
