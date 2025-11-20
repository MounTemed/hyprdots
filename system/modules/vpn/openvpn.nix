{ ... }:
{
  services.openvpn.servers = {
    officeVPN = {
      config = ''config /home/laimick/Developing/work/secrets/belousov.ovpn'';
      updateResolvConf = true;
    };
  };
}
