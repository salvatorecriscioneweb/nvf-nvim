{
  config.vim.languages = {
    # Nix is life
    nix = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      lsp.server = "nixd";
      treesitter.enable = true;
    };
  };
}
