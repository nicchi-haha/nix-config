{ self, ... }:

{
  flake.nixosModules.user-yuki = { pkgs, ... }: {
    imports = [
      self.nixosModules.zsh
      self.nixosModules.hyprland
      self.nixosModules.ly
      self.nixosModules.polkit-service
      self.nixosModules.nautilus
      self.nixosModules.virt-manager
      self.nixosModules.dnscrypt

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
