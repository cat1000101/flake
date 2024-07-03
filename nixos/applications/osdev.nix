{ config, pkgs, ... }:
{
environment.systemPackages = [
    pkgs.zig
    pkgs.file
    pkgs.libgcc
    pkgs.binutils
    pkgs.gnumake

    # emulation
    pkgs.qemu
    pkgs.virt-manager
    pkgs.libvirt
    pkgs.polkit
  ];
}
