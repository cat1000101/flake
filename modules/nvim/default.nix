{ lib,config, pkgs, ... }:
{
  home.packages = with pkgs; [ nodejs ];
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    #extraConfig = lib.fileContents ../path/to/your/init.vim;
  
    plugins = [
      pkgs.vimPlugins.zig-vim
      pkgs.vimPlugins.coc-nvim
      pkgs.vimPlugins.nvim-treesitter
      pkgs.vimPlugins.fzf-vim
      pkgs.vimPlugins.vim-multiple-cursors
      pkgs.vimPlugins.git-blame-nvim
    ];
  };
}