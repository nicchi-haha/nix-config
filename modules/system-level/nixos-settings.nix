# Also includes time zone and locale
{ lib, username, pkgs, ... }:

{
  imports = [
    ./fonts.nix
    ./system-configs
  ];

  # Define a user account.
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager"];
  };

  # some nix settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enable flakes
  nix.optimise.automatic = true; # Optimize nix store periodically

  # Weekly garbage collection, copied from ryan4yin's nix-config/i3-kickstarter. currently disabled in favor of manual GC
  # nix.gc = {
  #   automatic = lib.mkDefault true;
  #   dates = lib.mkDefault "weekly";
  #   options = lib.mkDefault "--delete-older-than 7d";
  # };

  # Set time zone
  time.timeZone = "Asia/Jakarta";

  # Set locale
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
  };

  # Can't have a working system without this/these!
  environment.systemPackages = with pkgs; [
    vim 
  ];
}
