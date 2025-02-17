{
  vim.filetree = {
    nvimTree = {
      enable = true;
      setupOpts = {
        disable_netrw = true;
        hijack_cursor = true;
        filesystem_watchers.ignore_dirs = ["node-modules" "_build" ".git"];
        filters.dotfiles = false;
        sync_root_with_cwd = true;
        update_focused_file = {
          enable = true;
          update_root = false;
        };
        view = {
          width = 25;
          preserve_window_proportions = true;
        };
        renderer = {
          root_folder_label = false;
          highlight_git = true;
          indent_markers = {enable = true;};
          icons = {
            glyphs = {
              default = "󰈚";
              folder = {
                default = "";
                empty = "";
                empty_open = "";
                open = "";
                symlink = "";
              };
              git = {
                unmerged = "";
              };
            };
          };
        };
      };
    };
  };
}
