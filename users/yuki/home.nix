{ inputs, self, ... }:

{
  flake.nixosModules.user-yuki = {
    imports = [
      inputs.home-manager.nixosModules.home-manager
    ];

    home-manager.users.yuki = self.homeModules.yuki;
  };

  flake.homeModules.yuki = { pkgs, ... }: 
  {
    home.username = "yuki";
    home.homeDirectory = "/home/yuki";
    home.stateVersion = "26.05";

    imports = [
      self.homeModules.hyprland
    ];
  };
}
