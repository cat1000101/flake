{ config, pkgs, ... }:

{
  imports = [
    ../modules
  ];

  home.username = "cat";
  home.homeDirectory = "/home/cat";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [

  ];

  home.file = {

  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}

# sudo nix-store --repair --verify --check-contents
