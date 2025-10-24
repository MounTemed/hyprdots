{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kubernetes
    kubernetes-helm
  ];
}
