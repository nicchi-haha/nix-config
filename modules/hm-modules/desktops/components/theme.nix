{
  flake.homeModules.theme = { pkgs, ... }:
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
        name = "Papirus-Dark";
        package = pkgs.papirus-icon-theme;
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

    # Set cursor theme
    home.pointerCursor = {
      enable = true;
      gtk.enable = true;
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
      size = 24;
    };
  };
}
