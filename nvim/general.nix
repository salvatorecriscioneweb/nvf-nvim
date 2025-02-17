{
  imports = [
    ./plugins/which-key.nix
    ./plugins/lualine.nix
    ./plugins/fzf-lua.nix
    ./plugins/lazygit.nix
  ];
  config.vim = {
    filetree.neo-tree.enable = true;
    enableLuaLoader = true;

    formatter.conform-nvim.enable = true;

    languages.enableFormat = true;
    languages.nix = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      lsp.server = "nixd";
      treesitter.enable = true;
    };
  };
}
