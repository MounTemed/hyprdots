{ inputs, ... }:
{
  imports = [
    ./plugins
    ./modules
    ./settings.nix

    inputs.nixvim.homeModules.nixvim
  ];
}
