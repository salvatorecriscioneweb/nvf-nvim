{pkgs, ...}: {
  config.vim.languages = {
    ts = {
      enable = true;
      treesitter.enable = true;
      lsp.enable = true;
      format = {
        enable = false;
      };
      extraDiagnostics.enable = false;
    };
  };
}
