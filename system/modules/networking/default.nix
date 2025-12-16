{ ... }:
{
  networking = {
    hostName = "nixos";
    
    useDHCP = false;
    dhcpcd.enable = false;

    nameservers = [
      "1.1.1.1"   # Cloudflare Primary
      "1.0.0.1"   # Cloudflare Secondary
      "8.8.8.8"   # Google Backup
      "8.8.4.4"   # Google Backup
    ];

    networkmanager = {
      enable = true;
      dns = "systemd-resolved"; 
    };
  };

  services.resolved = {
    enable = true;
    dnsovertls = "true";
    dnssec = "true";
    domains = [ "~." ];
    fallbackDns = [
      "1.1.1.1"
      "8.8.8.8"
    ];
  };
}
