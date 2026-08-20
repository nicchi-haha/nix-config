# Enables Hyprland with UWSM

{
  programs.hyprland = {
    enable = true;
    withUWSM = true; # Allow starting of graphical-session.target, making xdg-desktop-portal less of a headache
    xwayland.enable = true; # Enables xwayland, usually for gaming and legacy x11 applications. Disable if unused
  };
}
