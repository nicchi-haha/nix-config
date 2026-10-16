{ config, lib, ... }:

{
  imports = [
    ./ssh.nix
    ./virt-manager.nix
  ];

  options.dev.enable = lib.mkEnableOption "Some settings to make dev okay";

  config = lib.mkIf config.dev.enable {
    dev.ssh-agent.enable = lib.mkDefault true;
    dev.virt-manager.enable = lib.mkDefault false;
  };
}
