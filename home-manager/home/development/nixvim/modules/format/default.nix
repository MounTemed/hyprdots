{ ... }:
{
  programs.nixvim = {
    plugins.conform-nvim.enable = true;
    plugins.lsp-format.enable = true;
  };
}
