{ self, inputs, ... }:

{
  flake.nixosModules.user-yuki = { pkgs, ... }: {
    imports = [
      self.nixosModules.zsh
      self.nixosModules.vim
      self.nixosModules.hyprland
      self.nixosModules.gdm
      self.nixosModules.polkit-service
      self.nixosModules.nautilus
      self.nixosModules.virt-manager

      # compatibility
      self.nixosModules.appimage-compat

      # Tweaks
      self.nixosModules.pro-audio
      self.nixosModules.gaming

      # Overlays
      self.nixosModules.pins
    ];

    users.users.yuki = {
      isNormalUser = true;
      extraGroups = [ "audio" "wheel" "networkmanager" ];
      shell = pkgs.zsh;
    };

    services.flatpak.enable = true;
    programs.ssh.startAgent = true;
    programs.kdeconnect.enable = true;
  };
}
