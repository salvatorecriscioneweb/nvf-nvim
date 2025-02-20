{pkgs, ...}: {
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
    };

    formatter.conform-nvim = {
      enable = true;
      setupOpts = {
        formatters.biome.require_cwd = true;
        formatters_by_ft = {
          typescript = ["biome"];
          javascript = ["biome"];
        };
      };
    };

    treesitter = {
      # context.enable = true;
      fold = true;

      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        heex
        eex
      ];
    };
  };
}
