{ lib,config, pkgs, ... }:
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  syntaxHighlighting.enable = true;

  shellAliases = {
    ll = "ls -l";
    la = "ls -a";
    update = "sudo nixos-rebuild switch --flake .#cat";
    fix = "sudo nix-store --repair --verify --check-contents";
  };
  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

  oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "simple";
  };

  plugins = [
    {
      # will source zsh-autosuggestions.plugin.zsh
      name = "zsh-autosuggestions";
      src = pkgs.fetchFromGitHub {
        owner = "zsh-users";
        repo = "zsh-autosuggestions";
        rev = "v0.7.0";
        sha256 = "sha256-KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
      };
    }
  ];
};
}