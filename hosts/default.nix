{
  inputs,
  self,
  ...
}:
let
  user = "laimick";
in
{
  flake.nixosConfigurations = {
    nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs self user;
      };

      modules = [
        ./io

        inputs.home-manager.nixosModules.home-manager
        inputs.nix-index-database.nixosModules.nix-index
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            backupFileExtension = ".hm-backup";
            
            extraSpecialArgs = {
              inherit inputs self user;
            };

            users.${user} = {
              imports = [
                (self + "/home-manager/profiles/${user}")
              ];
            };
          };
        }
      ];
    };
  };
}
