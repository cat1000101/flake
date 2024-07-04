{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    nativeBuildInputs = [ pkgs.pkg-config ];
    buildInputs = with pkgs; [
        zig
        binutils
        libgcc
        nasm
        gnumake
        clang
        xorg.libX11
        libGL
    ];
}