{ pkgs, ... }:

{
 # Enable ZSH & configure
  programs.zsh = {
    enable =  true;
    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [ "git" ];
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    #enableCompletion = false;
    #plugins = [
    #  {
    #    name = "zsh-autocomplete";
    #    src = pkgs.zsh-autocomplete;
    #    file = "share/zsh-autocomplete/zsh-autocomplete.plugin.zsh";
    #  }
    #];
    initContent = ''
      alias nix-shell="nix-shell --command $SHELL"
    '';
  };
}
