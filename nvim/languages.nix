{
  config.vim.formatter.conform-nvim.enable = true;

  imports = [
    ./langs/elixir.nix
    ./langs/nix.nix
    ./langs/markdown.nix
    ./langs/typescript.nix
    ./langs/clang.nix
  ];

  # Common
  config.vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;
  };
}
