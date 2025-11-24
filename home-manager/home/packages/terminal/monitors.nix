{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    nvtop
  ];
}
