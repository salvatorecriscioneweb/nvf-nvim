{pkgs, ...}: {
  config.vim.languages = {
    ts = {
      enable = true;
      treesitter.enable = true;
      format = {
        enable = true;
        type = "biome";
        package = pkgs.biome;
      };
      extraDiagnostics.enable = false;
    };
  };
}
