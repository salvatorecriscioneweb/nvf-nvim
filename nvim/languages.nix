{pkgs, ...}: {
  imports = [
    ./langs/elixir.nix
    ./langs/nix.nix
    ./langs/typescript.nix
    ./langs/clang.nix
    ./langs/lua.nix
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
        elixir
        javascript
        typescript
        markdown
        heex
        eex
      ];
    };
  };
}
