{pkgs, ...}: {
  imports = [./plugins.nix];

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      fd
      ripgrep
      clang
      curl
      graphviz

      wl-clipboard

      clang-tools
      lua-language-server
      stylua
      nil
      rust-analyzer
      pyright
      alejandra

      gdb
      lldb
    ];
    extraLuaConfig = ''
      ${builtins.readFile ./nvim-config/keymap.lua}
      ${builtins.readFile ./nvim-config/options.lua}
      ${builtins.readFile ./nvim-config/autocmds.lua}
    '';
  };
}
