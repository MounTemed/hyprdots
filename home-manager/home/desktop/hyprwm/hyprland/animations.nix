{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    animations = {
      bezier = [
        "md3_standard, 0.2, 0, 0, 1"
        "md3_decel, 0.05, 0.7, 0.1, 1"
        "md3_accel, 0.3, 0.8, 0.8, 0.15"
        "overshot, 0.05, 0.9, 0.1, 1.1"
        "crazyshot, 0.1, 1.5, 0.76, 0.92"
        "hyprnostretch, 0.05, 0.9, 0.1, 1"
        "fluent_decel, 0.1, 1, 0, 1"
        "easeInOutCirc, 0.85, 0, 0.15, 1"
        "easeOutCirt, 0, 0.55, 0.45, 1"
      ];

      animation = [
        "windows, 1, 3, overshot, popin 60%"
        "windowsOut, 1, 6, default, popin 70%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 2, default"
        "workspaces, 1, 3, md3_decel, slidefade 8%"
        "specialWorkspace, 1, 3, md3_decel, slidevert"
      ];
    };
  };
}
