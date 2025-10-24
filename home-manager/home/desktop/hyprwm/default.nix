{
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    ./hyprcontrib
    ./hyprland
    ./hyprpicker
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

  home.packages = with pkgs; [
    hyprland-qt-support
  ];
}
