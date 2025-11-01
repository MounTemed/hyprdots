{ pkgs, inputs, systems, ... }:
{
  programs.hyprland = {
    enable = true;
    # withUWSM = true;
    portalPackage =
      inputs.hyprland.packages.${systems}.xdg-desktop-portal-hyprland;
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "gtk" ];
      hyprland.default = [
        "gtk"
        "hyprland"
      ];
    };
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
