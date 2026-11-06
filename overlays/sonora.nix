{ inputs, ... }:

{
  flake.homeModules.sonora =
    let
      system = "x86_64-linux";
    in
    {
      home.packages = [
        inputs.sonora.packages.${system}.default
      ];
    };
  }

