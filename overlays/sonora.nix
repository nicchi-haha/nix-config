{ moduleWithSystem, ... }:

{
  flake.homeModules.sonora = moduleWithSystem (
    { inputs', ... }: {
      home.packages = [ inputs'.sonora.packages.default ];
    }
  );
}
