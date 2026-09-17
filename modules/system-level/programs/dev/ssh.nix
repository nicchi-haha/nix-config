# Enables SSH agent
{ lib, config, ... }:

{
  options.dev.ssh-agent.enable = lib.mkEnableOption "Enables SSH agent";

  config = lib.mkIf config.dev.ssh-agent.enable {
    programs.ssh.startAgent = true;
  };
}
