{ ... }:
{
  programs.nixvim = {
    plugins.notify.enable = true;
    plugins.notify.settings = {
      background_colour = "#000000";
      fps = 60;
      icons = {
        debug = "";
        error = "";
        info = "";
        trace = "✎";
        warn = "";
      };
      level = "info";
      max_height = 10;
      max_width = 80;
      minimum_width = 50;
      render = "default";
      stages = "fade_in_slide_out";
      timeout = 500;
      top_down = true;
    };
  };
}
