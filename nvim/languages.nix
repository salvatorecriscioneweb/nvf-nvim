{
  config.vim.languages = {
    enableFormat = true;
    nix = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      lsp.server = "nixd";
      treesitter.enable = true;
    };

    elixir = {
      enable = true;
      format.enable = true;
      elixir-tools.enable = true;
    };
  };
}
