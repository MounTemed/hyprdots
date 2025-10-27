{ ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        shell = "fish";
        font = "FiraCode Nerd Font:size=13";
        term = "foot";
        pad = "5x5";
      };

      bell = {
        urgent = "no";
        notify = "no";
      };

      scrollback = {
        lines = 1000;
      };

      cursor = {
        blink = true;
      };

      colors = {
        alpha = 1;
      };
    };
  };
}
