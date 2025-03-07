{
  description = "Nix Darwin";

  inputs = {

    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self
    , nixpkgs
    , nix-darwin
    , ...
    } @ inputs:
    let
      system = "x86_64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      darwinConfigurations."mac" = nix-darwin.lib.darwinSystem {
        inherit pkgs;
        modules = [
          ./configuration.nix
        ];
      };

    };
}
