{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = [
    inputs.hyprpicker.packages.${pkgs.stdenv.hostPlatform.system}.hyprpicker
  ];
}
