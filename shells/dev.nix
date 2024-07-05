{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    nativeBuildInputs = [ pkgs.pkg-config ];
    buildInputs = with pkgs; [
        zig
        clang
        gcc
        libgcc
        gnumake
        xorg.libX11
        xorg.libX11.dev
        xorg.libXft
        xorg.libXinerama
        xorg.libXcursor
        xorg.libXrandr
        xorg.libXext
        xorg.libXrender
        xorg.xinput
        libGL
    ];
}