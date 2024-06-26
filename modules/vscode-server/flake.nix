{
  inputs.vscode-server.url = "github:nix-community/nixos-vscode-server";

  outputs = { self, nixpkgs, vscode-server }: {
    nixosConfigurations.cat = nixpkgs.lib.nixosSystem {
      modules = [
        vscode-server.nixosModules.default
        ({ config, pkgs, ... }: {
          services.vscode-server.enable = true;
        })
      ];
    };
  };
}