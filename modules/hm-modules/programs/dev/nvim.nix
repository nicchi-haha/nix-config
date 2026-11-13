{
  flake.homeModules.nvim = { lib, pkgs, ... }: {
    programs.neovim = {
      enable = true;
      vimAlias = true;

      plugins = with pkgs.vimPlugins; [
        nvim-lspconfig
        blink-cmp
        conform-nvim
        auto-save-nvim
        # vimtex
      ];

      initLua =
        let
          vimConfig = ''
            vim.opt.mouse = "a"

            vim.opt.expandtab = true
            vim.opt.smartindent = true
            vim.opt.tabstop = 2
            vim.opt.shiftwidth = 2

            vim.opt.clipboard = "unnamedplus"

            vim.opt.number = true
          '';

          lsp = ''
            vim.lsp.enable({
              'nixd',
              'html',
              'tailwindcss',
              'texlab'
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
                nix = { "nixfmt" },
                tex = { "latexindent" }
              },
            })
          '';

          autosave = ''
            require('auto-save').setup({
              enabled = false,
            })
          '';

          #vimtex = ''
          #  vim.g.vimtex_view_method = "zathura"
          #'';

          keymap = ''
            vim.keymap.set("n", "<leader>cf", require("conform").format)
            vim.keymap.set("n", "<leader>n", "<cmd>ASToggle<CR>", {})
          '';
        in
        lib.mkMerge [
          vimConfig
          lsp
          blink
          conform
          #vimtex
          autosave
          keymap
        ];

      extraPackages = with pkgs; [
        nixd
        vscode-html-languageserver
        tailwindcss-language-server
        texlab

        # Formatters
        prettier
        nixfmt
        texlivePackages.latexindent
      ];
    };
  };
}
