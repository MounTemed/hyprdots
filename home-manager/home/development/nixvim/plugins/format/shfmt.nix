{ ... }: {
  programs.nixvim = {
    plugins.none-ls.sources.formatting.shfmt.enable = true;
  };
}
