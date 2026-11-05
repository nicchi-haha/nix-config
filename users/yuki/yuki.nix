{ self, ... }:

{
  flake.nixosModules.user-yuki = {inputs, pkgs, ...}: {
    imports = [
      self.nixosModules.zsh
      self.nixosModules.hyprland
    ];

    users.users.yuki = {
      isNormalUser = true;
      extraGroups = [ "audio" "wheel" "networkmanager" ];
      shell = pkgs.zsh;
    };
  };
}
