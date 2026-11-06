{
  description = "dumb flake for my dumb setup";

  inputs = {
    # Unstable channel
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Stable channel
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-26.05";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:

  let
    username = "yuki";
    system = "x86_64-linux";
    host = "snowflake";

    pkgs-stable = import inputs.nixpkgs-stable {
      inherit system;
      config.allowUnfree = true;
    };

    specialArgs = {
      inherit username;
      inherit system;
      inherit pkgs-stable;
    };
  in
  {
    nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
      inherit specialArgs;

      modules = [
        ./unfree-list.nix
        ./hosts/snowflake
        ./users/${username}/nixos.nix
        ./overlays

        home-manager.nixosModules.default
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;

            extraSpecialArgs = {
              inherit inputs;
            };

            users.${username} = ./users/${username}/home.nix;
          };
        }
      ];
    };
  };
}
