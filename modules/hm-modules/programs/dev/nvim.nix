{
  flake.homeModules.nvim = { lib, pkgs, ... }: {
    programs.neovim = {
      enable = true;

      plugins = with pkgs.vimPlugins; [
        nvim-lspconfig
        blink-cmp
        conform-nvim
      ];

      initLua =
        let
          vimConfig = ''
            vim.opt.mouse = "a"

            vim.opt.expandtab = true
            vim.opt.smartindent = true
            vim.opt.tabstop = 2
            vim.opt.shiftwidth = 2

            vim.opt.clipboard = unnamedplus

            vim.opt.number = true
          '';

          lsp = ''
            vim.lsp.enable({
              'nixd',
              'html',
              'tailwindcss'
            })
          '';

          blink = ''
            require('blink.cmp').setup({
              keymap = { preset = 'enter' },

              completion = { documentation = { auto_show = true } }
            })
          '';

          conform = ''
            require('conform').setup({
              formatters_by_ft = {
                html = { "prettier" },
                nix = { "nixfmt" }
              },
            })
          '';

          keymap = ''
            vim.keymap.set("n", "<leader>cf", require("conform").format)
          '';
        in
        lib.mkMerge [
          vimConfig
          lsp
          blink
          conform
          keymap
        ];

      extraPackages = with pkgs; [
        nixd
        vscode-html-languageserver
        tailwindcss-language-server

        # Formatters
        prettier
        nixfmt
      ];
    };
  };
}
