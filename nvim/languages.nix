{
  config.vim.formatter.conform-nvim.enable = true;
  config.vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    # Nix is life
    nix = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      lsp.server = "nixd";
      treesitter.enable = true;
    };

    # Erlang Done right cit.
    elixir = {
      enable = true;
      format.enable = true;
      elixir-tools.enable = true;
      treesitter.enable = true;
    };

    # Org Mode for dummies
    markdown = {
      enable = true;
      treesitter.enable = true;
    };
  };
}
