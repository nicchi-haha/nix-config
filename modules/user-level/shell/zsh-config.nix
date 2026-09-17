{ pkgs, ... }:

{
 # Enable ZSH & configure
  programs.zsh = {
    enable =  true;
    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [ "git" ];
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    enableCompletion = false;
    plugins = [
      {
        name = "zsh-autocomplete";
        src = pkgs.zsh-autocomplete;
        file = "share/zsh-autocomplete/zsh-autocomplete.plugin.zsh";
      }
    ];
    initContent = ''
      bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
      bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
      alias nix-shell="nix-shell --command $SHELL"
    '';
  };
}
