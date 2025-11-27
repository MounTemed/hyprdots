{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprctl setcursor Bibata-Modern-Classic 22"
      "caelestia shell -d"
    ];

    monitor = "DP-1,2560x1440@170,0x0,1";

    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      force_default_wallpaper = 0;
      vrr = 0;
      middle_click_paste = false;
      enable_anr_dialog = false;
    };

    animations = {
      enabled = true;
    };

    ecosystem = {
      no_update_news = true;
      no_donation_nag = true;
    };
  };
}
