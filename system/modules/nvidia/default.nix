{ pkgs, config, ... }:
{
  hardware.graphics = {
    enable = true;

    extraPackages = with pkgs; [
      vulkan-loader
      vulkan-tools
    ];
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
  };

  environment.systemPackages = with pkgs; [
    nvidia-vaapi-driver
    libvdpau
    egl-wayland
  ];
}
