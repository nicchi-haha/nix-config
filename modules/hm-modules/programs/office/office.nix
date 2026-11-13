{
  flake.homeModules.office = { pkgs, ... }: {
    home.packages = with pkgs; [
      libreoffice-stable
      zathura
    ];
  };
}
