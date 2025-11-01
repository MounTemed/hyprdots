{
  inputs,
  pkgs,
  systems,
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
    package = inputs.hyprland.packages.${systems}.hyprland;
  };

  home.packages = with pkgs; [
    hyprland-qt-support
  ];
}
