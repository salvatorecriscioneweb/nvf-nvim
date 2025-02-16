{
  config.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        next = "<CR>";
        confirm = "<Tab>";
      };

      setupOpts.completion.documentation.auto_show_delay_ms = 100;
    };
  };
}
