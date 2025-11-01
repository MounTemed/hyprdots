{ user, ... }:
{
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

  imports = [
    ../../home/default.nix
  ];
}
