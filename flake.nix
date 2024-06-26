{
  description = "my nixos flake meow :3";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self,nixpkgs, home-manager, vscode-server}:
  let 
    system = "x86_64-linux";
    pkgs = import nixpkgs{
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
    user = "cat";
  in {
    nixosConfigurations = {
      cat = lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
          (import ./modules/vscode-server/vscode-server.nix).outputs.vscodeServer
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.cat = {
              imports = [./home-manager/home.nix];
            };
          }
        ];
      };
    };
  };
}