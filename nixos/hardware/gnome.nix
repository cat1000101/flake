{ config, pkgs, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  # disable wayland
  services.xserver.displayManager.gdm.wayland = false;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    gedit
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    epiphany # web browser
    geary # email reader
    gnome-characters
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help view
    gnome-contacts
    gnome-initial-setup
  ]);

  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.pop-shell
  ];
}
