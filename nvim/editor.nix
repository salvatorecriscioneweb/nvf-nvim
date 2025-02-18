{
  config.vim = {
    visuals = {
      nvim-web-devicons.enable = true;
      fidget-nvim = {
        enable = true;
        setupOpts = {
          notification.window = {
            winblend = 0;
            border = "none";
          };
        };
      };
    };

    tabline.nvimBufferline.enable = true;

    ui = {
      borders.enable = true;
      colorizer.enable = true;
      modes-nvim.enable = false;
      illuminate.enable = true;
    };
  };
}
