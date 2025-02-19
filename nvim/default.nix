{
  imports = [
    # general
    ./general.nix
    ./options.nix
    ./colorscheme.nix
    ./keymaps.nix
    ./languages.nix
    ./editor.nix

    # Plugins
    ./plugins/leap.nix
    ./plugins/alpha.nix
    ./plugins/todo-comments.nix
    ./plugins/which-key.nix
    ./plugins/lualine.nix
    ./plugins/fzf-lua.nix
    ./plugins/nvim-tree.nix
    ./plugins/blink-cmp.nix
    ./plugins/mini-pairs.nix
    # ./plugins/toggleterm.nix
    # ./plugins/lazygit.nix
  ];
}
