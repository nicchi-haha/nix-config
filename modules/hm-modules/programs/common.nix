{
  flake.homeModules.common = { pkgs, ... }: {
    home.packages = with pkgs; [
      nautilus
      file-roller
      htop
      gnome-calculator
      gnome-text-editor
      loupe
      obsidian
      baobab
    ];

    programs.thunderbird.enable = true;
    programs.firefox.enable = true;

    programs.keepassxc = {
      enable = true;
      autostart = true;
    };

    xdg.autostart.enable = true;
  };
}
