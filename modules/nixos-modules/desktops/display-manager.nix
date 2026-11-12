{
  flake.nixosModules.gdm = {
    services.displayManager.gdm.enable = true;
  };

  flake.nixosModules.ly = {
    services.displayManager.ly = {
      enable = true;
      settings = {
        session_log = ".local/state/ly-session.log";
      };
    };
  };
}
