{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    wget
    fastfetch
    dig
  ];

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    icons = "auto";
    git = true;
  };
}
