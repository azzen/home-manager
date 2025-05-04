{pkgs, ...}: let
  toLuaFile = file: ''
    lua << EOF
    ${builtins.readFile file}
    EOF
  '';
in {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    plenary-nvim
    nui-nvim
    nvim-nio
    nvim-web-devicons

    nvim-cmp
    cmp_luasnip
    cmp-nvim-lsp
    cmp-path
    cmp-buffer
    cmp-treesitter
    cmp-cmdline

    which-key-nvim

    {
      plugin = cmp-git;
      type = "lua";
      config = ''
        require('cmp_git').setup()
      '';
    }

    {
      plugin = nvim-autopairs;
      config = toLuaFile ./nvim-config/plugins/autopairs.lua;
    }

    luasnip
    friendly-snippets
    lualine-nvim
    nvim-treesitter.withAllGrammars
    vim-nix

    nvim-notify
    vim-surround
    diffview-nvim
    actions-preview-nvim
    neo-tree-nvim

    {
      plugin = conform-nvim;
      config = toLuaFile ./nvim-config/plugins/conform.lua;
    }

    {
      plugin = trouble-nvim;
      config = toLuaFile ./nvim-config/plugins/trouble.lua;
    }

    {
      plugin = gitsigns-nvim;
      config = toLuaFile ./nvim-config/plugins/gitsigns.lua;
    }

    {
      plugin = nvim-lspconfig;
      config = toLuaFile ./nvim-config/plugins/lsp.lua;
    }

    {
      plugin = telescope-nvim;
      config = toLuaFile ./nvim-config/plugins/telescope.lua;
    }

    telescope-fzf-native-nvim
    telescope-ui-select-nvim

    {
      plugin = kanagawa-nvim;
      type = "lua";
      config = ''
        require('kanagawa').setup {
          transparent = true,
        }
        vim.cmd("colorscheme kanagawa")
      '';
    }

    {
      plugin = lualine-nvim;
      type = "lua";
      config = ''
        require('lualine').setup {
             options = {
               theme = "seoul256", section_separators = "", component_separators = ""
             }
        }
      '';
    }

    {
      plugin = nvim-highlight-colors;
      type = "lua";
      config = ''
        require('nvim-highlight-colors').setup()
      '';
    }

    {
      plugin = toggleterm-nvim;
      config = toLuaFile ./nvim-config/plugins/toggleterm.lua;
    }

    {
      plugin = bufferline-nvim;
      type = "lua";
      config = "require('bufferline').setup()";
    }

    {
      plugin = orgmode;
      config = toLuaFile ./nvim-config/plugins/orgmode.lua;
    }
  ];
}
