{
  config.vim.languages = {
    # Erlang Done right cit.
    elixir = {
      enable = true;
      format.enable = true;
      treesitter.enable = true;
      elixir-tools.enable = false;
      lsp.enable = false;
    };
  };
}
