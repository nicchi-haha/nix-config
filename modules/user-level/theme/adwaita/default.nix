# It feels like adwaita but it uses breeze icons and I like it. can't figure out how to set kde theme yet
{ pkgs, ... }:

{
  # Set GTK theme
  gtk = {
    enable = true;
    colorScheme = "dark";

    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };

    cursorTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    iconTheme = {
      name = "breeze-dark";
      package = pkgs.kdePackages.breeze-icons;
    };
  };

  # Set Qt theme (not really)
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  home.packages = with pkgs; [
    kdePackages.qtstyleplugin-kvantum
  ];

  home.file.".config/kdeglobals".source = extraFiles/kdeglobals; # change color scheme and some other things...

  # Set cursor theme
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 24;
  };
}
