
{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.linuxKernel.kernels.linux_zen
    pkgs.egl-wayland
    pkgs.pamixer
  ];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };
}
