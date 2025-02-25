{
  config.vim.terminal.toggleterm.mappings.open = "<leader>tt";
  config.vim.keymaps = [
    # Buffers
    {
      key = "<leader>bb";
      mode = ["n"];
      silent = true;
      action = "<cmd> e #<CR>";
      desc = " Switch to Other buffer";
    }
    {
      key = "<leader>bd";
      mode = ["n"];
      silent = true;
      action = ":bd<CR>";
      desc = " Close buffer";
    }
    # save file
    {
      key = "<C-s>";
      mode = ["i" "x" "n" "s"];
      silent = true;
      action = "<cmd>w<cr><esc>";
      desc = " Save file";
    }
    {
      key = "<leader>ww";
      mode = ["i" "x" "n" "s"];
      silent = true;
      action = "<cmd>w<cr><esc>";
      desc = " Save file";
    }
    # Plugins
    {
      key = "<leader>e";
      mode = ["n" "x"];
      silent = true;
      action = "<cmd>NvimTreeToggle<CR>";
      desc = " Tree Toggle";
    }
    {
      key = "<leader>q";
      mode = ["n" "x"];
      silent = true;
      action = ":qa<CR>";
      desc = " Quit";
    }
    {
      key = "<leader>ff";
      mode = ["n"];
      silent = true;
      action = ":FzfLua files<CR>";
      desc = " Search File by name";
    }
    {
      key = "<leader>sf";
      mode = ["n"];
      silent = true;
      action = ":FzfLua live_grep<CR>";
      desc = " Search File by content";
    }
  ];
}
