{ ... }:
{
  networking = {
    hostName = "nixos";
    useDHCP = false;
    dhcpcd.enable = false;

    firewall.enable = true;

    nameservers = [
      "8.8.8.8"
      "8.8.4.4"
      "1.1.1.1"
      "1.0.0.1"
    ];

    networkmanager = {
      enable = true;
      dns = "none";
    };
  };
}
