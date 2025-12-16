{ ... }: {
  programs.nixvim = {
    plugins.lsp.servers.rust_analyzer.enable = true;
    plugins.lsp.servers.rust_analyzer.installCargo = true;
    plugins.lsp.servers.rust_analyzer.installRustc = true;
  };
}
