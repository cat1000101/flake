{ config, pkgs, ... }:
{
environment.systemPackages = [
    pkgs.home-manager

    # applications
    pkgs.vscodium
    pkgs.discord
    pkgs.steam

    # cli applications/tools
    pkgs.neofetch
    pkgs.btop

    # debug/reverse engeneering
    pkgs.pwndbg
    pkgs.gdb
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
