{
  flake.nixosModules.zsh = {pkgs, lib, ...}:

  {
    programs.zsh = {
      enable = true;
      syntaxHighlighting.enable = lib.mkDefault true;
      autosuggestions.enable = lib.mkDefault true;
    };
  };
}

