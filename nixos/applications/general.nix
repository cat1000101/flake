{ config, pkgs, ... }:
{
environment.systemPackages = [
    pkgs.home-manager

    # applications
    pkgs.librewolf
    pkgs.firefox
    pkgs.discord
    # pkgs.vesktop
    pkgs.spotify
    pkgs.steam
    pkgs.libreoffice
    pkgs.bitwarden

    # cli applications/tools
    pkgs.neovim
    pkgs.kitty
    pkgs.neofetch
    pkgs.btop
    pkgs.lm_sensors
    pkgs.lshw
    pkgs.wofi
    pkgs.unzip
    pkgs.fzf

    # debug/reverse engeneering
    pkgs.pwndbg
    pkgs.gdb
    pkgs.gf
    pkgs.ghidra
    pkgs.pwntools

    # languages/programming
    pkgs.vscodium
    pkgs.vscode
    pkgs.zed-editor
    pkgs.code-server
    pkgs.python3
    pkgs.zig
    pkgs.libgcc
    pkgs.gnumake
    pkgs.cmake

    # emulation
    pkgs.qemu
    pkgs.virt-manager
    pkgs.libvirt
    pkgs.polkit
  ];
}
