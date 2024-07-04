{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    nativeBuildInputs = [ pkgs.pkg-config ];
    buildInputs = with pkgs; [
        xorg.libX11
        libGL
    ];
}