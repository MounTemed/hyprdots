{ ... }:
{
  programs.nixvim = {
    plugins.none-ls.sources.diagnostics.staticcheck.enable = true;
  };
}
