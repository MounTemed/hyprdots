{ pkgs, ... }:
{
  home.packages = with pkgs; [
    btop
    nvtopPackages.nvidia
  ];
}
