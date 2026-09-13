{
  services.displayManager.ly = { # simple text-based display manager
    enable = true;
    settings = {
      session_log = ".local/state/ly-session.log";
    };
  };

  # services.displayManager.gdm.enable = true; # GNOME Display Manager
}
