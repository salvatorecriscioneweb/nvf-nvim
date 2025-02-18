{pkgs, ...}: {
  config.vim.formatter.conform-nvim.enable = true;

  imports = [
    ./langs/elixir.nix
    ./langs/nix.nix
    ./langs/markdown.nix
    ./langs/typescript.nix
    ./langs/clang.nix
    ./langs/rust.nix
  ];

  # Common
  config.vim = {
    languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    };

    treesitter = {
      context.enable = true;
      fold = true;

      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        heex
        eex
      ];
    };
  };
}
