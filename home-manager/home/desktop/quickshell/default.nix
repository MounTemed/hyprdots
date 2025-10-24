{
  inputs,
  ...
}:
{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  programs.caelestia = {
    enable = true;
    systemd.enable = false;
    settings = {
      bar.status = {
        showBattery = false;
      };
      general = {
        idle = {
          inhibitWhenAudio = true;
          timeouts = [
            {
              idleAction = "lock";
              timeout = 600;
            }
            {
              idleAction = "dpms off";
              returnAction = "dpms on";
              timeout = 28800;
            }
            {
              idleAction = [
                "systemctl"
                "suspend-then-hibernate"
              ];
              timeout = 28800;
            }
          ];
        };
      };
    };
    cli = {
      enable = true;
      settings = {
        theme.enableGtk = false;
      };
    };
  };
}
