{
  vim.filetree = {
    nvimTree = {
      enable = true;
      setupOpts = {
        disable_netrw = true;
        filesystem_watchers.ignore_dirs = ["node-modules" "_build" ".git"];
        filters.dotfiles = true;
      };
    };
  };
}
