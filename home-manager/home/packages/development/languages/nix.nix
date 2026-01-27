{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
    nixfmt
    nixfmt-tree
    alejandra
  ];
}
