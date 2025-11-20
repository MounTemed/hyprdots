{ pkgs, ... }:
{
  virtualisation = {
    containers.enable = true;

    podman = {
      enable = true;
      dockerCompat = false;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  environment.systemPackages = with pkgs; [
    qemu
  ];

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}
