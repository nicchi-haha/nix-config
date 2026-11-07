{ self, ... }:

{
  flake.nixosModules.general = { pkgs, lib, ... }:
  {
    imports = [
      self.nixosModules.nix
      self.nixosModules.fonts
    ];

    # Enable SysRq
    boot.kernel.sysctl."kernel.sysrq" = 1;

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

    programs.vim.enable = lib.mkDefault true;
  };
}
