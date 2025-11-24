{ pkgs, ... }:
{
  home.packages = with pkgs; [
    trivy
    grype
  ];
}
