{ ... }:
{
  imports = [
    ./ansible.nix
    ./go.nix
    ./nginx.nix
    ./nix.nix
    ./podman.nix
    ./postgresql.nix
    ./opentofu.nix
  ];
}
