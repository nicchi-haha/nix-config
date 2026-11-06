{
  flake.homeModules.vim = {
    programs.vim = {
      enable = true;
      defaultEditor = true;
      extraConfig = ''
        filetype plugin on
        syntax on

        set mouse=a

        set autoindent
        set smartindent
        set expandtab
        set tabstop=4

        set clipboard=unnamedplus
      '';
    };
  };
}
