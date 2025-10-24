{ pkgs, ... }:
{
  home.packages = with pkgs; [
    yamllint
    kics
    checkov
  ];
}
