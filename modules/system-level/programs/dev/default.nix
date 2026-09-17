{ config, lib, ... }:

{
  imports = [
    ./ssh.nix
  ];

  options.dev.enable = lib.mkEnableOption "Some settings to make dev okay";

  config = lib.mkIf config.dev.enable {
    dev.ssh-agent.enable = lib.mkDefault true;
  };
}
