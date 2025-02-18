{
  config.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        next = "]";
        confirm = "<Tab>";
      };
      setupOpts = {
        keymap.preset = "super-tab";
        completion.documentation.auto_show_delay_ms = 100;
      };
    };
  };
}
