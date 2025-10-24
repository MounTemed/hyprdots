{ ... }:
{
  programs.nixvim = {
    plugins.helm.enable = true;
    plugins.lsp.servers.helm_ls.enable = true;
  };
}
