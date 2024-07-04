{ config, pkgs, ... }:
{
environment.systemPackages = [
    pkgs.zig
    pkgs.file
    pkgs.clang
    pkgs.libgcc
    pkgs.gcc
    pkgs.nasm
    pkgs.bison
    pkgs.flex
    pkgs.gmp
    #pkgs.mpc
    pkgs.mpfr
    pkgs.texinfo
    pkgs.binutils
    pkgs.gnumake
    pkgs.grub2
    pkgs.libisoburn

    # emulation
    pkgs.qemu
    pkgs.virt-manager
    pkgs.libvirt
    pkgs.polkit
  ];
}
