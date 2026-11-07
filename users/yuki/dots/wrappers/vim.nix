{ inputs, moduleWithSystem, ... }: {
  perSystem = { pkgs, ... }: {
    packages.yuki-vim = inputs.wrappers.wrappers.vim.wrap {
      inherit pkgs;
      vimrc = ''
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

  flake.nixosModules.user-yuki = moduleWithSystem ({ self', ... }: {
    programs.vim.package = self'.packages.yuki-vim;
  });
}
