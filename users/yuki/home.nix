{ inputs, self, ... }:

{
  flake.nixosModules.user-yuki = {
    imports = [
      inputs.home-manager.nixosModules.home-manager
    ];

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;

      users.yuki = self.homeModules.yuki;
    };
  };

  flake.homeModules.yuki = { pkgs, config, ... }:
  let
    dotfiles = config.lib.file.mkOutOfStoreSymlink ./dots;
  in 
  {
    home.username = "yuki";
    home.homeDirectory = "/home/yuki";
    home.stateVersion = "26.05";

    imports = [
      # Desktop
      self.homeModules.hyprland
      self.homeModules.theme
      self.homeModules.polkit-agent
      self.homeModules.common

      self.homeModules.dev-common
      self.homeModules.multimedia
      self.homeModules.noctalia
      self.homeModules.zsh
      self.homeModules.starship
      self.homeModules.study
      self.homeModules.pro-audio-common
      self.homeModules.yabridge

      self.homeModules.latex
      self.homeModules.mpd
      self.homeModules.sonora
    ];

    home.file.".config/noctalia".source = "${dotfiles}/config/noctalia";
    home.file.".config/hypr".source = "${dotfiles}/config/hypr";
    home.file.".config/kdeglobals".source = "${dotfiles}/config/kdeglobals";
  };
}
