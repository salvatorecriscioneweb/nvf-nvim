{
  config.vim = {
    filetree.neo-tree.enable = true;
    enableLuaLoader = true;

    languages.nix = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      lsp.server = "nixd";
      treesitter.enable = true;
    };
  };
}
