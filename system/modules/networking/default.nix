{ ... }:
{
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      #dns = "systemd-resolved";
      dns = "none";
    };
    #nameservers = [
    #  "1.1.1.1"
    #  "1.0.0.1"
    #  "8.8.8.8"
    #];
  };

  services.resolved = {
    enable = false;
  #  dnsovertls = "opportunistic";
  #  dnssec = "false";
  #  fallbackDns = [
  #    "8.8.4.4"
  #    "9.9.9.9"
  #  ];
  };
}
