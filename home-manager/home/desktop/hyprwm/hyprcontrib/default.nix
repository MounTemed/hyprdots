{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = [
    inputs.hyprland-contrib.packages.${pkgs.stdenv.hostPlatform.system}.grimblast
  ];
}
