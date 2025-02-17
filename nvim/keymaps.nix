{
  config.vim.keymaps = [
    {
      key = "<leader>e";
      mode = [
        "n"
        "x"
      ];
      silent = true;
      action = "<cmd>NvimTreeToggle<CR>";
    }
  ];
}
