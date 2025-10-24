{ ... }:
{
  programs.nixvim = {
    plugins.lsp.servers.terraformls.enable = true;
    plugins.lsp.servers.terraform_lsp.enable = true;
  };
}
