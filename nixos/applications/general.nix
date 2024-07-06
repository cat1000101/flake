{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
    home-manager

    # applications
    librewolf
    firefox
    discord
    # vesktop
    spotify
    steam
    libreoffice
    bitwarden

    # cli applications/tools
    neovim
    kitty
    wine
    neofetch
    btop
    lm_sensors
    lshw
    wofi
    unzip
    fzf
    quickemu
    quickgui

    # debug/reverse engeneering
    pwndbg
    gdb
    gf
    ghidra
    pwntools

    # languages/programming
    vscodium
    vscode
    zed-editor
    code-server
    python3
    zig
    libgcc
    gnumake
    cmake

    # emulation
    qemu
    virt-manager
    libvirt
    polkit
  ];
}
