{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    wget
    fastfetch
  ];
}
