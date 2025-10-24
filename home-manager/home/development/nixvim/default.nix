{ inputs, ... }:
{
  imports = [
    ./settings.nix

    inputs.nixvim.homeModules.nixvim
  ];
}
