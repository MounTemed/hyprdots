{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.tofu_ls.enable = true;
  };
}
