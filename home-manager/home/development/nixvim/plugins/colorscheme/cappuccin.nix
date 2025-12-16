{ ... }: {
  programs.nixvim = {
    colorschemes.catppuccin.enable = true;
    colorschemes.catppuccin.settings.flavour = "mocha";
  };
}
