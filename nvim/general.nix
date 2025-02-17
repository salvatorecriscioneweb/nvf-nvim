{
  imports = [
    ./plugins/which-key.nix
    ./plugins/lualine.nix
    ./plugins/fzf-lua.nix
    ./plugins/lazygit.nix
    ./languages.nix
  ];
  config.vim = {
    filetree.neo-tree.enable = true;
    enableLuaLoader = true;
    visuals.nvim-web-devicons.enable = true;
    formatter.conform-nvim.enable = true;
  };
}
