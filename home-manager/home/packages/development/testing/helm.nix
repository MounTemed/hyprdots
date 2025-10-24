{ pkgs, ... }:
{
  home.packages = with pkgs; [
    yamllint
    chart-testing
  ];
}
