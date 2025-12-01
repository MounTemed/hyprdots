{ pkgs, ... }:
{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        make
        markdown
        nix
        yaml
        go
        dockerfile
        helm
        rust
        graphql
      ];
    };
  };
}
