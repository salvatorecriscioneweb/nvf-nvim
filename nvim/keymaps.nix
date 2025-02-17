{
  config.vim.terminal.toggleterm.mappings.open = "<leader>tt";
  config.vim.keymaps = [
    {
      key = "<leader>e";
      mode = [
        "n"
        "x"
      ];
      silent = true;
      action = "<cmd>NvimTreeToggle<CR>";
      desc = "Tree Toggle";
    }
    {
      key = "<leader>q";
      mode = ["n" "x"];
      silent = true;
      action = ":qa<CR>";
    }
  ];
}
