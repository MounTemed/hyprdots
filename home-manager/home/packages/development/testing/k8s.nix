{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kubeconform
    kube-linter

  ];
}
