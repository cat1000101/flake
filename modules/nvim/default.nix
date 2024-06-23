{ lib,config, pkgs, ... }:
{
  environment.variables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    #extraConfig = lib.fileContents ../path/to/your/init.vim;
  }
}