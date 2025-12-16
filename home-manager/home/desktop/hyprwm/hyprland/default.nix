{ ... }:
{
  wayland.windowManager.hyprland.enable = true;
  imports = [
    ./variables.nix
    ./inputs.nix
    ./binds.nix
    ./settings.nix
    ./animations.nix
    ./render.nix
  ];

  home.sessionVariables = {
    # backend
    GDK_BACKEND = "wayland";
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    LIBVA_DRIVER_NAME = "nvidia";

    # xdg
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";

    # qt
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;
    QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
    QT_QPA_PLATFORMTHEME = "qt6ct";

    # nvidia
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };
}
