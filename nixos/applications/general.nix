{ config, pkgs, ... }:
{
environment.systemPackages = [
    pkgs.home-manager

    # applications
    pkgs.vscodium
    pkgs.discord
    pkgs.spotify
    pkgs.steam
    pkgs.libreoffice
    pkgs.kitty
    pkgs.wofi

    # cli applications/tools
    pkgs.neovim
    pkgs.neofetch
    pkgs.btop
    pkgs.lm_sensors
    pkgs.lshw

    # debug/reverse engeneering
    pkgs.pwndbg
    pkgs.gdb
    pkgs.gf
    pkgs.ghidra
    pkgs.pwntools

    # languages/programming
    pkgs.python3
    pkgs.zig
    pkgs.libgcc
    pkgs.gnumake

    # emulation
    pkgs.qemu
    pkgs.virt-manager
    pkgs.libvirt
    pkgs.polkit
    
  ];
}
